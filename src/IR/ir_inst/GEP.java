package IR.ir_inst;

import java.lang.annotation.Target;
import java.util.ArrayList;

import IR.ir_type.Int_Type;
import IR.ir_type.Pointer_Type;
import IR.ir_type.Struct_Type;
import IR.ir_value.Ir_Value;
import utils.Init_Warning;

public class GEP extends Ir_Inst{
    public GEP(){
        new Init_Warning("GEP_Inst");
    }
    public GEP(Ir_Value user,Ir_Value Target,ArrayList<Ir_Value> offset)
    {
        assert(user.Type instanceof Pointer_Type);
        assert(Target.Type instanceof Pointer_Type);
        User=user;
        Operands=new ArrayList<>();
        Operands.add(Target);
        for(var each:offset)
        {
            Operands.add(each);
        }
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
        //(for struct)<user name> = getelementptr <Target Type.To_type>,<Target Type=Pointer Type> <Target name>,i32 0,<offset type> <offset val>
        //                                                                                 To get Value from Struct
        //or
        //(for array)<user name> = getelementptr <user type>,<Target Type=Pointer Type> <Target Name>,<offset type> <offset val>
        String str="";
        for(var i=1;i<Operands.size();++i)
        {
            assert(Operands.get(i).Type instanceof Int_Type);//Int,at least
            str+=Operands.get(i).Type.To_String();
            str+=" ";
            str+=Operands.get(i).To_String();
        }
        Ir_Value Target=Operands.get(0);
        if(((Pointer_Type)Target.Type).To_Type instanceof Struct_Type)
            return "%s = getelementptr %s,%s %s,i32 0,%s".formatted(User.To_String(),((Pointer_Type)Target.Type).To_Type.To_String(),Target.Type.To_String(),Target.To_String(),str);
        else
            return "%s = getelementptr %s,%s %s,%s".formatted(User.To_String(),((Pointer_Type)User.Type).To_Type.To_String(),Target.Type.To_String(),Target.To_String(),str);
    }
}
