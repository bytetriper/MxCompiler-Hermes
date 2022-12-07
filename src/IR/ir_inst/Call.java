package IR.ir_inst;

import java.util.ArrayList;

import IR.ir_type.Ir_Type;
import IR.ir_type.Void_Type;
import IR.ir_value.Ir_Func;
import IR.ir_value.Ir_Value;
import utils.Init_Warning;

public class Call extends Ir_Inst {
    Ir_Value Func;

    public Call() {
        new Init_Warning("Call_Inst");

    }

    public Call(Ir_Func func, ArrayList<Ir_Value> paras) {
        Operands = new ArrayList<>();
        Func = func;
        for (var each : paras) {
            Operands.add(each);
        }
        User = null;
    }

    public Call(Ir_Value user, Ir_Func func, ArrayList<Ir_Value> paras) {
        Operands = new ArrayList<>();
        Func = func;
        for (var each : paras) {
            Operands.add(each);
        }
        User = user;
    }

    @Override
    public String To_String() {
        //System.out.println(Func.To_String());
        String str = "";
        for (var i = 0; i < Operands.size(); ++i) {
            str = str + Operands.get(i).Type.To_String();
            str = str + " ";
            str = str + Operands.get(i).To_String();
            if (i != Operands.size() - 1)
                str = str + ",";
        }
        if (User == null)// Void Function
        {
            // call <func type=void> <func name> '('<para1>,<para2>...,<paran>')'

            assert (Func.Type instanceof Void_Type);
            return "call %s %s(%s)".formatted(Func.Type.To_String(), Func.To_String(), str);
        } else {
            // <regname> = call <func type> <func name> '('<para1>,<para2>...,<paran>')'
            return "%s = call %s %s(%s)".formatted(User.To_String(), Func.Type.To_String(), Func.To_String(), str);
        }
    }
}
