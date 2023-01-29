package IR.ir_value;
import IR.ir_type.Bool_Type;
import IR.ir_type.Int_Type;
import utils.Init_Warning;
public class Ir_BoolConst extends Ir_Value {
    public boolean val;

    public Ir_BoolConst(){
        new Init_Warning("Ir_BoolConstant");
        val=false;
        Type=new Bool_Type();
    }
    public Ir_BoolConst(Boolean value)
    {
        val=value;
        Type=new Int_Type(1,true);
    }
    @Override
    public int get_size(){
        return Type.get_size();
    }
    @Override
    public String To_String(){//??
        return "%s".formatted(val?"1":"0");//?
    }
}
