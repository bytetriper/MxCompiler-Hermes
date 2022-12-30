package IR.ir_inst;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import IR.ir_value.Ir_Value;
import utils.FUCKER;
import utils.Init_Warning;

public class BinaryOp extends Ir_Inst {
    public String Op;
    boolean choice;

    public BinaryOp() {
        new Init_Warning("Ir_BinaryOp");
    }

    private static HashMap<String, String> OpMap = new HashMap<>() {
        {
            put("+", "add");
            put("-", "sub");
            put("*", "mul");
            put("/", "sdiv");
            put("<<", "shl");
            put(">>", "ashr");
            put("&", "and");
            put("|", "or");
            put("^", "xor");
            put("%%", "srem");
            put("||", "or");
            put("&&", "and");
            put("%", "urem");
        }
    };
    private static HashMap<String, String> OtherOpMap = new HashMap<>() {
        {
            put(">", "sgt");
            put(">=", "sge");
            put("<", "slt");
            put("<=", "sle");
            put("!=", "ne");
            put("==", "eq");
        }
    };

    public BinaryOp(Ir_Value user, String op, Ir_Value Left, Ir_Value Right) {
        if (OpMap.containsKey(op)) {
            choice = false;
            op = OpMap.get(op);
        } else if (OtherOpMap.containsKey(op)) {
            // TODO EQUAL TYPE
            choice = true;
            op = OtherOpMap.get(op);
        } else
            new FUCKER("[Fatal Error]Init Binary_Op with illegal Op %s".formatted(op));
        User = user;
        Op = op;
        Operands = new ArrayList<>();
        Operands.add(Left);
        Operands.add(Right);
    }

    @Override
    public String To_String() {
        // <reg> = <Op type> <reg type> <left name>,<right name>
        // or
        // <reg> = icmp <Op Inst> <type(left==right)> <left name>,<right name>
        //or
        // Load(user,value)
        Ir_Value left = Operands.get(0);
        Ir_Value right = Operands.get(1);
        if (choice) {
            return "%s = icmp %s %s %s,%s".formatted(User.To_String(),Op,left.Type.To_String(),left.To_String(),right.To_String());
        } else {
            return "%s = %s %s %s,%s".formatted(User.To_String(), Op, User.Type.To_String(), left.To_String(),
                    right.To_String());
        }
    }
}
