package IR.ir_value;

import IR.ir_type.Int_Type;
import utils.Init_Warning;

public class Ir_IntConstant extends Ir_Value{
    public int val;
    public Ir_IntConstant(){
        new Init_Warning("Ir_IntConstant");
        val=0;
        Type=new Int_Type(32,false);
    }
    public Ir_IntConstant(int value)
    {
        val=value;
        Type=new Int_Type(32,false);
    }
    @Override
    public int get_size(){
        return Type.get_size();
    }
    @Override
    public String To_String(){
        return "%s".formatted(val);
    }
}
