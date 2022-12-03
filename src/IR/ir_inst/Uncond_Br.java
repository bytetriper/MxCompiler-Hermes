package IR.ir_inst;

import java.util.ArrayList;

import IR.BasicBlock;
import IR.ir_type.Label_Type;
import IR.ir_value.Ir_Value;
import utils.FUCKER;
import utils.Init_Warning;

public class Uncond_Br extends Ir_Inst{
    public Uncond_Br(){
        new Init_Warning("Uncond_Br");
    }
    public Uncond_Br(BasicBlock Label1)
    {
        super();
        User=null;
        Operands=new ArrayList<>();
        if(!(Label1.Type instanceof Label_Type))
            new FUCKER("[fatal error]:At Br (user:null) Label1 not Label type,but instead %s ".formatted(Label1.Type.To_String()));
        Operands.add(Label1);
    }
    @Override
    public String To_String(){
        //br label(<label1 type>) <label1 name>
        Ir_Value l1=Operands.get(0);
        return "br %s %%%s".formatted(l1.Type.To_String(),l1.Name);
    }
}
