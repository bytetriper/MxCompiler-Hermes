package IR.ir_inst;

import java.util.ArrayList;

import IR.ir_value.Ir_Value;
import utils.Init_Warning;
import IR.IRVisitor;

public class Bitcast extends Ir_Inst {
    public Bitcast(){
        new Init_Warning("Bitcast_inst");
    }
    public Bitcast(Ir_Value user,Ir_Value Bitcastee)
    {
        User=user;
        Operands=new ArrayList<>();
        Operands.add(Bitcastee);
    }
    @Override
    public void accept(IRVisitor visitor){
        visitor.visit(this);
    }
    @Override
    public String To_String()
    {
        //<reg name> = bitcast <bitcastee type> <bitcastee name> to <reg type>
        Ir_Value Bitcastee=Operands.get(0);
        return "%s = bitcast %s %s to %s".formatted(User.To_String(),Bitcastee.Type.To_String(),Bitcastee.To_String(),User.Type.To_String());
    }
}
