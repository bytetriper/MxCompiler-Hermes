package ASM.asm_inst;

import ASM.asm_operand.Asm_Imm;
import ASM.asm_operand.Asm_Operand;
import IR.ir_inst.Load;

public class Asm_Load extends Asm_Inst{
    enum Load_Type{
        LB,LW
    };
    Load_Type loadtype;
    public Asm_Load(Asm_Operand rd,Asm_Operand rs1,Asm_Operand imm,Load_Type type){
        assert(Imm instanceof Asm_Imm);
        Rd=rd;
        Rs1=rs1;
        Imm=imm;
        loadtype=type;
    }
    @Override
    public String To_String(){
        //<loadtype> <Rd> <Imm>(Rs1)
        return "%s %s %s(%s)".formatted(loadtype==Load_Type.LB?"lb":"lw",Rd.To_String(),Rs1.To_String(),Imm.To_String());
    }
}
