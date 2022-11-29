package IR.ir_inst;

import java.util.ArrayList;

import IR.ir_type.Void_Type;
import IR.ir_value.Ir_Value;
import utils.Init_Warning;

public class Call extends Ir_Inst{
    public Call(){
        new Init_Warning("Call_Inst");

    }
    public Call(Ir_Value func,ArrayList<Ir_Value> paras){
       Operands=new ArrayList<>();
       Operands.add(func);
       for(var each:paras)
       {
            Operands.add(each);
       }
       User=null;
    }
    public Call(Ir_Value user ,Ir_Value func,ArrayList<Ir_Value> paras){
        Operands=new ArrayList<>();
        Operands.add(func);
        for(var each:paras)
        {
            Operands.add(each);
        }
        User=user;
    }
    @Override
    public String To_String(){
        String str="";
            for(var i=1;i<Operands.size();++i)
            {
                if(i!=1)
                    str=str+",";
                str=str+Operands.get(i).Type.To_String();
                str=str+" ";
                str=str+Operands.get(i).To_String();
            }
            Ir_Value func=Operands.get(0);
        if(User==null)//Void Function
        {
            //call <func type=void> <func name> '('<para1>,<para2>...,<paran>')'
            
            assert(func.Type instanceof Void_Type);
            return "call {} {}({})".formatted(func.Type.To_String(),func.Name,str);
        }
        else
        {
            //<regname> = call <func type=void> <func name> '('<para1>,<para2>...,<paran>')'
            return "{} = call {} {}({})".formatted(User.To_String(),func.Type.To_String(),func.To_String(),str);
        }
    }
}
