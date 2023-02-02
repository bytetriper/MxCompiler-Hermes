package ASM.asm_inst;

import ASM.asm_operand.Asm_GlobalValue;
import ASM.asm_operand.Asm_Imm;
import ASM.asm_operand.Asm_Operand;
import ASM.asm_operand.Asm_PhysicalReg;
import ASM.asm_operand.Asm_Relocation;
import ASM.asm_operand.Asm_PhysicalReg.RegName;
import backend.AsmVisitor;
public class Asm_Store extends Asm_Inst {
    public enum StoreType{
        SB,SW
    };
    StoreType storetype;
    public Asm_Store(Asm_GlobalValue rd,Asm_PhysicalReg reg,Asm_PhysicalReg tmpreg,StoreType type){//Imm be 0 by default
        Rd=rd;
        Rs1=reg;
        Rs2=tmpreg;//t6 by default
        storetype=type;
    }
    public Asm_Store(Asm_Operand rd,Asm_Operand rs1,StoreType type){//for virtual register
        Rd=rd;
        Rs1=rs1;
        storetype=type;
    }
    @Override
    public void accept(AsmVisitor allocater) {
        allocater.visit(this);
    }
    @Override
    public String To_String(){
        //sb/sw <Rs2> <Imm>(Rs1)
        //sb/sw <Rd>,<symbol>,tmpReg

        //sb/sw <Rd> <Rs1>
        String str="";
        if(OriginalInst!=null)
            str="\n\t# %s".formatted(OriginalInst.To_String());
        if(Rd==null)
            return "%s %s,%s(%s)".formatted(storetype==StoreType.SB?"sb":"sw",Rs2.To_String(),Imm.To_String(),Rs1.To_String())+str;
        else
        {    
            if(Rs2==null)
                return "%s %s,%s".formatted(storetype==StoreType.SB?"sb":"sw",Rs1.To_String(),Rd.To_String())+str;
            return "%s %s,%s,%s".formatted(storetype==StoreType.SB?"sb":"sw",Rs1.To_String(),Rd.To_String(),Rs2.To_String())+str;
        }
    }
}
