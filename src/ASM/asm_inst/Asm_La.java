package ASM.asm_inst;

import ASM.Asm_BasicBlock;
import ASM.asm_operand.Asm_GlobalValue;
import ASM.asm_operand.Asm_Operand;
import ASM.asm_operand.Asm_PhysicalReg;
import backend.AsmVisitor;
public class Asm_La extends Asm_Inst {
    public Asm_La(Asm_Operand rd,Asm_Operand rs1){
        Rd=rd;
        Rs1=(Asm_GlobalValue)rs1;

    }
    @Override
    public void accept(AsmVisitor allocater) {
        allocater.visit(this);
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
