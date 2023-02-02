package ASM.asm_inst;

import ASM.asm_operand.Asm_Imm;
import ASM.asm_operand.Asm_Operand;
import backend.AsmVisitor;
public class Asm_Li extends Asm_Inst{
    public Asm_Li(Asm_Operand rd,Asm_Operand imm){
        Rd=rd;
        Imm=imm;
    }
    @Override
    public void accept(AsmVisitor allocater) {
        allocater.visit(this);
    }
    @Override
    public String To_String(){
        //li <Rd> <Imm>
        String str="";
        if(OriginalInst!=null)
            str="\n\t#%s".formatted(OriginalInst.To_String());
        return "li %s %s".formatted(Rd.To_String(),Imm.To_String())+str;
    }
}
