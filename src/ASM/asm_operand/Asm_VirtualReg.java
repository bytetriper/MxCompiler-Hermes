package ASM.asm_operand;

import IR.ir_value.Ir_Reg;
import IR.ir_value.Ir_Value;
import utils.FUCKER;

public class Asm_VirtualReg extends Asm_Reg {
    public int Id,Offset=-1;
    static int Reg_cnt=0;
    
    public Asm_VirtualReg(int Size){
        Id=Reg_cnt++;
        size=Size;
    }
    @Override
    public String To_String(){
        //assert offset<(1<<11)
        //reg(offset)
        //new FUCKER("Try To To_String a Virtual Reg");
        if(Offset==-1)
            return "VT%d".formatted(Id);
        else
            return "%d(sp)".formatted(Offset);
    }
}
