package IR.ir_value;

import IR.ir_type.Ir_Type;
import utils.FUCKER;
import utils.Init_Warning;
public class Ir_NullConstant extends Ir_Value {
    public Ir_NullConstant(){
        new Init_Warning("Ir_NullConstant");
        Type=null;
    }
    public Ir_NullConstant(Ir_Type type)
    {
        Type=type;
    }
    @Override
    public int get_size(){
        if(Type==null)
            new FUCKER("[Unsuggested Behaviour]:Get A Null type");
        return Type.get_size();
    }
    @Override
    public String To_String(){//??
        if(Type==null)
            new FUCKER("[Unsuggested Behaviour]:To_String a Null");
        return "";
    }
}
