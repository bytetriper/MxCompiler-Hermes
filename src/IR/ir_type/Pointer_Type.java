package IR.ir_type;

import utils.Init_Warning;

public class Pointer_Type extends Ir_Type{
    public Ir_Type To_Type;
    public Pointer_Type(){
        new Init_Warning("Ir_Type");
    }
    public Pointer_Type(Ir_Type to){
        To_Type=to;
    }
    @Override
    public int get_size(){
        return 8;
    }
    @Override
    public String To_String(){
        return To_Type.To_String()+"*";
    }
}
