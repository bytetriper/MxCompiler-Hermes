package backend;

import java.util.ArrayList;
import java.util.Deque;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.ListIterator;

import org.antlr.v4.misc.Graph;

import ASM.*;
import ASM.asm_inst.Asm_Inst;
import ASM.asm_inst.Asm_J;
import ASM.asm_inst.Asm_Jump;
import ASM.asm_inst.Asm_Mv;
import ASM.asm_inst.Asm_Ret;
import ASM.asm_operand.Asm_Operand;
import ASM.asm_operand.Asm_PhysicalReg;
import ASM.asm_operand.Asm_PhysicalReg.RegName;

public class GraphBuilder implements AsmPass {// build CFG and Inteference Graph at the same time
    public Asm_FuncBlock CurrentFunc;
    public Asm_BasicBlock CurrentBlock;

    public GraphBuilder() {
        // fart here
    }

    public void visit(InstSelector selector) {
        for (var blk : selector.Blocks) {
            visit((Asm_FuncBlock) blk.Asm_Reg);
        }
    }

    @Override
    public void visit(Asm_BasicBlock blk) {
        CurrentBlock = blk;
        ListIterator<Asm_Inst> it = blk.Insts.listIterator();
        if (blk.Insts.size() != 1) {
            it.next();
            while (it.hasNext()) {
                var tmp = it.next();
                var now = it.previous();
                CurrentFunc.CFG.add_edge(now.Node, tmp.Node);
                if (now instanceof Asm_Jump) {
                    CurrentFunc.CFG.add_edge(now.Node, ((Asm_BasicBlock) now.Rd).Insts.get(0).Node);
                }
                it.next();
            }
        }
        var endinst = blk.Insts.get(blk.Insts.size() - 1);
        if (endinst instanceof Asm_Ret) {
        } else {//
            CurrentFunc.CFG.add_edge(((Asm_BasicBlock) endinst.Rd).Insts.get(0).Node, endinst.Node);
        }
    }

    @Override
    public void visit(Asm_FuncBlock blk) {
        CurrentFunc = blk;
        for (var basicblk : blk.Blks) {
            visit(basicblk);
        }
        // CFG already build
        // Deal with Out now

        for (var variable : CurrentFunc.InteferenceGraph.Variables) {
            BFS(variable);
        }
        // Out Done
        // Deal with Inteference Graph Now
        /*Asm_PhysicalReg sp=new Asm_PhysicalReg(RegName.sp);
        Asm_PhysicalReg t0=new Asm_PhysicalReg(RegName.t0);
        Asm_PhysicalReg t1=new Asm_PhysicalReg(RegName.t1);*/
        for (var basicblk : blk.Blks) {
            for (var inst : basicblk.Insts) {
                for (var u : inst.Node.Def) {
                    for (var v : inst.Node.Use) {
                        CurrentFunc.InteferenceGraph.add_doubleEdge(u, v);
                        if(inst instanceof Asm_Mv)
                            CurrentFunc.InteferenceGraph.add_mv(v, u);
                    }
                    //CurrentFunc.InteferenceGraph.add_doubleEdge(u,sp);
                }
            }
        }
        //TODO SP for sp,t0,t1... 
        // Inteference Graph Done
    }

    public void BFS(GraphNode<Asm_Operand> node) {
        LinkedList<GraphNode<Asm_Inst>> queue = new LinkedList<>();// Linked ArrayList??
        HashSet<GraphNode<Asm_Inst>> visit = new HashSet<>();
        for (var each : node.UseList) {
            queue.add(each);
            visit.add(each);
            each.Use.add(node);
        }
        while (queue.size() != 0) {
            var top = queue.pop();
            for (var v : top.Neighbors) {
                if (v.Def.contains(node)) {

                } else {
                    if (!visit.contains(v)) {
                        queue.add(v);
                        visit.add(v);
                    }
                    v.Use.add(node);
                }
            }
        }
    }

    public void DEBUG_Info(GraphNode<Asm_Inst> node) {
        System.out.println(node.origin.To_String() + "\nUse:");
        for (var each : node.Use) {
            System.out.println(each.origin.To_String());
        }
    }
}
