package IR.ir_value;

import IR.ir_type.Int_Type;
import IR.ir_type.Ir_Type;
import IR.ir_type.Null_Type;
import IR.ir_type.Pointer_Type;
import utils.FUCKER;
public class Ir_NullPtrConstant extends Ir_Value {
    public Pointer_Type Type;
    public Ir_NullPtrConstant()
    {
        Type=new Pointer_Type(new Int_Type(32,false));//i32* for init
    }
    @Override
    public int get_size(){
        return Type.get_size();
    }
    @Override
    public String To_String(){
        //null
        return "null".formatted();
    }
}
