package IR.ir_inst;

import java.util.ArrayList;

import IR.ir_type.Bool_Type;
import IR.ir_type.Int_Type;
import IR.ir_value.Ir_BoolConst;
import IR.ir_value.Ir_IntConstant;
import IR.ir_value.Ir_Value;
import utils.Init_Warning;

public class Global_Declare extends Ir_Inst {
    public Global_Declare(){
        new Init_Warning("Global_Declare");
    }
    public Global_Declare(Ir_Value user){
        assert(true);//
        User=user;
        Operands=new ArrayList<>();
        if(user.Type instanceof Int_Type)
        {
            Operands.add(new Ir_IntConstant(0));
        }
        else if(User.Type instanceof Bool_Type)
        {
            Operands.add(new Ir_BoolConst(true));
        }

    }
    @Override
    public String To_String(){
        //<reg name> =  global <reg type(primary)> <init value>

        //or

        //<reg name> =  global <reg type(struct)> zeroinitializer
        if(Operands.size()>0)
            return "@%s = global %s %s".formatted(User.Name,User.Type.toString(),Operands.get(0).To_String());
        else
            return "@%s = global %s zeroinitializer".formatted(User.Name,User.Type.To_String());
    }
}
