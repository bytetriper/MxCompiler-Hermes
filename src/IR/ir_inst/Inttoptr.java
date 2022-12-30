package IR.ir_inst;

import java.util.ArrayList;

import IR.ir_type.Int_Type;
import IR.ir_value.Ir_Value;
import utils.Init_Warning;

public class Inttoptr extends Ir_Inst {
    public Inttoptr(){
        new Init_Warning("Ptrtoint_inst");
    }
    public Inttoptr(Ir_Value user,Ir_Value Int){
        Operands=new ArrayList<>();
        User=user;
        Operands.add(Int);
        assert(Int.Type instanceof Int_Type);
    }
    @Override
    public String To_String(){
        //<reg> = inttoptr <Int type> <Int> to <reg type>
        Ir_Value Int=Operands.get(0);
        return "%s = inttoptr %s %s to %s".formatted(User.To_String(),Int.Type.To_String(),Int.To_String(),User.Type.To_String());
    }
}
