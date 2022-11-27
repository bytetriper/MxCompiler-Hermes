package IR.ir_inst;
import utils.FUCKER;
import utils.Init_Warning;
import java.util.ArrayList;
import IR.ir_value.*;
import IR.ir_type.Pointer_Type;
public class Store extends Ir_Inst {
    public Store(){
        new Init_Warning("Store_inst");
    }
    public Store(Ir_Value user,Ir_Value Store){
        super();
        if(!(Store.Type instanceof Pointer_Type))
            new FUCKER("[Fatal Error]:Not Storing to a pointer,but {} {} instead".formatted(Store.Name,Store.Type.To_String()));
        User=user;
        Operands=new ArrayList<>();
        Operands.add(Store);
    }
    @Override
    public String To_String(){
        //store <reg type> <reg name>,<pointer Type> <pointerName>
        return " store {} {},{} {}".formatted(User.Type.toString(),User.To_String(),Operands.get(0).Type.To_String(),Operands.get(0).To_String());
    }
}