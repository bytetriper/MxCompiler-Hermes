package ASM.asm_inst;

import java.util.ArrayList;

import ASM.asm_operand.Asm_Imm;
import ASM.asm_operand.Asm_Operand;
import IR.ir_inst.Ir_Inst;
import backend.Allocater;

abstract public class Asm_Inst {
    public Asm_Operand Rd,Rs1,Rs2,Imm;
    public Ir_Inst OriginalInst;
    abstract public String To_String();
    abstract public void accept(Allocater allocater);
}
