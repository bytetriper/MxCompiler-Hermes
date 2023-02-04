package backend;

import java.util.LinkedHashSet;
import java.util.Stack;

import ASM.Asm_BasicBlock;
import ASM.Asm_FuncBlock;
import ASM.asm_operand.Asm_Operand;
import ASM.asm_operand.Asm_PhysicalReg;
import ASM.asm_operand.Asm_Reg;
import ASM.asm_operand.Asm_SpilledReg;
import ASM.asm_operand.Asm_PhysicalReg.RegName;
import utils.PhysicalRegs;

public class GraphColorer implements AsmPass {
    public Asm_FuncBlock CurrentFunc;
    public Asm_BasicBlock CurrentBlock;
    public Stack<GraphNode<Asm_Operand>> ColorStack;
    public Stack<GraphNode<Asm_Operand>> SpilledStack;
    public int ColorNum;
    public int MinNum;//Minimum Color to Color all the graph
    static public LinkedHashSet<Asm_Operand> Colors=new LinkedHashSet<>();
    NodesCollector NC=new NodesCollector();
    GraphBuilder GB=new GraphBuilder();
    public GraphColorer (){
        for(var each:PhysicalRegs.CalleeSaved)
            Colors.add(each.origin); 
        for(var each:PhysicalRegs.CallerSaved)
            Colors.add(each.origin); 
        ColorStack=new Stack<>();
        SpilledStack=new Stack<>();
        ColorNum=Colors.size();
    }
    public void clear(){
        for(var reg:PhysicalRegs.AllRegs){
            reg.Neighbors.clear();
            reg.UseList.clear();
            reg.Merged.clear();
        }
    }
    public void visit(InstSelector selector){
        for(var blk:selector.Blocks){
            CurrentFunc=(Asm_FuncBlock)blk.Asm_Reg;
            System.out.println("Nodes Collecting...");
            NC.visit(CurrentFunc);
            System.out.println("Nodes Collected. Start generating graph");
            GB.visit(CurrentFunc);
            System.out.println("Graph Generated. Start Coloring all the nodes");
            visit(CurrentFunc);
            System.out.println("All Colored");
            clear();
        }
    }
    @Override
    public void visit(Asm_BasicBlock block) {

    }
    public void reset(){
        ColorStack.clear();
        SpilledStack.clear();
        //MinNum=CurrentFunc.InteferenceGraph.Variables.size();
    }
    boolean STUPID=true;
    @Override
    public void visit(Asm_FuncBlock funcblk) {
        if(!STUPID){
            MinNum=funcblk.InteferenceGraph.Variables.size();
            int l=ColorNum,r=MinNum,mid;
            while(l<r) 
            {
                mid=(l+r)/2;
                reset();
                Merge(CurrentFunc.InteferenceGraph,ColorNum);//only merge Things under k
                if(Simplify(CurrentFunc.InteferenceGraph, mid))
                    r=mid;
                else
                    l=mid+1;
            }
            MinNum=r;
            Select();
        }
        else{
            MinNum=funcblk.InteferenceGraph.Variables.size();
            Merge(funcblk.InteferenceGraph,ColorNum);
            Simplify(funcblk.InteferenceGraph, ColorNum);
            Select();
        }
        
    }
    public boolean Simplify(GraphModule<Asm_Operand> module,int k){//k is the maximum number of color types
        boolean fg=false;
        while(!fg){
            fg=true;
            for(var node:module.Variables){
                if(node.degree()<k){
                    ColorStack.add(node);
                    module.Variables.remove(node);//FUCK ConcurrentModification
                    for(var v:node.Neighbors){
                        v.Neighbors.remove(node);
                    }
                    fg=false;
                    break;
                }
            }
        }
        if(!module.Variables.isEmpty()){ 
            SpilledStack.addAll(module.Variables);
        }
        return module.Variables.isEmpty();
    }
    public boolean Conflict(GraphNode<Asm_Operand> u,GraphNode<Asm_Operand> v)
    {
        if(u.origin.color!=null &&v.origin.color!=null){
            return u.origin.color!=v.origin.color;
        }
        return u.Neighbors.contains(v)||v.Neighbors.contains(u);
    }
    public boolean Briggs(GraphNode<Asm_Operand> u,GraphNode<Asm_Operand> v,int k){
        if(Conflict(u, v))//conflict
            return false;
        if(v.origin.color!=null)//already colored
            return false;
        LinkedHashSet<GraphNode<Asm_Operand>> set=new LinkedHashSet<>();
        set.addAll(u.Neighbors);
        set.addAll(v.Neighbors);
        return set.size()<k;//u->v must not exist,so uv.degree<=u.degree+v.degree
    }
    public boolean George(GraphNode<Asm_Operand> u,GraphNode<Asm_Operand> v,int k){
        //System.out.println("mv merging:%s -> %s".formatted(u.origin.To_String(),v.origin.To_String()));
        if(Conflict(u, v))//conflict
        {    
            //System.out.println("u v conflict");
            return false;
        }
        if(v.origin.color!=null)//already colored
        {    
            //System.out.println("v already colored(Physical reg)");
            return false;
        }
        boolean fg=true;
        for(var each:v.Neighbors){
            if(!Conflict(u, each)&&each.degree()>=k){
                //System.out.println("neighbor %s unqualified".formatted(each.origin.To_String()));
                fg=false;
                break;
            }
        }
        //if(fg)
        //    System.out.println("Merged:%s -> %s".formatted(u.origin.To_String(),v.origin.To_String()));
        return fg;
    }
    public void Merge(GraphModule<Asm_Operand> module,int k){//maximum color
        for(var edge:module.Mvs){
            var u=edge.from; 
            var v=edge.to;
            if(!module.Variables.contains(u)||!module.Variables.contains(v))//already simplified
                continue;
            if(George(u, v, k)||Briggs(u, v, k))//always merge v-> u
            {    
                u.Neighbors.addAll(v.Neighbors);
                u.Merged.add(v);
                if(u.origin.color!=null)
                    v.origin.color=u.origin.color;
                assert(module.Variables.remove(v));
            }
        }
    }
    public void DEBUG(String msg){
        System.out.println(msg);
    }
    public void Select(){
        LinkedHashSet<Asm_Operand> AvailableColor=new LinkedHashSet<>();    
        LinkedHashSet<Asm_Operand> SpilledColor=new LinkedHashSet<>(); 
        while(!ColorStack.isEmpty()){
            var tmp=ColorStack.pop();   
            if(tmp.origin.color!=null)//already Colored(Physical Regs)
                continue; 
            AvailableColor.addAll(Colors);
            for(var adj:tmp.Neighbors){
                if(adj.origin.color!=null)
                    AvailableColor.remove(adj.origin.color);
            }
            tmp.origin.color=(Asm_Reg)AvailableColor.iterator().next();//choose one arbitrarily
            //DEBUG(tmp.origin.To_String()+" Color:"+tmp.origin.color.To_String());
            for(var mg:tmp.Merged)
            {    
                mg.origin.color=tmp.origin.color;
                //DEBUG(mg.origin.To_String()+" Color:"+mg.origin.color.To_String());
            }
        }
        for(int i=0;i<MinNum-ColorNum;++i)
            SpilledColor.add(new Asm_SpilledReg(PhysicalRegs.sp,CurrentFunc.Arg_Size+CurrentFunc.Total_Offset+i*4,4));
        while(!SpilledStack.isEmpty()){
            AvailableColor.clear();
            var tmp=SpilledStack.pop();    
            if(tmp.origin.color!=null)//already Colored(Physical Regs)
                continue; 
            AvailableColor.addAll(Colors);
            AvailableColor.addAll(SpilledColor);
            for(var adj:tmp.Neighbors){
                if(adj.origin.color!=null)
                    AvailableColor.remove(adj.origin.color);
            }
            tmp.origin.color=(Asm_Reg)AvailableColor.iterator().next();
            //DEBUG(tmp.origin.To_String()+" Color:"+tmp.origin.color.To_String());
            if(tmp.origin.color instanceof Asm_SpilledReg e)
                CurrentFunc.Total_Offset=Math.max(CurrentFunc.Total_Offset,e.offset+e.size);//update Func.TotalOffset
            for(var mg:tmp.Merged)
                {    
                    mg.origin.color=tmp.origin.color;
                    //DEBUG(mg.origin.To_String()+" Color:"+mg.origin.color.To_String());
                }
        }
    }
}

