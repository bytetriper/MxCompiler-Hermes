package IR.ir_inst;

import IR.IRVisitor;
import utils.FUCKER;

public class Ir_Inst {
    public String To_String(){
        new FUCKER("[Fatal Error]:Not override Ir_Inst!");
        return "Ir_Inst ILLEGAL";
    }
    public void accept(IRVisitor visitor)
    {
        new FUCKER("[Fatal Error]:Not override Ir_Inst Accept!");
    }
}
