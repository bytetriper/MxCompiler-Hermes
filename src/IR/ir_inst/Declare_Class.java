package IR.ir_inst;

import java.lang.ProcessBuilder.Redirect.Type;
import java.sql.Types;
import java.util.ArrayList;
import java.util.jar.Attributes.Name;
import IR.ir_type.*;
import IR.ir_value.Ir_Value;
import utils.Init_Warning;
import IR.IRVisitor;

public class Declare_Class extends Ir_Inst {
    public String s;
    public ArrayList<String> Types;
    public Declare_Class(){
        new Init_Warning("Declare_Class");
    }
    public Declare_Class(String typename,ArrayList<String> members){
        User=null;
        s=typename;
        //Operands=new ArrayList<>(members);
        Types=new ArrayList<>(members);
    }
    @Override
    public void accept(IRVisitor visitor){
        visitor.visit(this);
    }
    public String To_String(){
        //%<name> = type {Member_0,Member_1,...,Member_n}
        String str="";
        for(var i=0;i<Types.size();++i)
        {
            str+="%s ".formatted(Types.get(i));
            if(i!=Types.size()-1)
                str+=",";
        }
        return "%s =type {%s}".formatted(s,str);
    }
}
