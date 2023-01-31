package ASM.asm_inst;
import ASM.asm_operand.Asm_Operand;
import ASM.asm_operand.Asm_PhysicalReg;
import utils.FUCKER;
import backend.Allocater;
public class Asm_SexzOp extends Asm_Inst {
    String type;
    public Asm_SexzOp(Asm_Operand rd,Asm_Operand rs1,String op){
        type=op;
        switch(type){
            case "seqz","snez":break;
            default:new FUCKER("[Fatal Error]Unexpected type %s as Asm_BinaryOp".formatted(op));
        }
        Rd=rd;
        Rs1=rs1;
    }
    @Override
    public void accept(Allocater allocater) {
        allocater.visit(this);
    }
    @Override
    public String To_String() {
        //type <Rd> <Rs1>
        String str="";
        if(OriginalInst!=null)
            str="\n\t#%s".formatted(OriginalInst.To_String());
        return "%s %s %s".formatted(type,Rd.To_String(),Rs1.To_String())+str;
    }
}
