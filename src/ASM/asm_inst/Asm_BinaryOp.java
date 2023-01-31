package ASM.asm_inst;

import java.util.HashMap;

import ASM.asm_operand.Asm_Imm;
import ASM.asm_operand.Asm_Operand;
import backend.Allocater;

public class Asm_BinaryOp extends Asm_Inst {
    public String Op;
    public HashMap<String,String> Renaming=new HashMap<>(){{
        put("sdiv","div");
        put("ashr", "sra");
        put("srem","rem");
        put("shl","sll");
    }};
    public HashMap<String,String> Imm_Support=new HashMap<>(){{
        put("add","addi");
        put("sll","slli");
        put("xor","xori");
        put("or","ori");
        put("and","andi");
        put("sra","srai");
    }};
    public Asm_BinaryOp(Asm_Operand rd,Asm_Operand rs1,Asm_Operand rs2,String op){
        if(Renaming.containsKey(op))
        {    
            Op=Renaming.get(op);
        }
        else
            Op=op;
        Rd=rd;
        Rs1=rs1;
        Rs2=rs2;
    }
    @Override
    public void accept(Allocater allocater) {
        allocater.visit(this);
    }
    @Override
    public String To_String(){
        //<op> <Rd> <Rs1> <Rs2>
        String str="";
        if(OriginalInst!=null)
            str="\n\t#%s".formatted(OriginalInst.To_String());
        str="%s %s,%s,%s".formatted(Op,Rd.To_String(),Rs1.To_String(),Rs2.To_String())+str;
        return str;
    }
}
