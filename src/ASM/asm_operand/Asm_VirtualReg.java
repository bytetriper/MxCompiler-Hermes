package ASM.asm_operand;

import IR.ir_value.Ir_Reg;
import IR.ir_value.Ir_Value;

public class Asm_VirtualReg extends Asm_Reg {
    Ir_Reg IrReg;
    public Asm_VirtualReg(Ir_Reg reg){
        IrReg=reg;
    }
    @Override
    public String To_String(){
        //For temporary DEBUG use only
        //%<name>
        return IrReg.To_String();
    }
}
