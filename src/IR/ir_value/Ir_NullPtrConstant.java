package IR.ir_value;

import IR.ir_type.Ir_Type;
import IR.ir_type.Null_Type;
import IR.ir_type.Pointer_Type;
import utils.FUCKER;
public class Ir_NullPtrConstant extends Ir_Value {
    public Pointer_Type Type;
    public Ir_NullPtrConstant()
    {
        Type=new Pointer_Type(new Null_Type());
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
        return "null";
    }
}
