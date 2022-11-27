package IR.ir_value;

import IR.ir_type.Ir_Type;
import utils.Init_Warning;

public class Ir_Reg extends Ir_Value{
    public Ir_Reg(){
        new Init_Warning("Ir_Reg");
    }
    public Ir_Reg(String name,Ir_Type type)
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
        return "%{}".formatted(Name);
    }
}
