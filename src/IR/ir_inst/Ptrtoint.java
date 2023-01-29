package IR.ir_inst;

import java.util.ArrayList;

import IR.ir_value.Ir_Value;
import utils.Init_Warning;
import IR.IRVisitor;

public class Ptrtoint extends Ir_Inst {
    public Ptrtoint(){
        new Init_Warning("Ptrtoint_inst");
    }
    public Ptrtoint(Ir_Value user,Ir_Value Ptr){
        Operands=new ArrayList<>();
        User=user;
        Operands.add(Ptr);
    }
    @Override
    public void accept(IRVisitor visitor){
        visitor.visit(this);
    }
    @Override
    public String To_String(){
        //<reg> = ptrtoint <Ptr type> <Ptr> to <reg type>
        Ir_Value ptr=Operands.get(0);
        return "%s = ptrtoint %s %s to %s".formatted(User.To_String(),ptr.Type.To_String(),ptr.To_String(),User.Type.To_String());
    }
}
