package IR.ir_inst;

import java.util.ArrayList;

import IR.ir_type.Void_Type;
import IR.ir_value.Ir_Value;
import utils.Init_Warning;
import IR.IRVisitor;

public class Ret extends Ir_Inst {
    public Ret() {
        new Init_Warning("Ret_Inst");
    }

    public Ret(Ir_Value op) {
        Operands = new ArrayList<>();
        Operands.add(op);
    }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public String To_String() {
        // ret void
        // or
        // ret <ret type> <ret value>
        Ir_Value op = Operands.get(0);
        if (op.Type instanceof Void_Type)
            return "ret void";
        return "ret %s %s".formatted(op.Type.To_String(), op.To_String());
    }
}
