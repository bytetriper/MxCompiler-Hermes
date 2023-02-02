package ASM.asm_inst;

import java.util.ArrayList;

import ASM.asm_operand.Asm_Imm;
import ASM.asm_operand.Asm_Operand;
import IR.ir_inst.Ir_Inst;
import backend.AsmVisitor;
import backend.GraphNode;

abstract public class Asm_Inst {
    public Asm_Operand Rd,Rs1,Rs2,Imm;
    public Ir_Inst OriginalInst;
    public GraphNode<Asm_Inst> Node;
    abstract public String To_String();
    abstract public void accept(AsmVisitor allocater);
}
