package ASM.asm_inst;

import ASM.asm_operand.Asm_Operand;
import ASM.asm_operand.Asm_PhysicalReg;
import backend.Allocater;
public class Asm_Neg extends Asm_Inst {
    public Asm_Neg(Asm_Operand rd,Asm_Operand rs1){
        Rd=rd;
        Rs1=rs1;
    }
    @Override
    public void accept(Allocater allocater) {
        allocater.visit(this);
    }
    @Override
    public String To_String() {
        //neg <Rd> <Rs1>
        String str="";
        if(OriginalInst!=null)
            str="\n\t#%s".formatted(OriginalInst.To_String());
        return "neg %s %s".formatted(Rd.To_String(),Rs1.To_String())+str;

    }
}
