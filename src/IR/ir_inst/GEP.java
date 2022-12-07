package IR.ir_inst;

import java.lang.annotation.Target;
import java.util.ArrayList;

import IR.ir_type.Int_Type;
import IR.ir_type.Pointer_Type;
import IR.ir_value.Ir_Value;
import utils.Init_Warning;

public class GEP extends Ir_Inst{
    public GEP(){
        new Init_Warning("GEP_Inst");
    }
    public GEP(Ir_Value user,Ir_Value Target,Ir_Value offset)
    {
        assert(user.Type instanceof Pointer_Type);
        assert(Target.Type instanceof Pointer_Type);
        User=user;
        Operands=new ArrayList<>();
        Operands.add(Target);
        Operands.add(offset);
    }
    @Override
    public String To_String(){
        //<user name> = getelementptr <user Type>,<Target Type> <Target name>,i32 0,<offset1 type> <offset1 val>,....,<offsetn type> <offsen VAl>
        //                                                                  To get Value from Struct
        String str="";
        for(var i=1;i<Operands.size();++i)
        {
            assert(Operands.get(i).Type instanceof Int_Type);//Int,at least
            str+=Operands.get(i).Type.To_String();
            str+=" ";
            str+=Operands.get(i).To_String();
        }

        Ir_Value Target=Operands.get(0);
        return "%s = getelementptr %s,%s %s,i32 0,%s".formatted(User.To_String(),((Pointer_Type)Target.Type).To_Type.To_String(),Target.Type.To_String(),Target.To_String(),str);
    }
}
