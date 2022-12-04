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
        if(!(user.Type instanceof Pointer_Type))
            new FUCKER("[Fatal Error]:Not Storing to a pointer,but %s %s instead".formatted(Store.Name,Store.Type.To_String()));
        User=user;
        Operands=new ArrayList<>();
        //Operands.add(user);
        Operands.add(Store);
    }
    @Override
    public String To_String(){
        //store <reg type> <reg name>,<pointer Type> <pointerName>
        Ir_Value store=Operands.get(0);
        return " store %s %s,%s %s".formatted(store.Type.To_String(),store.To_String(),User.Type.To_String(),User.To_String());
    }
}