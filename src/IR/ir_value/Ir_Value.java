package IR.ir_value;

import IR.ir_type.Ir_Type;
import utils.FUCKER;

public abstract class Ir_Value {
    public String Name;
    public Ir_Type Type;
    public int get_size(){
        new FUCKER("[fatal error]:Unoverrode Get_size():Ir_Value");
        return 0;
    }
    public String To_String(){
        new FUCKER("[fatal error]:Unoverrode To_String():Ir_Value");
        return "";
    }
}
