package ASM.asm_inst;

import java.util.ArrayList;

import ASM.asm_operand.Asm_Imm;
import ASM.asm_operand.Asm_Operand;

abstract public class Asm_Inst {
    public Asm_Operand Rd,Rs1,Rs2,Imm;
    abstract public String To_String();
}
