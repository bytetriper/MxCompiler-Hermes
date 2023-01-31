package IR;

import java.lang.ProcessBuilder.Redirect.Type;
import java.util.ArrayList;
import java.util.jar.Attributes.Name;

import IR.ir_inst.Alloca;
import IR.ir_inst.Bitcast;
import IR.ir_inst.Br;
import IR.ir_inst.Call;
import IR.ir_inst.Load;
import IR.ir_inst.Ret;
import IR.ir_inst.Store;
import IR.ir_inst.Trunc;
import IR.ir_inst.Uncond_Br;
import IR.ir_type.Int_Type;
import IR.ir_type.Ir_Type;
import IR.ir_type.Pointer_Type;
import IR.ir_type.Void_Type;
import IR.ir_value.Ir_Func;
import IR.ir_value.Ir_IntConstant;
import IR.ir_value.Ir_Reg;
import IR.ir_value.Ir_Value;
import IR.ir_value.Ir_VoidConst;
import utils.FUCKER;
import utils.Scope;
public class FuncBlock extends Ir_Value {
    public ArrayList<BasicBlock> blks;
    public BasicBlock Entry, Exit;
    static int retcnt = 0;
    public ArrayList<Ir_Value> Parameter;
    public Ir_Reg retval;
    public Ir_Value This;
    public Scope FuncScope;
    public FuncBlock(Ir_Func func, ArrayList<Ir_Value> Paras, Scope CurrentScope) {
        Type = func.Type;
        Ir_Type rType = IRBuilder.is_Bool_Type(Type) ? new Int_Type(32,true) : Type;
        Name = func.Name;
        Parameter = new ArrayList<>(Paras);
        blks = new ArrayList<>();
        Entry = new BasicBlock(this, "Entry");// Can Modify
        retval = new Ir_Reg(".retval.p", new Pointer_Type(rType));
        Exit = new BasicBlock(this, "Exit");// Can Modify
        for (var each : Paras)// SP for value type int and bool (need to create a pointer to save the value)
        {
            Ir_Reg para_addr = new Ir_Reg("%s_addr".formatted(each.Name), new Pointer_Type(each.Type));
            Entry.add_inst(new Alloca(para_addr));
            Entry.add_inst(new Store(para_addr, each));
            //System.out.println("Name:%s para:%s type::%s".formatted(each.Name,para_addr.To_String(),para_addr.Type.To_String()));
            CurrentScope.Push_Value(each.Name, para_addr);
        }
        if (func.Type instanceof Void_Type) {
            Exit.end_block_with(new Ret(new Ir_VoidConst()));
        } else {
            Entry.add_inst(new Alloca(retval));
            Ir_Reg return_load = new Ir_Reg(".retval", Type);
            if (Type instanceof Int_Type && ((Int_Type) Type).size == 1) {
                Ir_Reg mid = new Ir_Reg(".retval.Tobool", rType);
                Exit.add_inst(new Load(mid, retval));
                Exit.add_inst(new Trunc(return_load, mid));
            } else {
                Exit.add_inst(new Load(return_load, retval));
            }
            Exit.end_block_with(new Ret(return_load));
        }
        FuncScope=CurrentScope;
    }

    public void Add_Alloca(Alloca inst) {
        Entry.add_inst(inst);
    }

    public void Add_Block(BasicBlock tmpblock) {
        blks.add(tmpblock);
    }

    public Ir_Value Get_This() {// do not guarantee "This" exists or even have any parameters
        if (Parameter.size() == 0)
            return null;
        return FuncScope.Var_Value.get("This");
    }

    public void End_Func() {
        BasicBlock tmp = blks.get(0);
        Uncond_Br Jump_Ptr = new Uncond_Br(tmp);
        // Uncond_Br Jump_End=new Uncond_Br(Exit);
        Entry.end_block_with(Jump_Ptr);
        // tmpend.add_inst(Jump_End);
    }

    @Override
    public int get_size() {
        new FUCKER("[Fatal Error]:try to get a FuncBlock's size");
        return -1;
    }

    @Override
    public String To_String() {
        // declare <type> <@Name> '('<type1> <name1>,<type2> <name2>... ')'{
        // block_to_string()
        // }
        String str = "define %s @%s".formatted(Type.To_String(), Name);
        str += '(';
        // Ir_Reg this_reg=new Ir_Reg("this", Type);
        for (int i = 0; i < Parameter.size(); i++) {
            str += "%s %s".formatted(Parameter.get(i).Type.To_String(), Parameter.get(i).To_String());
            if (i != Parameter.size() - 1)
                str += ",";
        }
        str += ")";
        str += "{\n";
        str += Entry.To_String() + "\n";
        for (var each : blks) {
            // System.out.println(each.To_String()+"\n");
            str += each.To_String() + "\n";
        }
        str += Exit.To_String() + "\n";
        str += "}\n";
        return str;
    }
}
