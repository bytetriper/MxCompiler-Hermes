package ASM.asm_inst;

import ASM.asm_operand.Asm_GlobalValue;
import ASM.asm_operand.Asm_Imm;
import ASM.asm_operand.Asm_Operand;
import ASM.asm_operand.Asm_PhysicalReg;
import ASM.asm_operand.Asm_Relocation;
import ASM.asm_operand.Asm_PhysicalReg.RegName;

public class Asm_Store extends Asm_Inst {
    public enum StoreType{
        SB,SW
    };
    StoreType storetype;
    public Asm_Store(Asm_Operand rs1,Asm_Operand rs2,Asm_Operand imm,StoreType type){
        Rs1=rs1;
        Rs2=rs2;
        assert(imm instanceof Asm_Imm||imm instanceof Asm_Relocation);
        Imm=imm;
        storetype=type;
    }
    public Asm_Store(Asm_Operand rd,Asm_Operand reg,StoreType type){//Imm be 0 by default
        assert(rd instanceof Asm_PhysicalReg);
        assert(reg instanceof Asm_GlobalValue);
        Rd=rd;
        Rs1=reg;
        Rs2=new Asm_PhysicalReg(RegName.t6);//t6 by default
        storetype=type;
    }
    @Override
    public String To_String(){
        //sb/sw <Rs2> <Imm>(Rs1)
        //sb/sw <Rd> <symbol>
        String str="";
        if(OriginalInst!=null)
            str="\n\t#%s".formatted(OriginalInst.To_String());
        if(Rd==null)
            return "%s %s,%s(%s)".formatted(storetype==StoreType.SB?"sb":"sw",Rs2.To_String(),Imm.To_String(),Rs1.To_String())+str;
        else
            return "%s %s,%s,%s".formatted(storetype==StoreType.SB?"sb":"sw",Rd.To_String(),Rs1.To_String(),Rs2.To_String())+str;
    }
}
