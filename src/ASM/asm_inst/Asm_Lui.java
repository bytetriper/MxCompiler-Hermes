package ASM.asm_inst;

import ASM.asm_operand.Asm_Imm;
import ASM.asm_operand.Asm_Operand;
import ASM.asm_operand.Asm_PhysicalReg;
import backend.AsmVisitor;
public class Asm_Lui extends Asm_Inst {
    public Asm_Lui(Asm_Operand rd,Asm_Operand imm){
        Rd=rd;
        Imm=imm;
    }
    @Override
    public void accept(AsmVisitor allocater) {
        allocater.visit(this);
    }
    @Override
    public String To_String() {
        //lui <Rd> <Imm>
        String str="";
        if(OriginalInst!=null)
            str="\n\t#%s".formatted(OriginalInst.To_String());
        return "lui %s %s".formatted(Rd.To_String(),Imm.To_String())+str;
    }
}
