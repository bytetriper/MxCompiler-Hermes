package IR.ir_type;
import utils.*;
public class Void_Type extends Ir_Type {
    public Void_Type(){}
    @Override
    public int get_size(){
        new FUCKER("Undefined Behaviour:Get Type from Void");
        return 0;
    }
    @Override
    public String To_String(){
        return "void";
    }
}
