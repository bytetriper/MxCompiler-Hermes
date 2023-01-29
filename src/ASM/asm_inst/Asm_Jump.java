package ASM.asm_inst;

import ASM.Asm_BasicBlock;
import ASM.Asm_FuncBlock;
import ASM.asm_operand.Asm_Operand;
import ASM.asm_operand.Asm_PhysicalReg;

public class Asm_Jump extends Asm_Inst {
    String type;
    public Asm_Jump(Asm_Operand rd,Asm_Operand rs1,Asm_Operand rs2,String op){
        Rd=(Asm_BasicBlock)rd;
        Rs1=(Asm_PhysicalReg)rs1;
        Rs2=rs2;
        type=op;
        assert(Rd instanceof Asm_FuncBlock);
    }
    public Asm_Jump(Asm_Operand rd,Asm_Operand rs1,String op){
        Rd=(Asm_BasicBlock)rd;
        Rs1=(Asm_PhysicalReg)rs1;
        Rs2=null;
        type=op;
        assert(Rd instanceof Asm_FuncBlock);
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
