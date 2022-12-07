package IR.ir_inst;

import java.util.ArrayList;

import IR.ir_type.Pointer_Type;
import IR.ir_value.Ir_Value;
import utils.Init_Warning;

public class Global_DeclareVar extends Ir_Inst {//Only used For Array
    public Global_DeclareVar(){
        new Init_Warning("Global_DeclareVar_Inst");
    }
    public Global_DeclareVar(Ir_Value user, ArrayList<Ir_Value> val){
        Operands=new ArrayList<>(val);
        User=user;
    }
    @Override
    public String To_String(){
        //<(global)reg name> = private constant <user Type>.ToType [(<val type> <val value>)*] 
        String str="";
        for(int i=0;i<Operands.size();++i)
        {
            str+="%s %s".formatted(Operands.get(i).Type.To_String(),Operands.get(i).To_String());
            if(i!=Operands.size()-1)
                str+=",";
        }
        return "%s = private constant %s [%s]".formatted(User.To_String(),((Pointer_Type)User.Type).To_Type.To_String(),str);
    }
}
