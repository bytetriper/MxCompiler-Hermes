package IR;

import astnode.ASTVisitor;

import java.lang.ProcessBuilder.Redirect.Type;
import java.rmi.Naming;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.jar.Attributes.Name;

import IR.ir_inst.Alloca;
import IR.ir_inst.Br;
import IR.ir_inst.Call;
import IR.ir_inst.Declare_Class;
import IR.ir_inst.GEP;
import IR.ir_inst.Global_Declare;
import IR.ir_inst.BinaryOp;
import IR.ir_inst.Ir_Inst;
import IR.ir_inst.Load;
import IR.ir_inst.Ret;
import IR.ir_inst.Store;
import IR.ir_inst.Uncond_Br;
import IR.ir_type.Array_Type;
import IR.ir_type.Int_Type;
import IR.ir_type.Ir_Type;
import IR.ir_type.Null_Type;
import IR.ir_type.Pointer_Type;
import IR.ir_type.Struct_Type;
import IR.ir_type.Void_Type;
import IR.ir_value.Ir_BoolConst;
import IR.ir_value.Ir_Func;
import IR.ir_value.Ir_IntConstant;
import IR.ir_value.Ir_NullPtrConstant;
import IR.ir_value.Ir_Reg;
import IR.ir_value.Ir_StringConstant;
import IR.ir_value.Ir_Value;
import astnode.*;
import astnode.basicnode.*;
import astnode.exprnode.*;
import astnode.defnode.*;
import astnode.stmtsnode.*;
import utils.FUCKER;
import utils.GScope;
import utils.Scope;

public class IRBuilder implements ASTVisitor {
    public GScope GlobalScope;
    public HashMap<String, Ir_Type> Rename;
    public ArrayList<FuncBlock> Blocks;
    public BasicBlock CurrentBlock;
    public FuncBlock CurrentFunc;
    public ArrayList<Ir_Inst> Init_Declare;
    public Scope currentScope;

    public void DEBUG(String msg){
        System.out.println(msg);
    }
    public void New_Block() {
        assert (CurrentFunc != null);
        CurrentBlock = new BasicBlock(CurrentFunc);
        CurrentFunc.Add_Block(CurrentBlock);
    }

    public Ir_Value Get_Value(ExprNode tmpnode) {
        if (tmpnode.Value != null)
            return tmpnode.Value;
        else {
            assert (tmpnode.Pointer != null);
            Ir_Reg tmpvalue = new Ir_Reg(Find_Available_Name(".middle.", 0), To_Ir_Type(tmpnode.type));
            CurrentBlock.add_inst(new Load(tmpvalue, tmpnode.Pointer));
            return tmpvalue;
        }

    }

    public Ir_Value Get_Value(String Varname, Ir_Value this_value) {
        Ir_Value tmp = currentScope.Find_Value(Varname);
        assert (tmp.Type instanceof Pointer_Type);
        if (currentScope.Judge_Value_InClass(Varname)) {
            assert (this_value.Type instanceof Struct_Type);
            Struct_Type this_type = (Struct_Type) this_value.Type;
            Ir_IntConstant Offset = new Ir_IntConstant(this_type.Get_Offset(Varname));
            // ArrayList<Ir_Value> Offlist=new ArrayList<Ir_Value>();
            // Offlist.add(Offset);
            Ir_Reg tmpvalue = new Ir_Reg(Find_Available_Name(".middle", 0), ((Pointer_Type) tmp.Type).To_Type);// TOCHECK
            GEP tmp_gep = new GEP(tmpvalue, this_value, Offset);
            CurrentBlock.add_inst(tmp_gep);
            return tmpvalue;
        }
        return tmp;
    }

    public void Init() {
        for (var each : GlobalScope.Classmember.keySet()) {// Rename all the classes
            if (each.equals("int") || each.equals("void") || each.equals("bool") || each.equals("null")) {
                Ir_Type tmptype = null;
                switch (each) {
                    case "int":
                        tmptype = new Int_Type(32);
                        break;
                    case "bool":
                        tmptype = new Int_Type(1);
                        break;
                    case "void":
                        tmptype = new Void_Type();
                        break;
                    case "null":
                        tmptype = new Null_Type();
                }
                Rename.put(each, tmptype);
            } else {
                Rename.put(each, new Struct_Type(GlobalScope.Classmember.get(each)));
                // ClassdefNode tmpnode=GlobalScope.Classmember.get(each);
            }
            /* for function renaming */
        }
        for (var each : GlobalScope.Classmember.keySet()) {
            HashMap<String, FuncdefNode> funcset = GlobalScope.Classmember.get(each).scope.Funcmember;
            for (var func : funcset.keySet()) {
                String tmpfunc = Get_Func_Name(funcset.get(func));
                GlobalScope.Var_Value.put(tmpfunc,
                        new Ir_Func(tmpfunc, To_Ir_Type(funcset.get(func).type)));
            }
        }
        /* for function renaming */
        for (var each : GlobalScope.Funcmember.keySet()) {
            String tmpfunc = Get_Func_Name(GlobalScope.Funcmember.get(each));
            //DEBUG(tmpfunc);
            GlobalScope.Var_Value.put(tmpfunc,
                    new Ir_Func(tmpfunc, To_Ir_Type(GlobalScope.Funcmember.get(each).type)));
        }
        /* for Varmember's Init */
        for (var each : GlobalScope.Varmember.keySet()) {
            assert (!GlobalScope.Var_Value.containsKey(each));
            SingleAssignNode tmp = GlobalScope.Varmember.get(each);
            Ir_Reg tmpreg = new Ir_Reg(each,new Pointer_Type(To_Ir_Type(tmp.type)));
            GlobalScope.Var_Value.put(each, tmpreg);
            Init_Declare.add(new Global_Declare(tmpreg));
        }
        for (var each : GlobalScope.Classmember.keySet()) {
            Ir_Type tmptype = null;
            ArrayList<String> tmplist = null;
            if (each.equals("int") || each.equals("void") || each.equals("bool") || each.equals("null")) {
            } else {
                tmptype = new Struct_Type(GlobalScope.Classmember.get(each));
                tmplist = new ArrayList<>();
                ClassdefNode tmpclassnode = GlobalScope.Classmember.get(each);
                for (var vr : tmpclassnode.scope.Varmember.keySet())// vardef in class
                {
                    SingleAssignNode tnode = tmpclassnode.scope.Varmember.get(vr);
                    if (Rename.containsKey(tnode.type.type))
                        tmplist.add(To_Ir_Type(tnode.type).To_String());
                    else
                        new FUCKER("[Fatal Error]:[Init] declaring %s but doesn't have type %s".formatted(each,
                                tnode.type.type));
                }
                Init_Declare.add(new Declare_Class(tmptype.To_String(), tmplist));
            }
            // ClassdefNode tmpnode=GlobalScope.Classmember.get(each);
        }
    }

    public String Find_Available_Name(String Name, int cnt) {
        if (!GlobalScope.Var_Value.containsKey("%s.%d".formatted(Name, cnt))) {
            return "%s.%d".formatted(Name, cnt);
        }
        return Find_Available_Name(Name, cnt + 1);
    }

    public String Get_Func_Name(FuncdefNode func) {
        if (func.inClass != null)
            return ".func.%s.%s".formatted(func.inClass, func.Name);
        else
            return ".func.%s".formatted(func.Name);
    }

    public Ir_Type To_Ir_Type(TypeNode type) {
        String Ast_Type = type.type;
        int dimension = type.dimension;
        // System.out.println(Rename.get(Ast_Type));
        if (dimension == 0) {
            if (Rename.containsKey(Ast_Type))
                return Rename.get(Ast_Type);
            new FUCKER("[Fatal Error]:not having rename.contain key [To_Ir_Type]");
        } else {
            Ir_Type p = new Pointer_Type(To_Ir_Type(new TypeNode(Ast_Type, dimension - 1)));
            return p;
        }
        new FUCKER("[abort]To_Ir_Type");
        return new Array_Type();
    }

    public Ir_Reg To_Ir_Reg(String name, TypeNode type) {
        return new Ir_Reg(name, To_Ir_Type(type));
    }

    public IRBuilder(ProgramNode root) {
        Rename = new HashMap<>();
        Blocks = new ArrayList<>();
        Init_Declare = new ArrayList<>();
        // New_Block();
        GlobalScope = root.GlobalScope;
        Init();
    }

    public StmtNode Find_Loop() {
        Scope tmpScope = currentScope;
        while (tmpScope.isloop == null) {
            tmpScope = tmpScope.faScope;// if reach top,will automatically throw null_field error
        }
        return tmpScope.isloop;
    }

    @Override
    public void visit(SuiteNode tmpnode) {
        currentScope = tmpnode.scope;
        for (var each : tmpnode.StmtList) {
            each.accept(this);
        }
        currentScope = currentScope.faScope;
    };

    @Override
    public void visit(ProgramNode tmpnode) {
        // System.out.print(tmpnode.content);
        currentScope = GlobalScope;
        currentScope.print();
        for (var each : tmpnode.UnitList) {
            if(!(each instanceof VardefNode))//Already Declared in Init
                each.accept(this);
        }
    };

    @Override
    public void visit(AstNode tmpnode) {
        new FUCKER("[Fatal Error]:Should never get here:Tmpnode");
    };

    @Override
    public void visit(ClassdefNode tmpnode) {
        // System.out.print(tmpnode);
        currentScope = tmpnode.scope;
        for (var each : tmpnode.suite.StmtList) {
            if (each instanceof FuncdefNode) {
                each.accept(this);
            }
        }
        currentScope = currentScope.faScope;
    };

    @Override
    public void visit(SingleAssignNode tmpnode) {
        new FUCKER("[Fatal Error]:Should never get here:SingleAssignNode");

    };

    @Override
    public void visit(ConstructordefNode tmpnode) {
    };

    @Override
    public void visit(FuncdefNode tmpnode) {
        ArrayList<Ir_Value> paras = new ArrayList<>();
        if (tmpnode.inClass != null)
            paras.add(new Ir_Reg(Find_Available_Name("This", 0), Rename.get(tmpnode.inClass)));
        for (var each : tmpnode.paras) {
            paras.add(To_Ir_Reg(each.Name, each.type));
        }
        String IrName = Get_Func_Name(tmpnode);
        CurrentFunc = new FuncBlock(((Ir_Func) GlobalScope.Var_Value.get(IrName)), paras);// Cast type to assure it's really a
                                                                           // Ir_Func,not other rubbish.
        Blocks.add(CurrentFunc);
        New_Block();
        currentScope = tmpnode.scope;
        DEBUG(currentScope.faScope.toString());
        for (var each : tmpnode.suite.StmtList) {
            each.accept(this);
        }
        currentScope = currentScope.faScope;
        CurrentFunc.End_Func();
    };

    @Override
    public void visit(VardefNode tmpnode) {
        for (var each : tmpnode.VarList) {
            Ir_Reg tmp = new Ir_Reg(Find_Available_Name(each.Name, 0), new Pointer_Type(To_Ir_Type(each.type)));
            currentScope.Push_Value(each.Name, tmp);
            Alloca tmp_inst = new Alloca(tmp);
            CurrentFunc.Add_Alloca(tmp_inst);
        }
    };

    @Override
    public void visit(DefNode tmpnode) {
        new FUCKER("[Fatal Error]:Should never get here:Defnode");
    };

    @Override
    public void visit(LamFuncNode tmpnode) {
        new FUCKER("[Not my Error]:lamFunc shouldn't exist");
    };

    @Override
    public void visit(FuncNode tmpnode) {
        tmpnode.name.accept(this);
        FuncdefNode tmpdef = tmpnode.name.isFuncNode;
        ArrayList<Ir_Value> paras = new ArrayList<>();
        if (tmpdef.inClass != null) {
            paras.add(Get_Value(tmpnode.name));
        }
        for (var each : tmpnode.ExprList) {
            each.accept(this);
            paras.add(Get_Value(each));
        }
        Call Call_Func;
        // System.out.println(tmpdef.type.type);
        if (tmpnode.type.equals("void"))
            Call_Func = new Call(((Ir_Func)GlobalScope.Var_Value.get(Get_Func_Name(tmpdef))), paras);
        else {
            tmpnode.Value = new Ir_Reg(Find_Available_Name(".Func_Return", 0), To_Ir_Type(tmpnode.type));
            Call_Func = new Call(tmpnode.Value, ((Ir_Func)GlobalScope.Var_Value.get(Get_Func_Name(tmpdef))), paras);
        }
        CurrentBlock.add_inst(Call_Func);

    };

    @Override
    public void visit(NullNode tmpnode) {
        tmpnode.Value = new Ir_NullPtrConstant();
    };

    @Override
    public void visit(BoolNode tmpnode) {
        tmpnode.Value = new Ir_BoolConst(tmpnode.BoolValue);
    };

    @Override
    public void visit(StringNode tmpnode) {
        Ir_StringConstant tmp = new Ir_StringConstant(tmpnode.content);
        tmpnode.Value = tmp;
    };

    @Override
    public void visit(IntegerNode tmpnode) {
        // String name = Find_Available_Name("int_const", 0);
        Ir_IntConstant tmp = new Ir_IntConstant(tmpnode.IntValue);
        tmpnode.Value = tmp;
    };

    @Override
    public void visit(ConstNode tmpnode) {
        new FUCKER("[Fatal Error]:should never be here:ConstNode");
    };

    @Override
    public void visit(TypeNode tmpnode) {
        new FUCKER("[Fatal Error]:should never be here:TypeNode");

    };

    @Override
    public void visit(ListSufNode tmpnode) {
        return;
    };

    @Override
    public void visit(VarNode tmpnode) {
        currentScope.print();
        tmpnode.Pointer = Get_Value(tmpnode.isfunc ? Get_Func_Name(tmpnode.isFuncNode) : tmpnode.name,
                CurrentFunc.Get_This());
    };

    @Override
    public void visit(IndexNode tmpnode) {
        return;
    };

    @Override
    public void visit(ThisNode tmpnode) {
        tmpnode.Pointer = CurrentFunc.Get_This();
    };

    @Override
    public void visit(MemberexprNode tmpnode) {
        tmpnode.belongs.accept(this);
        if (tmpnode.isfunc) {
            // Call Member_Call=new Call(null, null);
            tmpnode.Value = Get_Value(tmpnode.belongs);
        } else {

            assert (tmpnode.belongs.Value.Type instanceof Struct_Type);
            Struct_Type TmpType = (Struct_Type) tmpnode.belongs.Value.Type;
            Ir_IntConstant offset = new Ir_IntConstant(TmpType.Get_Offset(tmpnode.name));
            tmpnode.Pointer = new Ir_Reg(Find_Available_Name(".middle", 0), new Pointer_Type(To_Ir_Type(tmpnode.type)));
            GEP tmp_GEP = new GEP(tmpnode.Pointer, tmpnode.belongs.Pointer, offset);
            CurrentBlock.add_inst(tmp_GEP);
        }
    };

    @Override
    public void visit(BinaryexprNode tmpnode) {
        tmpnode.lv.accept(this);
        tmpnode.rv.accept(this);
        tmpnode.Value = new Ir_Reg(Find_Available_Name(".middle", 0), To_Ir_Type(tmpnode.type));
        BinaryOp tmp_OP = new BinaryOp(tmpnode.Value, tmpnode.op, Get_Value(tmpnode.lv), Get_Value(tmpnode.rv));
        CurrentBlock.add_inst(tmp_OP);
    };

    @Override
    public void visit(SufexprNode tmpnode) {
        tmpnode.lv.accept(this);
        tmpnode.Value = new Ir_Reg(Find_Available_Name(".middle", 0), To_Ir_Type(tmpnode.type));
        Ir_IntConstant tmp = new Ir_IntConstant(1);
        String tmpop = null;
        switch (tmpnode.op) {
            case "++":
                tmpop = "+";
                break;
            case "--":
                tmpop = "-";
                break;
            default:
                new FUCKER("[Fatal Error]Illgal Suf Op %s".formatted(tmpnode.op));
        }
        CurrentBlock.add_inst(new BinaryOp(tmpnode.Value, tmpop, Get_Value(tmpnode.lv), tmp));
    };

    @Override
    public void visit(ExprNode tmpnode) {
        new FUCKER("[Fatal Error]:Should never get here:Exprnode");

    };

    @Override
    public void visit(PreexprNode tmpnode) {
        tmpnode.rv.accept(this);
        Ir_IntConstant tmp = new Ir_IntConstant(1);
        Ir_Value tmpvalue;
        switch (tmpnode.op) {
            case "++":
                assert (tmpnode.rv.Pointer != null);
                tmpvalue = Get_Value(tmpnode.rv);// Load i from tmpnode.rv.Pointer
                CurrentBlock.add_inst(new BinaryOp(tmpvalue, "+", tmpvalue, tmp));// i=i+1
                CurrentBlock.add_inst(new Store(tmpnode.rv.Pointer, tmpvalue));// Store back to Pointer
                tmpnode.Pointer = tmpnode.rv.Pointer;
                break;
            case "--":
                assert (tmpnode.rv.Pointer != null);
                tmpvalue = Get_Value(tmpnode.rv);// Load i from tmpnode.rv.Pointer
                CurrentBlock.add_inst(new BinaryOp(tmpvalue, "-", tmpvalue, tmp));// i=i+1
                CurrentBlock.add_inst(new Store(tmpnode.rv.Pointer, tmpvalue));// Store back to Pointer
                tmpnode.Pointer = tmpnode.rv.Pointer;
                break;
            case "!":
                tmpnode.Value = new Ir_Reg(".middle", To_Ir_Type(tmpnode.type));
                CurrentBlock.add_inst(new BinaryOp(tmpnode.Value, "^", Get_Value(tmpnode.rv), new Ir_BoolConst(true)));
            case "~":
                tmpnode.Value = new Ir_Reg(".middle", To_Ir_Type(tmpnode.type));
                CurrentBlock.add_inst(new BinaryOp(tmpnode.Value, "^", Get_Value(tmpnode.rv), new Ir_IntConstant(1)));
            case "-":
                tmpnode.Value = new Ir_Reg(".middle", To_Ir_Type(tmpnode.type));
                CurrentBlock.add_inst(new BinaryOp(tmpnode.Value, "-", new Ir_IntConstant(0), Get_Value(tmpnode.rv)));
        }
    };

    @Override
    public void visit(BreakstmtNode tmpnode) {
        StmtNode tmpstmt = Find_Loop();
        if (tmpstmt instanceof ForstmtNode) {
            CurrentBlock.end_block_with(new Uncond_Br(((ForstmtNode) tmpstmt).End_Block));
            return;
        }
        assert (tmpstmt instanceof WhilestmtNode);
        CurrentBlock.end_block_with(new Uncond_Br(((WhilestmtNode) tmpstmt).End_Block));
        return;
    };

    @Override
    public void visit(IfstmtNode tmpnode) {
        BasicBlock If_Condition = new BasicBlock(CurrentFunc, "If_Cond");
        BasicBlock If_Then = new BasicBlock(CurrentFunc, "If_Then");
        BasicBlock If_Else = new BasicBlock(CurrentFunc, "If_Else");
        BasicBlock If_End = new BasicBlock(CurrentFunc, "If_End");
        CurrentFunc.Add_Block(If_Condition);
        CurrentBlock.end_block_with(new Uncond_Br(If_Condition));
        CurrentBlock = If_Condition;
        tmpnode.Cond.accept(this);
        CurrentBlock.end_block_with(new Br(tmpnode.Cond.Value, If_Then, If_Else));
        CurrentFunc.Add_Block(If_Then);
        CurrentBlock = If_Then;
        tmpnode.Ifsuite.accept(this);
        if (CurrentBlock.Ret_inst == null)
            CurrentBlock.end_block_with(new Uncond_Br(If_End));
        CurrentFunc.Add_Block(If_Else);
        CurrentBlock = If_Else;
        if (tmpnode.Elsesuite != null)
            tmpnode.Elsesuite.accept(this);
        if (CurrentBlock.Ret_inst == null)
            CurrentBlock.end_block_with(new Uncond_Br(If_End));
        CurrentFunc.Add_Block(If_End);
        CurrentBlock = If_End;
    };

    @Override
    public void visit(ExprstmtNode tmpnode) {
        new FUCKER("[Fatal Error]:Should never get here:exprstmtnode");
    };

    @Override
    public void visit(EmptystmtNode tmpnode) {
        return;
    };

    @Override
    public void visit(ContinuestmtNode tmpnode) {
        StmtNode tmpstmt = Find_Loop();
        if (tmpstmt instanceof ForstmtNode) {
            CurrentBlock.end_block_with(new Uncond_Br(((ForstmtNode) tmpstmt).Condition_Block));
            return;
        }
        assert (tmpstmt instanceof WhilestmtNode);
        CurrentBlock.end_block_with(new Uncond_Br(((WhilestmtNode) tmpstmt).Condition_Block));
        return;
    };

    @Override
    public void visit(ReturnstmtNode tmpnode) {
        if (tmpnode.RetValue != null) {
            tmpnode.RetValue.accept(this);
            if (tmpnode.RetValue.Value != null) {
                Store st = new Store(tmpnode.RetValue.Value, CurrentFunc.retval);
                CurrentBlock.add_inst(st);
            } else {
                assert (tmpnode.RetValue.Pointer != null);
                Ir_Reg tmp_value_reg = new Ir_Reg(Find_Available_Name("middle.", 0), To_Ir_Type(tmpnode.RetValue.type));
                CurrentFunc.Add_Alloca(new Alloca(tmp_value_reg));
                Load load_from_pointer = new Load(tmp_value_reg, tmpnode.RetValue.Pointer);
                CurrentBlock.add_inst(load_from_pointer);
                Store st = new Store(tmp_value_reg, CurrentFunc.retval);
                CurrentBlock.add_inst(st);
            }
        }
        Uncond_Br tmp_inst = new Uncond_Br(CurrentFunc.Exit);
        CurrentBlock.end_block_with(tmp_inst);
        // New_Block();
    };

    @Override
    public void visit(ForstmtNode tmpnode) {
        tmpnode.Init.accept(this);
        BasicBlock For_Condition = new BasicBlock(CurrentFunc, "For_Cond");
        BasicBlock For_End = new BasicBlock(CurrentFunc, "For_End");
        BasicBlock For_Body = new BasicBlock(CurrentFunc, "For_Body");
        tmpnode.Condition_Block = For_Condition;
        tmpnode.End_Block = For_End;
        // BasicBlock For_Change=new BasicBlock(CurrentFunc);
        CurrentBlock.end_block_with(new Uncond_Br(For_Condition));
        CurrentFunc.Add_Block(For_Condition);
        CurrentBlock = For_Condition;
        tmpnode.End.accept(this);
        CurrentBlock.end_block_with(new Br(tmpnode.End.Value, For_Body, For_End));
        CurrentFunc.Add_Block(For_Body);
        CurrentBlock = For_Body;
        tmpnode.Change.accept(this);
        tmpnode.suite.accept(this);
        if (CurrentBlock.Ret_inst == null)
            CurrentBlock.end_block_with(new Uncond_Br(For_Condition));
        CurrentFunc.Add_Block(For_End);
        CurrentBlock = For_End;
    };

    @Override
    public void visit(WhilestmtNode tmpnode) {
        BasicBlock While_Condition = new BasicBlock(CurrentFunc, "While_Cond");
        BasicBlock While_Body = new BasicBlock(CurrentFunc, "While_Body");
        BasicBlock While_End = new BasicBlock(CurrentFunc, "While_End");
        tmpnode.Condition_Block = While_Condition;
        tmpnode.End_Block = While_End;
        CurrentFunc.Add_Block(While_Condition);
        CurrentBlock.end_block_with(new Uncond_Br(While_Condition));
        CurrentBlock = While_Condition;
        tmpnode.End.accept(this);
        CurrentBlock.end_block_with(new Br(tmpnode.End.Value, While_Body, While_End));
        CurrentFunc.Add_Block(While_Body);
        tmpnode.suite.accept(this);
        if (CurrentBlock.Ret_inst == null)
            CurrentBlock.end_block_with(new Uncond_Br(While_End));
        CurrentFunc.Add_Block(While_End);
        CurrentBlock = While_End;

    };

    @Override
    public void visit(StmtNode tmpnode) {
        new FUCKER("[Fatal Error]:should never be here:StmtNode");

        return;
    };

    public String To_String() {
        String str = "";
        for (var each : Init_Declare) {
            str += each.To_String() + "\n";
        }
        for (var each : Blocks) {
            str += each.To_String() + "\n";
        }
        return str;
    }

}