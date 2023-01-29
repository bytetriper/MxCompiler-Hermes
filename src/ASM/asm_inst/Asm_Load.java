package ASM.asm_inst;

import ASM.asm_operand.Asm_GlobalValue;
import ASM.asm_operand.Asm_Imm;
import ASM.asm_operand.Asm_Operand;
import ASM.asm_operand.Asm_PhysicalReg;
import ASM.asm_operand.Asm_Relocation;
import IR.ir_inst.Load;
import IR.ir_value.Ir_GlobalReg;

public class Asm_Load extends Asm_Inst{
    public enum Load_Type{
        LB,LW
    };
    public Load_Type loadtype;
    public Asm_Load(Asm_Operand rd,Asm_Operand rs1,Asm_Operand imm,Load_Type type){
        Rd=rd;
        assert(rs1 instanceof Asm_PhysicalReg);
        Rs1=rs1;
        Imm=imm;
        assert(Imm instanceof Asm_Imm||Imm instanceof Asm_Relocation);
        loadtype=type;
    }
    public Asm_Load(Asm_Operand rd,Asm_Operand reg,Load_Type type){
        assert(rd instanceof Asm_PhysicalReg);
        assert(reg instanceof Asm_GlobalValue);
        Rd=rd;
        Rs1=reg;
        loadtype=type;
    }
    @Override
    public String To_String(){
        //<loadtype> <Rd> <Imm>(Rs1)
        //<loadtype> <Rd> <symbol>
        String str="";
        if(OriginalInst!=null)
            str="\n\t#%s".formatted(OriginalInst.To_String());
        if(Imm!=null)
        {
            return "%s %s %s(%s)".formatted(loadtype==Load_Type.LB?"lb":"lw",Rd.To_String(),Imm.To_String(),Rs1.To_String())+str;
        }
        else
            return "%s %s %s".formatted(loadtype==Load_Type.LB?"lb":"lw",Rd.To_String(),Rs1.To_String())+str;
    }
}
