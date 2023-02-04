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

    public void DEBUG(String msg) {
        System.out.println(msg);
    }

    @Override
    public void visit(Asm_BasicBlock blk) {
        CurrentBlock = blk;
        // DEBUG("\n\nblk:" + blk.Name);
        ListIterator<Asm_Inst> it = blk.Insts.listIterator();
        boolean fg = true;
        while (fg) {
            var tmp = it.next();
            if (it.hasNext())
                it.next();
            else
                fg = false;
            // DEBUG(tmp.To_String());
            var now = it.previous();

            if (tmp instanceof Asm_Jump || tmp instanceof Asm_J) {
                CurrentFunc.CFG.add_edge(((Asm_BasicBlock) tmp.Rd).Insts.get(0).Node, tmp.Node);
                CurrentFunc.CFG.add_edge(now.Node, tmp.Node);
                // DEBUG(((Asm_BasicBlock)
                // tmp.Rd).Insts.get(0).To_String()+"->"+tmp.To_String());
            } else if (tmp instanceof Asm_Ret) {

            } else
                // DEBUG(now.To_String() + "->" + tmp.To_String());
                CurrentFunc.CFG.add_edge(now.Node, tmp.Node);

        }

        // var endinst = blk.Insts.get(blk.Insts.size() - 1);
        // if (endinst instanceof Asm_Ret) {
        // } else {//
        // CurrentFunc.CFG.add_edge(((Asm_BasicBlock) endinst.Rd).Insts.get(0).Node,
        // endinst.Node);
        // }
    }

    @Override
    public void visit(Asm_FuncBlock blk) {
        CurrentFunc = blk;
        for (var basicblk : blk.Blks) {
            visit(basicblk);
        }
        // CFG already build
        // Deal with Out now
        //DEBUG("\n\n\nFUNCBLOCK:" + CurrentFunc.Name);
        for (var variable : CurrentFunc.InteferenceGraph.Variables) {
            // DEBUG_Node_Info(variable);
            BFS(variable);
        }
        // Out Done
        // Deal with Inteference Graph Now
        for (var basicblk : blk.Blks) {
            for (var inst : basicblk.Insts) {
                for (var u : inst.Node.Def) {
                    for (var v : inst.Node.Out) {
                        if (inst instanceof Asm_Mv) {//for a<- c
                            if (inst.Node.Use.size()>0&&v != inst.Node.Use.iterator().next())//v!=c
                                CurrentFunc.InteferenceGraph.add_doubleEdge(u, v);

                        } else
                            CurrentFunc.InteferenceGraph.add_doubleEdge(u, v);
                    }
                    if (inst instanceof Asm_Mv){
                        for(var v:inst.Node.Use){
                            CurrentFunc.InteferenceGraph.add_mv(u, v);
                        }
                    }
                }
                //DEBUG_Inst_Info(inst.Node);
            }
        }
        /*
        for(var vari:CurrentFunc.InteferenceGraph.Variables){
            DEBUG("Start:"+vari.origin.To_String());
            for(var each:vari.Neighbors){
                System.out.print(each.origin.To_String()+" ");
            }
            DEBUG("\n\n");
        }*/
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
        // DEBUG("\nstart:"+node.origin.To_String());
        while (queue.size() != 0) {
            var top = queue.pop();
            // DEBUG_Inst_Info(top);
            for (var v : top.Neighbors) {
                if (v.Def.contains(node)) {
                } else {
                    if (!visit.contains(v)) {
                        queue.add(v);
                        visit.add(v);
                    }
                    v.Out.add(node);
                }
            }
        }
    }

    public void DEBUG_Node_Info(GraphNode<Asm_Operand> node) {
        System.out.println("\n" + node.origin.To_String() + "\nUseList:");
        for (var each : node.UseList) {
            System.out.println(each.origin.To_String());
        }
    }

    public void DEBUG_Inst_Info(GraphNode<Asm_Inst> node) {
        System.out.println("\nInst:" + node.origin.To_String() + "\nNeighbors:");
        for (var each : node.Neighbors) {
            System.out.println(each.origin.To_String());
        }
    }

    public void DEBUG_Info(GraphNode<Asm_Inst> node) {
        System.out.println("\n" + node.origin.To_String() + "\nUse:");
        for (var each : node.Use) {
            System.out.println(each.origin.To_String());
        }
        System.out.println("\nDef:");
        for (var each : node.Def) {
            System.out.println(each.origin.To_String());
        }
        System.out.println("\nOut:");
        for (var each : node.Out) {
            System.out.println(each.origin.To_String());
        }
    }
}
