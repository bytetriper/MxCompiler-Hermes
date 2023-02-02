package ASM.asm_inst;

import ASM.Asm_BasicBlock;
import ASM.Asm_FuncBlock;
import ASM.asm_operand.Asm_Operand;
import ASM.asm_operand.Asm_PhysicalReg;
import backend.AsmVisitor;
public class Asm_Jump extends Asm_Inst {
    String type;
    public Asm_Jump(Asm_Operand rd,Asm_Operand rs1,Asm_Operand rs2,String op){
        Rd=rd;
        Rs1=rs1;
        Rs2=rs2;
        type=op;
    }
    public Asm_Jump(Asm_Operand rd,Asm_Operand rs1,String op){
        Rd=rd;
        Rs1=rs1;
        Rs2=null;
        type=op;
    }
    @Override
    public void accept(AsmVisitor allocater) {
        allocater.visit(this);
    }
    @Override
    public String To_String() {
        // Type <Rs1>,<Rs2> <Rd>
        // Type <Rs1> <Rd>
        String str="";
        if(OriginalInst!=null)
            str="\n\t#%s".formatted(OriginalInst.To_String());
        if(Rs2!=null)
            return "%s %s,%s %s".formatted(type,Rs1.To_String(),Rs2.To_String(),((Asm_BasicBlock)Rd).Name)+str;
        return "%s %s %s".formatted(type,Rs1.To_String(),((Asm_BasicBlock)Rd).Name)+str; 
    }
}
