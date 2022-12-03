package IR.ir_value;

import IR.ir_type.Ir_Type;
import utils.Init_Warning;

public class Ir_Func extends Ir_Value {
    public Ir_Func(){
        new Init_Warning("Ir_Func");
    }
    public Ir_Func(String Funcname,Ir_Type functype){
        Name=Funcname;
        Type=functype;
    }
    @Override
    public int get_size(){
        new Init_Warning("[Maybe Error]:Why try to get a function;s size?");
        return -1;
    }
    @Override
    public String To_String(){
        return "@%s".formatted(Name);
    }
}
