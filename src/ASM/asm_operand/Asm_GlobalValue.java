package ASM.asm_operand;

import IR.ir_value.Ir_GlobalReg;

public class Asm_GlobalValue extends Asm_Operand {
    public String symbol;
    public int word;//size is size in byte,word is initial number.
    public Asm_GlobalValue(Ir_GlobalReg reg){
        symbol=reg.Name;
        size=reg.Type.get_size();
    }
    @Override
    public String To_String(){
        return symbol;
        //return str;
    }
}
