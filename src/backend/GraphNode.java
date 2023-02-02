package backend;

import java.util.LinkedHashSet;

import org.antlr.v4.misc.Graph;

import ASM.asm_inst.Asm_Call;
import ASM.asm_inst.Asm_Inst;
import ASM.asm_operand.Asm_OffsetReg;
import ASM.asm_operand.Asm_Operand;

public class GraphNode<T> {
    T origin;//maybe not exist
    LinkedHashSet<GraphNode<T>> Neighbors = new LinkedHashSet<>();
    LinkedHashSet<GraphNode<Asm_Operand>> Use = new LinkedHashSet<>();
    LinkedHashSet<GraphNode<Asm_Operand>> Def = new LinkedHashSet<>();
    LinkedHashSet<GraphNode<Asm_Operand>> Out = new LinkedHashSet<>();
    LinkedHashSet<GraphNode<Asm_Inst>> UseList=new LinkedHashSet<>();
    LinkedHashSet<GraphNode<T>> Merged;
    public GraphNode(Asm_Inst tmp) {
        origin = (T)tmp;
        Def = new LinkedHashSet<>();
        Use = new LinkedHashSet<>();
        Out = new LinkedHashSet<>();
        Neighbors=new LinkedHashSet<>();
        if (origin instanceof Asm_Call) {
            // TODO
        } else {
            if (tmp.Rd != null&&!(tmp.Rd instanceof Asm_OffsetReg)) {
                if(tmp.Rd.Node==null)
                    tmp.Rd.Node=new GraphNode<>(tmp.Rd);
                Def.add(tmp.Rd.Node);
            }
            if (tmp.Rs1 != null&&!(tmp.Rs1 instanceof Asm_OffsetReg))
                Use.add(tmp.Rs1.Node);
            if (tmp.Rs2 != null&&!(tmp.Rs2 instanceof Asm_OffsetReg))
                Use.add(tmp.Rs2.Node);
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
        if (!Neighbors.contains(node))
            Neighbors.add(node);
    }
}
