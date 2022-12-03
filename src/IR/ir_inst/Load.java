package IR.ir_inst;
import java.util.ArrayList;

import IR.ir_type.*;
import IR.ir_value.Ir_Value;
import utils.FUCKER;
import utils.Init_Warning;
public class Load extends Ir_Inst {
    public Load(){
        new Init_Warning("Load_Inst");
        User=null;
    }
    public Load(Ir_Value user,Ir_Value Store){
        super();
        if(!(Store.Type instanceof Pointer_Type))
            new FUCKER("[Fatal Error]:Not loading from a pointer");
        User=user;
        Operands=new ArrayList<>();
        Operands.add(Store);
    }
    @Override
    public String To_String(){
        //%reg=Load <reg type>,<pointer Type> %<pointerName>
        return " %s=load %s,%s %s".formatted(User.To_String(),User.Type.To_String(),Operands.get(0).Type.To_String(),Operands.get(0).To_String());
    }
}
