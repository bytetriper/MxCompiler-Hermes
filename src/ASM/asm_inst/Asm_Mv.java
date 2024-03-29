package ASM.asm_inst;

import ASM.Asm_BasicBlock;
import ASM.asm_operand.Asm_Operand;
import ASM.asm_operand.Asm_PhysicalReg;
import backend.AsmVisitor;
import utils.FUCKER;
public class Asm_Mv extends Asm_Inst {
    public Asm_Mv(Asm_Operand rd,Asm_Operand rs1){
        Rd=rd;
        Rs1=rs1;
    }
    @Override
    public void accept(AsmVisitor allocater) {
        allocater.visit(this);
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
