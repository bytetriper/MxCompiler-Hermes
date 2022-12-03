package IR.ir_type;

import java.lang.ProcessBuilder.Redirect.Type;

import utils.FUCKER;

public class Null_Type extends Ir_Type {
    public Null_Type(){
        
    }
    @Override
    public int get_size()
    {
        new FUCKER("[fatal error maybe?]:try to get size of a null");
        return -1;
    }
    @Override
    public String To_String(){
        return "null";
    }
}
