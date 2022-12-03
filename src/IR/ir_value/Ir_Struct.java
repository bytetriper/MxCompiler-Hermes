package IR.ir_value;

import java.lang.ProcessBuilder.Redirect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.jar.Attributes.Name;

import IR.ir_type.Ir_Type;
import IR.ir_type.Struct_Type;
import astnode.defnode.ClassdefNode;
import utils.Init_Warning;

public class Ir_Struct extends Ir_Value {
    public ArrayList<Ir_Value> Member;
    public Struct_Type Type(){
        return (Struct_Type)Type;
    }
    public Ir_Struct(){
        new Init_Warning("Ir_Struct");
    }
    public Ir_Struct(ClassdefNode tmpnode){
        Member=new ArrayList<>();
        Type=new Struct_Type(tmpnode);
        HashMap<String,Integer> tmplist=((Struct_Type)Type).Mem_offset;
        for(var each:tmplist.keySet())
        {
            Member.add(new Ir_NullPtrConstant());
        }
    }
    @Override
    public int get_size(){
        return Type().get_size();
    }
    @Override
    public String To_String(){
        return "";
    }
}
