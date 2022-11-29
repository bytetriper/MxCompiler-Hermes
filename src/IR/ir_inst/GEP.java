package IR.ir_inst;

import java.util.ArrayList;

import IR.ir_type.Int_Type;
import IR.ir_value.Ir_Value;
import utils.Init_Warning;

public class GEP extends Ir_Inst{
    public GEP(){
        new Init_Warning("GEP_Inst");
    }
    public GEP(Ir_Value user,Ir_Value Target,ArrayList<Ir_Value> offset)
    {
        User=user;
        Operands=new ArrayList<>();
        Operands.add(Target);
        for(var each:offset)
        {
            Operands.add(each);
        }
    }
    @Override
    public String To_String(){
        //<user name> = getelementptr <user Type>,<Target Type> <Target name>,<offset1 type> <offset1 val>,....,<offsetn type> <offsen VAl>
        String str="";
        for(var i=1;i<Operands.size();++i)
        {
            if(i!=1)
                str+=",";
            assert(Operands.get(i).Type instanceof Int_Type);//Int,at least
            str+=Operands.get(i).To_String();
            str+=" ";
            str+=Operands.get(i).To_String();
        }
        Ir_Value Target=Operands.get(0);
        return "{} = getelementptr {},{} {},{}".formatted(User.Name,User.Type.To_String(),Target.Type.To_String(),Target.Name,str);
    }
}
