package IR.ir_inst;

import java.util.ArrayList;

import IR.ir_type.Bool_Type;
import IR.ir_type.Int_Type;
import IR.ir_type.Pointer_Type;
import IR.ir_value.Ir_BoolConst;
import IR.ir_value.Ir_IntConstant;
import IR.ir_value.Ir_Value;
import utils.Init_Warning;
import IR.IRVisitor;

public class Global_Declare extends Ir_Inst {
    public Global_Declare(){
        new Init_Warning("Global_Declare");
    }
    public Global_Declare(Ir_Value user){
        assert(user.Type instanceof Pointer_Type);//
        User=user;
        Operands=new ArrayList<>();
        if(((Pointer_Type)user.Type).To_Type instanceof Int_Type)
        {
            Operands.add(new Ir_IntConstant(0));
        }
        else if(((Pointer_Type)user.Type).To_Type instanceof Bool_Type)
        {
            Operands.add(new Ir_BoolConst(false));
        }

    }
    @Override
    public void accept(IRVisitor visitor){
        visitor.visit(this);
    }
    @Override
    public String To_String(){
        //<reg name> =  global <reg type(primary)> <init value>

        //or

        //<reg name> =  global <reg type(struct)> zeroinitializer
        if(Operands.size()>0)
            return "@%s = global %s %s".formatted(User.Name,((Pointer_Type)User.Type).To_Type.To_String(),Operands.get(0).To_String());
        else
            return "@%s = global %s zeroinitializer".formatted(User.Name,((Pointer_Type)User.Type).To_Type.To_String());
    }
}
