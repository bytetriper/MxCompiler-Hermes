package ASM.asm_operand;

import IR.ir_value.Ir_Reg;
import IR.ir_value.Ir_Value;

public class Asm_VirtualReg extends Asm_Reg {
    public Asm_PhysicalReg Reg;
    public int Offset,Id;
    static int Reg_cnt=0;
    public Asm_VirtualReg(Asm_PhysicalReg reg,int offset,int Size){
        Reg=reg;
        Offset=offset;
        Id=Reg_cnt++;
        size=Size;
    }
    @Override
    public String To_String(){
        //assert offset<(1<<11)
        //reg(offset)
        return "%d(%s)".formatted(Offset,Reg.To_String());
    }
}
