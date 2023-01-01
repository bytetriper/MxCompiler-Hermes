package ASM.asm_inst;

import ASM.asm_operand.Asm_Imm;
import ASM.asm_operand.Asm_Operand;

public class Asm_Store extends Asm_Inst {
    enum StoreType{
        SB,SW
    };
    StoreType storetype;
    public Asm_Store(Asm_Operand rd,Asm_Operand rs1,Asm_Operand rs2,Asm_Operand imm,StoreType type){
        Rd=rd;
        Rs1=rs1;
        Rs2=rs2;
        assert(imm instanceof Asm_Imm);
        Imm=imm;
        storetype=type;
    }
    public Asm_Store(Asm_Operand rd,Asm_Operand rs1,Asm_Operand rs2,StoreType type){//Imm be 0 by default
        Rd=rd;
        Rs1=rs1;
        Rs2=rs2;
        Imm=new Asm_Imm(0);
        storetype=type;
    }
    @Override
    public String To_String(){
        //sb/sw <Rd> <Rs2> <Imm>(Rs1)
        return "%s %s %s %s(%s)".formatted(storetype==StoreType.SB?"sb":"sw",Rd.To_String(),Rs2.To_String(),Imm.To_String(),Rs1.To_String());
    }
}
