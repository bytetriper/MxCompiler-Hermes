package ASM.asm_inst;

import ASM.asm_operand.Asm_Imm;
import ASM.asm_operand.Asm_Operand;

public class Asm_Li extends Asm_Inst{
    public Asm_Li(Asm_Operand rd,Asm_Operand imm){
        assert(imm instanceof Asm_Imm);
        Rd=rd;
        Imm=imm;
    }
    @Override
    public String To_String(){
        //li <Rd> <Imm>
        return "li %s %s".formatted(Rd.To_String(),Imm.To_String());
    }
}
