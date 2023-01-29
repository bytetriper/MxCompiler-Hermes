package IR.ir_type;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;

import astnode.defnode.ClassdefNode;
import utils.FUCKER;

public class Struct_Type extends Ir_Type {
    public HashMap<String,Integer> Mem_offset=new HashMap<>();
    public ArrayList<Integer> Mem_Cnt=new ArrayList<>();
    public int struct_size;
    public String name;
    public Struct_Type(ClassdefNode tmpNode){
        int offset_cnt=0;//Asm Struct size,may differ from IR struct_size;
        int cnt=0;
        name=tmpNode.Name;
        for(var each:tmpNode.scope.Varmember.keySet())
        {
            //each:Vardef Node
            if(!tmpNode.scope.Varmember.get(each).type.equals("int")&&!tmpNode.scope.Varmember.get(each).type.equals("Bool"))
            {
                Mem_offset.put(each,cnt);
                Mem_Cnt.add(offset_cnt);
                cnt+=1;
                offset_cnt+=4;
            }
            else if(tmpNode.scope.Varmember.get(each).type.equals("int"))
            {
                Mem_offset.put(each,cnt);
                Mem_Cnt.add(offset_cnt);
                cnt+=1;
                offset_cnt+=4;
            }
            else{
                Mem_offset.put(each,cnt);
                Mem_Cnt.add(4);
                offset_cnt+=4;
            }
        }
        struct_size=offset_cnt;
    }
    public int Get_Offset(String member){
        if(!Mem_offset.containsKey(member))
            new FUCKER("[Fatal Error]:No member %s in the class %s you asked".formatted(member,name));
        return Mem_offset.get(member);
    }
    public int Get_Offset(int idx){
        if(idx>Mem_Cnt.size())
            new FUCKER("[Fatal Error]:Idx too large for type %s".formatted(name));
        return Mem_Cnt.get(idx);
    }
    @Override
    public int get_size(){
        return struct_size;//byte,not bit
    }
    @Override
    public String To_String(){
        return "%struct."+name;
    }
}
