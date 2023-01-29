package IR.ir_inst;

import java.util.ArrayList;

import IR.ir_value.Ir_Value;
import utils.Init_Warning;
import IR.IRVisitor;

public class Trunc extends Ir_Inst {
    public Trunc() {
        new Init_Warning("trunc_inst");
    }

    public Trunc(Ir_Value user, Ir_Value truncee) {
        User = user;
        Operands = new ArrayList<>();
        Operands.add(truncee);
    }
    @Override
    public void accept(IRVisitor visitor){
        visitor.visit(this);
    }
    @Override
    public String To_String() {
        // <reg name> = trunc <truncee type> <truncee name> to <reg type>
        Ir_Value truncee = Operands.get(0);
        return "%s = trunc %s %s to %s".formatted(User.To_String(), truncee.Type.To_String(), truncee.To_String(),
                User.Type.To_String());
    }
}
