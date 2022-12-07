package IR.ir_value;
import utils.Init_Warning;
import IR.ir_type.Ir_Type;
public class Ir_GlobalReg extends Ir_Value {
    public Ir_GlobalReg(){
        new Init_Warning("Ir_GlobalReg");
    }
    public Ir_GlobalReg(String name,Ir_Type type)
    {
        Name=name;
        Type=type;
    }
    @Override
    public int get_size(){
        return Type.get_size();
    }
    @Override
    public String To_String(){
        return "@%s".formatted(Name);
    }
}
