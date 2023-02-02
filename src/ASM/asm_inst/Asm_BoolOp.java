package ASM.asm_inst;

import java.util.HashMap;

import ASM.asm_operand.Asm_Operand;
import ASM.asm_operand.Asm_PhysicalReg;
import utils.FUCKER;
import backend.AsmVisitor;
public class Asm_BoolOp extends Asm_Inst {
    String type;

    public Asm_BoolOp(Asm_Operand rd, Asm_Operand rs1, Asm_Operand rs2, String op) {
        type = op;
        switch (type) {
            case "slt", "sltu", "slti", "sltiu":
                break;
            default:
                new FUCKER("[Fatal Error]Unexpected type %s as Asm_BinaryOp".formatted(op));
        }
        Rd = rd;
        Rs1 = rs1;
        Rs2 = rs2;
    }
    @Override
    public void accept(AsmVisitor allocater) {
        allocater.visit(this);
    }
    @Override
    public String To_String() {
        // type <Rd> <Rs1>,<Rs2>
        String str = "";
        if (OriginalInst != null)
            str = "\n\t#%s".formatted(OriginalInst.To_String());
        return "%s %s %s,%s".formatted(type, Rd.To_String(), Rs1.To_String(), Rs2.To_String())+str;
    }
}
