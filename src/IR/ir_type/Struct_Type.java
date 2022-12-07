package IR.ir_type;

import java.util.HashMap;

import astnode.defnode.ClassdefNode;
import utils.FUCKER;

public class Struct_Type extends Ir_Type {
    public HashMap<String,Integer> Mem_offset=new HashMap<>();
    public int struct_size;
    public String name;
    public Struct_Type(ClassdefNode tmpNode){
        int offset_cnt=0;//may differ from struct_size;
        int cnt=0;
        name=tmpNode.Name;
        for(var each:tmpNode.scope.Varmember.keySet())
        {
            //each:Vardef Node
            if(!tmpNode.scope.Varmember.get(each).type.equals("int")&&!tmpNode.scope.Varmember.get(each).type.equals("Bool"))
            {
                Mem_offset.put(each,cnt);
                cnt+=1;
            }
            else if(tmpNode.scope.Varmember.get(each).type.equals("int"))
            {
                Mem_offset.put(each,cnt);
                cnt+=1;
            }
            else{
                Mem_offset.put(each,cnt);
                cnt+=1;
            }
        }
        struct_size=offset_cnt;
    }
    public int Get_Offset(String member){
        if(!Mem_offset.containsKey(member))
            new FUCKER("[Fatal Error]:No member %s in the class %s you asked".formatted(member,name));
        return Mem_offset.get(member);
    }
    @Override
    public int get_size(){
        return struct_size/4;//byte,not bit
    }
    @Override
    public String To_String(){
        return "%struct."+name;
    }
}
