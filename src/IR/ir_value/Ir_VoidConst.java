package IR.ir_value;
import IR.ir_type.Void_Type;
import utils.FUCKER;
import utils.Init_Warning;
public class Ir_VoidConst extends Ir_Value {
    public boolean val;
    public Ir_VoidConst(){
        new Init_Warning("Ir_BoolConstant");
        val=false;
        Type=new Void_Type();
    }
    public Ir_VoidConst(Boolean value)
    {
        val=value;
        Type=new Void_Type();
    }
    @Override
    public int get_size(){
        new FUCKER("[Unsuggested Behaviour]:Get A Void type");
        return Type.get_size();
    }
    @Override
    public String To_String(){//??
        new FUCKER("[Unsuggested Behaviour]:To_String a Void");
        return "";
    }
}
