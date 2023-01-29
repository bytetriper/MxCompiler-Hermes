package ASM.asm_inst;

import ASM.asm_operand.Asm_Operand;
import ASM.asm_operand.Asm_PhysicalReg;

public class Asm_Mv extends Asm_Inst {
    public Asm_Mv(Asm_Operand rd,Asm_Operand rs1){
        assert(rd instanceof Asm_PhysicalReg);
        assert(rs1 instanceof Asm_PhysicalReg);
        Rd=rd;
        Rs1=rs1;
    }
    @Override
    public String To_String(){
        //mv <Rd> <Rs1>
        String str="";
        if(OriginalInst!=null)
            str="\n\t#%s".formatted(OriginalInst.To_String());
        return "mv %s %s".formatted(Rd.To_String(),Rs1.To_String())+str;
    }
}
