package IR.ir_value;

import IR.ir_type.Ir_Type;
import IR.ir_type.Pointer_Type;
import utils.FUCKER;
import utils.Init_Warning;
public class Ir_NullPtrConstant extends Ir_Value {
    public Pointer_Type Type;
    public Ir_NullPtrConstant(){
        new Init_Warning("Ir_NullConstant");
        Type=new Pointer_Type();
    }
    public Ir_NullPtrConstant(Ir_Type type)
    {
        Type=new Pointer_Type();
        Type.To_Type=type;
    }
    @Override
    public int get_size(){
        if(Type.To_Type==null)
            new FUCKER("[Unsuggested Behaviour]:Get A NullPtr type");
        return Type.get_size();
    }
    @Override
    public String To_String(){//??
        if(Type.To_Type==null)
            new FUCKER("[Unsuggested Behaviour]:To_String a Null");
        return "";
    }
}
