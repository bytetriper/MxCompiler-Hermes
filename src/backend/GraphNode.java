package backend;

import java.util.LinkedHashSet;

import org.antlr.v4.misc.Graph;

import ASM.asm_inst.Asm_Call;
import ASM.asm_inst.Asm_Inst;
import ASM.asm_inst.Asm_Ret;
import ASM.asm_inst.Asm_Store;
import ASM.asm_operand.Asm_OffsetReg;
import ASM.asm_operand.Asm_Operand;
import ASM.asm_operand.Asm_PhysicalReg;
import ASM.asm_operand.Asm_VirtualReg;
import ASM.asm_operand.Asm_PhysicalReg.RegName;
import utils.PhysicalRegs;

public class GraphNode<T> {
    T origin;//maybe not exist
    LinkedHashSet<GraphNode<T>> Neighbors = new LinkedHashSet<>();
    LinkedHashSet<GraphNode<Asm_Operand>> Use = new LinkedHashSet<>();
    LinkedHashSet<GraphNode<Asm_Operand>> Def = new LinkedHashSet<>();
    LinkedHashSet<GraphNode<Asm_Operand>> Out = new LinkedHashSet<>();
    LinkedHashSet<GraphNode<Asm_Inst>> UseList=new LinkedHashSet<>();
    LinkedHashSet<GraphNode<T>> Merged;
    public boolean IsValid(Asm_Operand reg){
        return (reg instanceof Asm_VirtualReg)||(reg instanceof Asm_PhysicalReg);
    }
    public GraphNode(Asm_Inst tmp) { 
        origin = (T)tmp;//RISKY->Runtime Check is not good
        Def = new LinkedHashSet<>();
        Use = new LinkedHashSet<>();
        Out = new LinkedHashSet<>();
        Neighbors=new LinkedHashSet<>();
        if (origin instanceof Asm_Call) {
            int size=((Asm_Call)origin).ParaSize;
            switch(size){
                case 8: Use.add(PhysicalRegs.a7.Node);
                case 7: Use.add(PhysicalRegs.a6.Node);
                case 6: Use.add(PhysicalRegs.a5.Node);
                case 5: Use.add(PhysicalRegs.a4.Node);
                case 4: Use.add(PhysicalRegs.a3.Node);
                case 3: Use.add(PhysicalRegs.a2.Node);
                case 2: Use.add(PhysicalRegs.a1.Node);
                case 1: Use.add(PhysicalRegs.a0.Node);
                case 0: break;
            }
            Def.addAll(PhysicalRegs.CallerSaved);   
        } else if(origin instanceof Asm_Ret){
            Use.add(PhysicalRegs.ra.Node);
        }else if (origin instanceof Asm_Store){
            if (tmp.Rd != null&&IsValid(tmp.Rd)) {
                if(tmp.Rd.Node==null)
                    tmp.Rd.Node=new GraphNode<>(tmp.Rd);
                Use.add(tmp.Rd.Node);//SP for store:Def=null&rd\in use
            }
            if (tmp.Rs1 != null&&IsValid(tmp.Rs1))
            {
                if(tmp.Rs1.Node==null)
                    tmp.Rs1.Node=new GraphNode<>(tmp.Rs1);
                Use.add(tmp.Rs1.Node);
            }
        }else{
            if (tmp.Rd != null&&IsValid(tmp.Rd)) {
                if(tmp.Rd.Node==null)
                    tmp.Rd.Node=new GraphNode<>(tmp.Rd);
                Def.add(tmp.Rd.Node);
            }
            if (tmp.Rs1 != null&&IsValid(tmp.Rs1))
            {
                if(tmp.Rs1.Node==null)
                    tmp.Rs1.Node=new GraphNode<>(tmp.Rs1);
                Use.add(tmp.Rs1.Node);
            }
            if (tmp.Rs2 != null&&IsValid(tmp.Rs2))
            {
                if(tmp.Rs2.Node==null)
                    tmp.Rs2.Node=new GraphNode<>(tmp.Rs1);
                Use.add(tmp.Rs2.Node);
            }
        }
    }
    public GraphNode(Asm_Operand tmp){
        origin=(T)tmp;
        UseList=new LinkedHashSet<>();
        Merged=new LinkedHashSet<>();
        Neighbors=new LinkedHashSet<>();
    }
    public int degree() {
        return Neighbors.size();
    }

    public void Add_Adj(GraphNode<T> node) {
        Neighbors.add(node);
    }
}
