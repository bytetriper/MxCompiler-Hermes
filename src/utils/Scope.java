package utils;

import java.util.ArrayList;
import java.util.HashMap;

import javax.management.RuntimeErrorException;

import IR.BasicBlock;
import IR.ir_inst.Ir_Inst;
import IR.ir_value.Ir_Func;
import IR.ir_value.Ir_Value;
import astnode.basicnode.TypeNode;
import astnode.defnode.*;
import astnode.stmtsnode.StmtNode;

public class Scope {// A Class for suite that is not main suite
    public HashMap<String, SingleAssignNode> Varmember;
    public HashMap<String, FuncdefNode> Funcmember;
    public HashMap<String, ClassdefNode> Classmember;
    public HashMap<String, Ir_Value> Var_Value;
    public BasicBlock Start_Block, End_Block;
    public Scope faScope = null;
    public StmtNode belongNode;// Func or Lambda
    public int cnter = 0;
    public boolean isclass = false, ismain = false;
    public StmtNode isloop = null;

    // Members is impossible to be un-var
    public Scope() {
        Varmember = new HashMap<>();
        Funcmember = new HashMap<>();
        Classmember = new HashMap<>();
        Var_Value = new HashMap<>();
    }

    public void Push_Value(String name, Ir_Value val) {
        assert (!(Var_Value.containsKey(name)));
        Var_Value.put(name, val);
    }

    public boolean Judge_Value_InClass(String name) {
        //System.out.println("[Juding]");
        
        if (Var_Value.containsKey(name)) {
            //print();
            return isclass;
        }
        if (faScope != null)
            return faScope.Judge_Value_InClass(name);
        new FUCKER("[Fatal Error]:Var %s doesn't exist in any Scope".formatted(name));
        return false;
    }

    public Ir_Value Find_Value(String name) {
        //System.out.println(faScope);
        if (Var_Value.containsKey(name)) {
            return Var_Value.get(name);
        }
        if (faScope != null)
            return faScope.Find_Value(name);
        new FUCKER("[Fatal Error]:Var %s doesn't exist in any Scope".formatted(name));
        return new Ir_Func();// Some Trash sentence to meet Java's requirement...
    }

    public void print() {
        for (String key : Varmember.keySet()) {
            System.out.println(key);
        }
        for (String key : Funcmember.keySet()) {
            System.out.println(key);
        }
        for (String key : Classmember.keySet()) {
            System.out.println(key);
        }
    }

    public FuncdefNode Find_Func(String name) {
        if (InFuncScope(name))
            return Funcmember.get(name);
        if (faScope != null)
            return faScope.Find_Func(name);
        return null;
    }

    public boolean InVarScope(String name) {
        return Varmember.containsKey(name);
    }

    public boolean InFuncScope(String name) {
        return Funcmember.containsKey(name);
    }

    public boolean InClassScope(String name) {
        return Classmember.containsKey(name);
    }

    public boolean InScope(String name) {
        return InVarScope(name) | InFuncScope(name) | InClassScope(name);
    }

    public TypeNode Find_Type(String name) {
        if (InVarScope(name)) {
            return Varmember.get(name).type;
        }
        if (faScope == null) {
            throw new RuntimeException("[Fatal error]Find Type Fail in FIND_TYPE_VAR");
            // return null;
        }
        return faScope.Find_Type(name);
    }

    public TypeNode Find_Func_Type(String name) {
        if (InFuncScope(name))
            return Funcmember.get(name).type;
        if (faScope == null)
            return null;
        return faScope.Find_Func_Type(name);
    }

    public boolean HasMethod(String name) {
        if (InFuncScope(name))
            return true;
        if (faScope != null)
            return faScope.HasMethod(name);
        return false;
    }

    public boolean HasValue(String name) {
        if (InVarScope(name))
            return true;
        if (faScope != null)
            return faScope.HasValue(name);
        return false;
    }

    public void Push(String name, DefNode node) {
        cnter++;
        if (InClassScope(name))
            throw new RuntimeException(String.format("[Symbol Collecting]%s collides with Class Name", name));
        if (node instanceof SingleAssignNode) {
            if (!InVarScope(name)) {
                Varmember.put(name, (SingleAssignNode) node);
                return;
            }
            throw new RuntimeException(String.format("[Symbol Collect]Var %s Alreay Exists", name));
        }
        if (node instanceof ClassdefNode) {
            if (!InClassScope(name)) {
                Classmember.put(name, (ClassdefNode) node);
                return;
            }
            throw new RuntimeException(String.format("[Symbol Collect]Class %s Alreay Exists", name));
        }
        if (node instanceof FuncdefNode) {
            if (!InFuncScope(name)) {
                Funcmember.put(name, (FuncdefNode) node);
                return;
            }
            throw new RuntimeException(String.format("[Symbol Collect]Func %s Alreay Exists", name));
        }
        throw new RuntimeException("[Fatal Error] Unexpected type when Scoping");
    }
}
