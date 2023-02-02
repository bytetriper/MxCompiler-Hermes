package backend;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Stack;

import ASM.Asm_BasicBlock;
import ASM.Asm_FuncBlock;
import ASM.asm_operand.Asm_Operand;
import ASM.asm_operand.Asm_PhysicalReg;
import ASM.asm_operand.Asm_Reg;
import ASM.asm_operand.Asm_SpilledReg;
import ASM.asm_operand.Asm_PhysicalReg.RegName;

public class GraphColorer implements AsmPass {
    public Asm_FuncBlock CurrentFunc;
    public Asm_BasicBlock CurrentBlock;
    public Stack<GraphNode<Asm_Operand>> ColorStack;
    public Stack<GraphNode<Asm_Operand>> SpilledStack;
    public int ColorNum;
    public int MinNum;//Minimum Color to Color all the graph
    static final public LinkedHashSet<Asm_Reg> Colors=new LinkedHashSet<>(){{//25 color in total
        add(new Asm_PhysicalReg(RegName.s0));
        add(new Asm_PhysicalReg(RegName.s1));
        add(new Asm_PhysicalReg(RegName.s2));
        add(new Asm_PhysicalReg(RegName.s3));
        add(new Asm_PhysicalReg(RegName.s4));
        add(new Asm_PhysicalReg(RegName.s5));
        add(new Asm_PhysicalReg(RegName.s6));
        add(new Asm_PhysicalReg(RegName.s7));
        add(new Asm_PhysicalReg(RegName.s8));
        add(new Asm_PhysicalReg(RegName.s9));
        add(new Asm_PhysicalReg(RegName.s10));
        add(new Asm_PhysicalReg(RegName.s11));
        add(new Asm_PhysicalReg(RegName.t3));
        add(new Asm_PhysicalReg(RegName.t4));
        add(new Asm_PhysicalReg(RegName.t5));
        add(new Asm_PhysicalReg(RegName.t6));
        add(new Asm_PhysicalReg(RegName.a0));
        add(new Asm_PhysicalReg(RegName.a1));
        add(new Asm_PhysicalReg(RegName.a2));
        add(new Asm_PhysicalReg(RegName.a3));
        add(new Asm_PhysicalReg(RegName.a4));
        add(new Asm_PhysicalReg(RegName.a5));
        add(new Asm_PhysicalReg(RegName.a6));
        add(new Asm_PhysicalReg(RegName.a7));
        add(new Asm_PhysicalReg(RegName.gp));
        add(new Asm_PhysicalReg(RegName.tp));
    }};
    static final public Asm_PhysicalReg sp=new Asm_PhysicalReg(RegName.sp);
    public GraphColorer (){
        ColorStack=new Stack<>();
        SpilledStack=new Stack<>();
        ColorNum=Colors.size();
    }
    public void visit(InstSelector selector){
        for(var blk:selector.Blocks){
            visit((Asm_FuncBlock)blk.Asm_Reg);
        }
    }
    @Override
    public void visit(Asm_BasicBlock block) {

    }
    @Override
    public void visit(Asm_FuncBlock funcblk) {
        CurrentFunc=funcblk;
        MinNum=funcblk.InteferenceGraph.Variables.size();
        int l=ColorNum,r=MinNum,mid;
        while(l<r)
        {
            mid=(l+r)/2;
            Merge(CurrentFunc.InteferenceGraph,ColorNum);//only merge Things under k
            if(Simplify(CurrentFunc.InteferenceGraph, mid))
                r=mid;
            else
                l=mid+1;
        }
        MinNum=r;
        Select();
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
        return module.Variables.isEmpty();
    }
    public boolean Briggs(GraphNode<Asm_Operand> u,GraphNode<Asm_Operand> v,int k){
        if(u.Neighbors.contains(v))//conflict
            return false;
        if(v.origin.color!=null)//already colored
            return false;
        LinkedHashSet<GraphNode<Asm_Operand>> set=new LinkedHashSet<>();
        set.addAll(u.Neighbors);
        set.addAll(v.Neighbors);
        return set.size()<k;//u->v must not exist,so uv.degree<=u.degree+v.degree
    }
    public void Merge(GraphModule<Asm_Operand> module,int k){//maximum color
        for(var edge:module.Mvs){
            var u=edge.from;
            var v=edge.to;
            if(!module.Variables.contains(u))
                continue;
            if(Briggs(u, v, k))//always merge v-> u
            {    
                u.Neighbors.addAll(v.Neighbors);
                u.Merged.add(v);
                module.Variables.remove(v);
            }
        }
    }
    public void Select(){
        LinkedHashSet<Asm_Reg> AvailableColor=new LinkedHashSet<>();    
        LinkedHashSet<Asm_Reg> SpilledColor=new LinkedHashSet<>(); 
        while(!ColorStack.isEmpty()){
            var tmp=ColorStack.pop();    
            AvailableColor.addAll(Colors);
            for(var adj:tmp.Neighbors){
                if(adj.origin.color!=null)
                    AvailableColor.remove(adj.origin.color);
            }
            tmp.origin.color=AvailableColor.iterator().next();//choose one arbitrarily
        }
        AvailableColor.addAll(Colors);
        for(int i=0;i<MinNum-ColorNum;++i)
            SpilledColor.add(new Asm_SpilledReg(sp,CurrentFunc.Arg_Size+i*4,4));
        while(!SpilledStack.isEmpty()){
            var tmp=ColorStack.pop();    
            AvailableColor.addAll(Colors);
            AvailableColor.addAll(SpilledColor);
            for(var adj:tmp.Neighbors){
                if(adj.origin.color!=null)
                    AvailableColor.remove(adj.origin.color);
            }
            tmp.origin.color=AvailableColor.iterator().next();
        }
    }
}

