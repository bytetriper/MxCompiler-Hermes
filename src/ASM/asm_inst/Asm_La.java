package ASM.asm_inst;

import ASM.asm_operand.Asm_GlobalValue;
import ASM.asm_operand.Asm_Operand;
import ASM.asm_operand.Asm_PhysicalReg;

public class Asm_La extends Asm_Inst {
    public Asm_La(Asm_Operand rd,Asm_Operand rs1){
        Rd=rd;
        Rs1=rs1;
        assert(Rd instanceof Asm_PhysicalReg);
        assert(Rs1 instanceof Asm_GlobalValue);
    }
    @Override
    public String To_String() {
        //la <Rd> <Rs1>
        String str="";
        if(OriginalInst!=null)
            str="\n\t#%s".formatted(OriginalInst.To_String());
        return "la %s %s".formatted(Rd.To_String(),((Asm_GlobalValue)Rs1).symbol)+str;
    }
}
