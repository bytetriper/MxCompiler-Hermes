package IR.ir_type;

import java.util.HashMap;

import astnode.defnode.ClassdefNode;
import utils.FUCKER;

public class Struct_Type extends Ir_Type {
    public HashMap<String,Integer> Mem_idx=new HashMap<>();
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
                Mem_offset.put(each,offset_cnt);
                Mem_idx.put(each,cnt);
                cnt+=1;
                offset_cnt+=32;
            }
            else if(tmpNode.scope.Varmember.get(each).type.equals("int"))
            {
                Mem_offset.put(each,offset_cnt);
                Mem_idx.put(each,cnt);
                cnt+=1;
                offset_cnt+=32;
            }
            else{
                Mem_offset.put(each,offset_cnt);
                Mem_idx.put(each,cnt);
                cnt+=1;
                offset_cnt+=1;
            }
        }
        struct_size=offset_cnt;
    }
    public int Get_Idx(String member){
        if(!Mem_idx.containsKey(member))
            new FUCKER("[Fatal Error]:No member {} in the class {} you asked".formatted(member));
        return Mem_idx.get(member);
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
