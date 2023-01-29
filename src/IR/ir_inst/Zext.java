package IR.ir_inst;

import java.util.ArrayList;

import IR.ir_value.Ir_Value;
import utils.Init_Warning;
import IR.IRVisitor;

public class Zext extends Ir_Inst {
    public Zext(){
        new Init_Warning("Zext_inst");
    }
    public Zext(Ir_Value user,Ir_Value Zextee){
        User=user;
        Operands=new ArrayList<>();
        Operands.add(Zextee);
    }
    @Override
    public void accept(IRVisitor visitor){
        visitor.visit(this);
    }
    @Override
    public String To_String(){
        //<reg name> = zext <zextee type> <zextee name> to <reg type>
        Ir_Value zextee=Operands.get(0);
        return "%s = zext %s %s to %s".formatted(User.To_String(),zextee.Type.To_String(),zextee.To_String(),User.Type.To_String());
    }
}
