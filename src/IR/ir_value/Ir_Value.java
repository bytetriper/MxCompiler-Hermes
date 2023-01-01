package IR.ir_value;

import ASM.asm_operand.Asm_Operand;
import IR.ir_type.Ir_Type;
import utils.FUCKER;

public abstract class Ir_Value {
    public Asm_Operand Asm_Reg;
    public String Name;
    public Ir_Type Type;
    abstract public int get_size();
    abstract public String To_String();
}
