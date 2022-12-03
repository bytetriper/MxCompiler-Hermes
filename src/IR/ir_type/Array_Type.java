package IR.ir_type;

import utils.Init_Warning;

public class Array_Type extends Ir_Type {
    public int length;
    public Ir_Type To_Type;
    public Array_Type(){
        new Init_Warning("Array_Type");
        length=0;
        To_Type=null;
    }
    public Array_Type(int len,Ir_Type type){
        length=len;
        To_Type=type;
    }
    @Override
    public int get_size(){
        return length*To_Type.get_size();
    }
    @Override
    public String To_String(){
        return "[%s x %s]".formatted(length,To_Type.To_String());
    }
}
