package IR.ir_inst;

import java.util.ArrayList;

import IR.IRVisitor;
import utils.FUCKER;
import utils.Init_Warning;
import IR.ir_value.Ir_Value;
public abstract class Ir_Inst {
    public Ir_Value User;
    public ArrayList<Ir_Value> Operands;
    abstract public String To_String();
    abstract public void accept(IRVisitor visitor);
}
