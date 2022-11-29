package IR.ir_inst;

import java.util.ArrayList;


import IR.ir_value.Ir_Value;
import utils.Init_Warning;

public class Declare_Class extends Ir_Inst {
    public Declare_Class(){
        new Init_Warning("Declare_Class");

    }
    public Declare_Class(Ir_Value user,ArrayList<Ir_Value> members){
        User=user;
        Operands=new ArrayList<>(members);
    }
    @Override
    public String To_String(){
        //%<name> = type {Member_0,Member_1,...,Member_n}
        String str="";
        for(var i=0;i<Operands.size();++i)
        {
            if(i!=0)
                str+=",";
            str+=Operands.get(i).Type.To_String();
        }
        return "%s =type {%s}".formatted(User.Type.toString(),str);
    }
}
