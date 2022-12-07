package IR.ir_value;
import IR.ir_type.Array_Type;
import IR.ir_type.Int_Type;
import utils.Init_Warning;
public class Ir_StringConstant extends Ir_Value{
    public int[] val;
    public Ir_StringConstant(){
        new Init_Warning("Ir_StringConstant");
        val=null;
        Type=new Array_Type();
    }
    public Ir_StringConstant(int[] value)
    {
        val=value;
        //Type=new Array_Type(value.length(),new Int_Type(8));
    }
    @Override
    public int get_size(){
        return Type.get_size();
    }
    @Override
    public String To_String(){//??
        return "%s".formatted(val);//?
    }
}
