package IR.ir_value;
import IR.ir_type.Void_Type;
import utils.FUCKER;
import utils.Init_Warning;
public class Ir_VoidConst extends Ir_Value {
    public Ir_VoidConst()
    {
        Type=new Void_Type();
    }
    @Override
    public int get_size(){
        new FUCKER("[Unsuggested Behaviour]:Get A Void type");
        return Type.get_size();
    }
    @Override
    public String To_String(){//??
        return "void";
    }
}
