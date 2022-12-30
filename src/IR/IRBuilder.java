package IR;

import astnode.ASTVisitor;

import java.lang.ProcessBuilder.Redirect.Type;
import java.rmi.Naming;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import java.util.jar.Attributes.Name;

import javax.lang.model.util.ElementScanner14;
import javax.management.ValueExp;
import IR.ir_inst.Alloca;
import IR.ir_inst.Br;
import IR.ir_inst.Call;
import IR.ir_inst.Declare_Class;
import IR.ir_inst.Declare_Func;
import IR.ir_inst.GEP;
import IR.ir_inst.Global_Declare;
import IR.ir_inst.Global_DeclareVar;
import IR.ir_inst.Inttoptr;
import IR.ir_inst.BinaryOp;
import IR.ir_inst.Bitcast;
import IR.ir_inst.Ir_Inst;
import IR.ir_inst.Load;
import IR.ir_inst.Ptrtoint;
import IR.ir_inst.Ret;
import IR.ir_inst.Store;
import IR.ir_inst.Trunc;
import IR.ir_inst.Uncond_Br;
import IR.ir_inst.Zext;
import IR.ir_type.Array_Type;
import IR.ir_type.Bool_Type;
import IR.ir_type.Int_Type;
import IR.ir_type.Ir_Type;
import IR.ir_type.Null_Type;
import IR.ir_type.Pointer_Type;
import IR.ir_type.Struct_Type;
import IR.ir_type.Void_Type;
import IR.ir_value.Ir_BoolConst;
import IR.ir_value.Ir_Func;
import IR.ir_value.Ir_GlobalReg;
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
    public HashSet<String> Names, Func_Defed;
    public ArrayList<Ir_Inst> Init_Declare;
    public Scope currentScope;

    public void DEBUG(String msg) {
        System.out.println(msg);
    }

    public void New_Block() {
        assert (CurrentFunc != null);
        CurrentBlock = new BasicBlock(CurrentFunc);
        CurrentFunc.Add_Block(CurrentBlock);
    }

    static public boolean is_Bool_Type(Ir_Type type) {
        if (type instanceof Int_Type) {
            return ((Int_Type) type).size == 1 || ((Int_Type) type).size == 8;
        }
        return false;
    }

    public Ir_Value Get_Value(ExprNode tmpnode) {
        if (tmpnode.Value != null)
            return tmpnode.Value;
        else {
            assert (tmpnode.Pointer != null);
            Ir_Reg tmpvalue = new Ir_Reg(Find_Available_Name(".middle", 0), To_Ir_Type(tmpnode.type));
            // DEBUG(tmpnode.content);
            // DEBUG(((Pointer_Type)tmpnode.Pointer.Type).To_Type.To_String());
            if (tmpnode.type.type.equals("bool") && tmpnode.type.dimension == 0) {
                Ir_Reg ToBool = new Ir_Reg(Find_Available_Name(".ToBool", 0), new Int_Type(8));
                CurrentBlock.add_inst(new Load(ToBool, tmpnode.Pointer));
                CurrentBlock.add_inst(new Trunc(tmpvalue, ToBool));
                return tmpvalue;
            }
            CurrentBlock.add_inst(new Load(tmpvalue, tmpnode.Pointer));
            return tmpvalue;
        }
    }

    public Ir_Value Get_Value(Ir_Value tmpValue) {
        if (tmpValue.Type instanceof Pointer_Type) {
            if (is_Bool_Type((((Pointer_Type) tmpValue.Type).To_Type))) {
                Ir_Reg tmpvalue = new Ir_Reg(Find_Available_Name(".middle", 0), new Int_Type(8));
                Ir_Reg ToBool = new Ir_Reg(Find_Available_Name(".ToBool", 0), new Int_Type(1));
                CurrentBlock.add_inst(new Load(ToBool, tmpValue));
                CurrentBlock.add_inst(new Trunc(tmpvalue, ToBool));
                return tmpvalue;
            }
            Ir_Value ret = new Ir_Reg(Find_Available_Name(tmpValue.Name, 0), ((Pointer_Type) tmpValue.Type).To_Type);
            CurrentBlock.add_inst(new Load(ret, tmpValue));
            return ret;
        }
        return tmpValue;
    }

    public void Store_Value(Ir_Value user, Ir_Value Store) {
        // DEBUG(Store.To_String());
        // DEBUG(Store.Type.To_String());
        if (is_Bool_Type(Store.Type)) {
            assert (user.Type instanceof Int_Type);// should be i8,always
            Ir_Reg FromBool = new Ir_Reg(Find_Available_Name(".FromBool", 0), new Int_Type(8));
            CurrentBlock.add_inst(new Zext(FromBool, Store));
            CurrentBlock.add_inst(new Store(user, FromBool));
            return;
        }
        CurrentBlock.add_inst(new Store(user, Store));
        return;
    }

    public Ir_Value New_Value(VarNode tmpnode) {
        String Name = Find_Available_Name(tmpnode.name, 0);
        Names.add(Name);
        Ir_Type type = To_Ir_Type(tmpnode.type);
        Ir_Reg tmpValue = new Ir_Reg(Name, new Pointer_Type(type));// SP
        if (CurrentBlock == null)// For global Initialization
            Init_Declare.add(new Global_Declare(tmpValue));
        else
            CurrentBlock.add_inst(new Alloca(tmpValue));
        return tmpValue;
    }

    public Ir_Value New_Value(String name, Ir_Type type) {
        String Name = Find_Available_Name(name, 0);
        Names.add(Name);
        Ir_Value tmpValue;
        if (is_Bool_Type(type)) {
            if (CurrentBlock == null)// For global Initialization
                tmpValue = new Ir_GlobalReg(Name, new Pointer_Type(new Int_Type(8)));
            else
                tmpValue = new Ir_Reg(Name, new Pointer_Type(new Int_Type(8)));// SP
            if (CurrentBlock == null)// For global Initialization
                Init_Declare.add(new Global_Declare(tmpValue));
            else
                CurrentBlock.add_inst(new Alloca(tmpValue));
            return tmpValue;
        }
        if (CurrentBlock == null)// For global Initialization
            tmpValue = new Ir_GlobalReg(Name, new Pointer_Type(type));
        else
            tmpValue = new Ir_Reg(Name, new Pointer_Type(type));// SP
        if (CurrentBlock == null)// For global Initialization
            Init_Declare.add(new Global_Declare(tmpValue));
        else
            CurrentBlock.add_inst(new Alloca(tmpValue));
        return tmpValue;
    }

    public Ir_Value Get_Value(String Varname, Ir_Value this_value) {// ALERT:RETURN a Pointer to The Value with Name
                                                                    // <Varname>
        // DEBUG("[asdsad]%s %s".formatted(Varname,this_value.To_String()));
        Ir_Value tmp = currentScope.Find_Value(Varname);
        assert (tmp.Type instanceof Pointer_Type);
        if (currentScope.Judge_Value_InClass(Varname)) {
            // DEBUG("[Find In Class]%s".formatted(Varname));
            assert (this_value.Type instanceof Pointer_Type);
            Struct_Type this_type = (Struct_Type) ((Pointer_Type) this_value.Type).To_Type;
            Ir_IntConstant Offset = new Ir_IntConstant(this_type.Get_Offset(Varname));
            // ArrayList<Ir_Value> Offlist=new ArrayList<Ir_Value>();
            // Offlist.add(Offset);
            Ir_Reg tmpPointer = new Ir_Reg(Find_Available_Name("%s.%s".formatted(this_value.Name, Varname), 0),
                    ((Pointer_Type) tmp.Type));
            GEP tmp_gep = new GEP(tmpPointer, this_value, Offset, false);
            CurrentBlock.add_inst(tmp_gep);
            return tmpPointer;
        }
        return tmp;
    }

    public void Init_Global_Variables() {
        CurrentFunc = new FuncBlock(new Ir_Func(".init", new Void_Type()), new ArrayList<>(), GlobalScope);
        Blocks.add(CurrentFunc);
        New_Block();
        for (var each : GlobalScope.Varmember.keySet()) {
            SingleAssignNode tmpNode = GlobalScope.Varmember.get(each);
            Ir_Value varValue = GlobalScope.Var_Value.get(each);
            // DEBUG(varValue.Type.To_String());
            if (tmpNode.value != null) {
                tmpNode.value.accept(this);// same with assign,but lv already existed
                // CurrentBlock.add_inst(new Store(varValue,Get_Value(tmpNode.value)));
                Store_Value(varValue, Get_Value(tmpNode.value));
            }
            Pointer_Type ptrType = (Pointer_Type) varValue.Type;
            if (ptrType.To_Type instanceof Struct_Type)// SP:call Construtor
            {
                ArrayList<Ir_Value> paralist = new ArrayList<>();
                paralist.add(varValue);
                Ir_Func func = (Ir_Func) GlobalScope.Var_Value
                        .get(".func.%s.construct".formatted(((Struct_Type) ptrType.To_Type).name));
                CurrentBlock.add_inst(new Call(func, paralist));
            }

        }
        CurrentBlock.end_block_with(new Uncond_Br(CurrentFunc.Exit));
        CurrentFunc.End_Func();
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
            // DEBUG(tmpfunc);
            GlobalScope.Var_Value.put(tmpfunc,
                    new Ir_Func(tmpfunc, To_Ir_Type(GlobalScope.Funcmember.get(each).type)));
        }
        /* for Varmember's Init */
        for (var each : GlobalScope.Varmember.keySet()) {
            assert (!GlobalScope.Var_Value.containsKey(each));
            SingleAssignNode tmp = GlobalScope.Varmember.get(each);
            Ir_Value tmpreg = New_Value(tmp.Name, To_Ir_Type(tmp.type));
            tmp.Pointer = tmpreg;
            GlobalScope.Var_Value.put(each, tmpreg);
            // Init_Declare.add(new Global_Declare(tmpreg));
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
                    /* for Varmember to Ir_value */
                    Ir_Reg tmpvr = new Ir_Reg(tnode.Name, new Pointer_Type(To_Ir_Type(tnode.type)));
                    tmpclassnode.scope.Push_Value(tnode.Name, tmpvr);
                }
                Init_Declare.add(new Declare_Class(tmptype.To_String(), tmplist));
            }
            // ClassdefNode tmpnode=GlobalScope.Classmember.get(each);
        }
        Init_Global_Variables();
    }

    public String Find_Available_Name(String Name, int cnt) {
        if (!Names.contains("%s.%d".formatted(Name, cnt))) {
            Names.add("%s.%d".formatted(Name, cnt));
            return "%s.%d".formatted(Name, cnt);
        }
        return Find_Available_Name(Name, cnt + 1);
    }

    public String Get_Func_Name(FuncdefNode func) {
        if (func.inClass != null)
            return ".func.%s.%s".formatted(func.inClass, func.Name);
        else {
            if (func.Name.equals("main") || func.Name.equals("_malloc_toInt"))// SP
                return func.Name;
            return ".func.%s".formatted(func.Name);
        }
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
        Names = new HashSet<>();
        Func_Defed = new HashSet<>();
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

    public void Close_Up() {
        for (var func : GlobalScope.Funcmember.keySet()) {
            FuncdefNode tmpnode = GlobalScope.Funcmember.get(func);
            String Funcname = Get_Func_Name(tmpnode);
            if (!Func_Defed.contains(Funcname)) {
                Ir_Func tmpfunc = ((Ir_Func) GlobalScope.Var_Value.get(Funcname));
                ArrayList<Ir_Value> paras = new ArrayList<>();
                for (var each : tmpnode.paras) {
                    // DEBUG(each.content);
                    paras.add(new Ir_Reg(Find_Available_Name(each.Name, 0), To_Ir_Type(each.type)));
                }
                Init_Declare.add(new Declare_Func(tmpfunc, paras));
            }
        }
    }

    @Override
    public void visit(ProgramNode tmpnode) {
        // System.out.print(tmpnode.content);
        currentScope = GlobalScope;
        // currentScope.print();
        for (var each : tmpnode.UnitList) {
            if (!(each instanceof VardefNode))// Already Declared in Init
                each.accept(this);
        }
        Close_Up();
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
        tmpnode.Pointer = New_Value(tmpnode.Name, To_Ir_Type(tmpnode.type));
        if (tmpnode.value != null) {
            tmpnode.value.accept(this);
            Ir_Value tmpv = Get_Value(tmpnode.value);
            // DEBUG("[asdsasd]%s".formatted(tmpv.To_String()));
            Store_Value(tmpnode.Pointer, tmpv);
        }
        currentScope.Push_Value(tmpnode.Name, tmpnode.Pointer);
    };

    @Override
    public void visit(ConstructordefNode tmpnode) {
    };

    @Override
    public void visit(FuncdefNode tmpnode) {
        ArrayList<Ir_Value> paras = new ArrayList<>();
        if (tmpnode.inClass != null) {
            Ir_Value tmpreg = new Ir_Reg(Find_Available_Name("This", 0), new Pointer_Type(Rename.get(tmpnode.inClass)));
            paras.add(tmpreg);
            tmpnode.scope.Push_Value("This", tmpreg);
        }
        for (var each : tmpnode.paras) {
            Ir_Value tmpreg = To_Ir_Reg(each.Name, each.type);
            if (!(tmpreg.Type instanceof Int_Type))// Big Type should pass the pointer, not value
                tmpreg.Type = new Pointer_Type(tmpreg.Type);
            paras.add(tmpreg);
            // tmpnode.scope.Push_Value(each.Name, tmpreg);
        }
        String IrName = Get_Func_Name(tmpnode);
        CurrentFunc = new FuncBlock(((Ir_Func) GlobalScope.Var_Value.get(IrName)), paras, tmpnode.scope);// Cast type to
                                                                                                         // assure it's
        // really a Ir_Func,not other rubbish.
        Func_Defed.add(IrName);// Register Func Name
        Blocks.add(CurrentFunc);
        New_Block();
        currentScope = tmpnode.scope;
        // DEBUG(currentScope.faScope.toString());
        for (var each : tmpnode.suite.StmtList) {
            each.accept(this);
        }
        if (CurrentBlock.Ret_inst == null)
            CurrentBlock.end_block_with(new Uncond_Br(CurrentFunc.Exit));// in case of un-returned void function
        currentScope = currentScope.faScope;
        CurrentFunc.End_Func();
    };

    @Override
    public void visit(VardefNode tmpnode) {
        for (var each : tmpnode.VarList) {
            each.accept(this);
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
            paras.add(tmpnode.name.Pointer);// must be lvalue
        }
        if(tmpdef.Name.equals(".size"))//SP for .size()-> inline
        {
            Ir_Value tmpPos=Get_Middle(new Int_Type(32));
            Ptrtoint tmpPTI=new Ptrtoint(tmpPos, tmpnode.name.Pointer);
            CurrentBlock.add_inst(tmpPTI);
            Ir_Value SubValue=Get_Middle(new Int_Type(32)),SubPos=Get_Middle(new Pointer_Type(new Int_Type(32)));
            BinaryOp SubFour=new BinaryOp(SubValue, "-", tmpPos, new Ir_IntConstant(4));
            CurrentBlock.add_inst(SubFour);
            Inttoptr tmpITP=new Inttoptr(SubPos,SubValue);
            CurrentBlock.add_inst(tmpITP);
            tmpnode.Value=Get_Value(SubPos);
            return;
        }
        for (var each : tmpnode.ExprList) {
            each.accept(this);
            if (each.Pointer != null) {
                Ir_Type tmp = ((Pointer_Type) each.Pointer.Type).To_Type;
                if ((tmp instanceof Int_Type))
                    paras.add(Get_Value(each));
                else
                    paras.add(each.Pointer);
            } else
                paras.add(each.Value);
        }
        Call Call_Func;
        // System.out.println(tmpdef.type.type);
        if (tmpnode.type.equals("void")) {
            Call_Func = new Call(((Ir_Func) GlobalScope.Var_Value.get(Get_Func_Name(tmpdef))), paras);
            CurrentBlock.add_inst(Call_Func);
        } else {
            tmpnode.Value = new Ir_Reg(Find_Available_Name(".Func_Return", 0), To_Ir_Type(tmpnode.type));
            Call_Func = new Call(tmpnode.Value, ((Ir_Func) GlobalScope.Var_Value.get(Get_Func_Name(tmpdef))), paras);
            CurrentBlock.add_inst(Call_Func);
            if (tmpnode.Value.Type instanceof Struct_Type) {
                tmpnode.Pointer = Get_Middle(new Pointer_Type(tmpnode.Value.Type));
                CurrentBlock.add_inst(new Alloca(tmpnode.Pointer));
                CurrentBlock.add_inst(new Store(tmpnode.Pointer, tmpnode.Value));
                tmpnode.Value = null;
            }
        }

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
        int len = tmpnode.Content.size();
        Ir_GlobalReg tmp = new Ir_GlobalReg(Find_Available_Name(".ConstantString", 0),
                new Pointer_Type(new Array_Type(len, new Int_Type(32))));
        ArrayList<Ir_Value> Paras = new ArrayList<>();
        for (var each : tmpnode.Content) {
            Paras.add(new Ir_IntConstant(each));
        }
        Init_Declare.add(new Global_DeclareVar(tmp, Paras));

        /* To Load a const Array into tmpnode.Pointer as a string */
        Struct_Type stringtype = (Struct_Type) Rename.get("string");
        // DEBUG(stringtype.Get_Offset("len"));
        tmpnode.Pointer = new Ir_Reg(Find_Available_Name(".TmpString", 0), new Pointer_Type(stringtype));
        ArrayList<Ir_Value> Initlist = new ArrayList<>(), LenOffset = new ArrayList<>(),
                ContentOffset = new ArrayList<>();
        Initlist.add(tmpnode.Pointer);
        CurrentBlock.add_inst(new Alloca(tmpnode.Pointer));
        CurrentBlock.add_inst(new Call((Ir_Func) GlobalScope.Var_Value.get(".func.string.construct"), Initlist));// May
                                                                                                                 // Not
                                                                                                                 // Be
                                                                                                                 // Neccessary
        Ir_Reg tmplen = new Ir_Reg(Find_Available_Name(".TmpLen", 0), new Pointer_Type(new Int_Type(32)));
        LenOffset.add(new Ir_IntConstant(stringtype.Get_Offset("len")));
        CurrentBlock.add_inst(new GEP(tmplen, tmpnode.Pointer, LenOffset, false));
        CurrentBlock.add_inst(new Store(tmplen, new Ir_IntConstant(len)));
        Ir_Reg tmpcontent = new Ir_Reg(Find_Available_Name(".TmpContent", 0),
                new Pointer_Type(new Pointer_Type(new Int_Type(32))));
        // tmpcontent is a int**
        ContentOffset.add(new Ir_IntConstant(stringtype.Get_Offset("content")));
        CurrentBlock.add_inst(new GEP(tmpcontent, tmpnode.Pointer, ContentOffset, false));
        Ir_Reg tmpConst = new Ir_Reg(Find_Available_Name(".TmpConstRef", 0),
                new Pointer_Type(new Int_Type(32)));
        CurrentBlock.add_inst(new GEP(tmpConst, tmp, new Ir_IntConstant(0), false));
        CurrentBlock.add_inst(new Store(tmpcontent, tmpConst));
        /*
         * Code above is equavalent to:
         * tmpnode.Pointer.len=len;
         * tmpnode.Pointer.content=Const Array;
         */
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

    public Ir_Value Get_Const(Ir_GlobalReg GConst, Ir_Type type) {
        Ir_Reg tmp = new Ir_Reg(Find_Available_Name(".middle", 0), type);
        ArrayList<Ir_Value> Offset = new ArrayList<>();
        // Offset.add(new Ir_IntConstant(0));
        CurrentBlock.add_inst(new GEP(tmp, GConst, Offset, false));
        return tmp;
    }

    public Ir_Value Get_Middle(Ir_Type type) {
        return new Ir_Reg(Find_Available_Name(".middle", 0), type);
    }

    public Ir_Value To_IR_Array(ArrayList<Ir_Value> paras)// Assert to be int now
    {
        Ir_Reg tmp = new Ir_Reg(Find_Available_Name(".SizeList", 0),
                new Pointer_Type(new Pointer_Type(new Int_Type(32)))),
                middle_tmp = new Ir_Reg(Find_Available_Name(".middle", 0), new Pointer_Type(new Int_Type(32)));
        Ir_Func call_malloc = (Ir_Func) GlobalScope.Var_Value.get("_malloc_toInt");
        ArrayList<Ir_Value> Malloc_paras = new ArrayList<>();
        Ir_Value para_size = Get_Middle(new Pointer_Type(new Int_Type(32)));
        CurrentBlock.add_inst(new Alloca(para_size));
        CurrentBlock.add_inst(new Store(para_size, new Ir_IntConstant(1)));
        Malloc_paras.add(para_size);
        Malloc_paras.add(new Ir_IntConstant(1));
        CurrentBlock.add_inst(new Call(middle_tmp, call_malloc, Malloc_paras));
        CurrentBlock.add_inst(new Bitcast(tmp, middle_tmp));
        Ir_Value tmpvalue = Get_Value(tmp);
        for (int i = 0; i < paras.size(); ++i) {
            Ir_Value tmp_para = paras.get(i);// Must visited before
            Ir_Value ArrayIdx = new Ir_Reg(Find_Available_Name(".ArrayIdx", 0), ((Pointer_Type) tmp.Type).To_Type);
            CurrentBlock.add_inst(new GEP(ArrayIdx, tmpvalue, new Ir_IntConstant(i), true));
            CurrentBlock.add_inst(new Store(ArrayIdx, tmp_para));
        }
        CurrentBlock.add_inst(new Store(tmp, tmpvalue));
        return tmp;
    }

    @Override
    public void visit(VarNode tmpnode) {
        // currentScope.print();
        if (tmpnode.name.equals(".new"))// SP for form: new int[x][x]
        {
            if (tmpnode.SizeList.size() > 0) {
                ArrayList<Ir_Value> paras = new ArrayList<>();
                for (var each : tmpnode.SizeList) {
                    // DEBUG("[%s]%s".formatted(tmpnode.name, each.content));
                    each.accept(this);
                    paras.add(Get_Value(each));
                }
                Ir_Value SizePtr = To_IR_Array(paras);
                ArrayList<Ir_Value> Malloc_paras = new ArrayList<>();
                Malloc_paras.add(Get_Value(SizePtr));
                Malloc_paras.add(new Ir_IntConstant(paras.size()));
                Ir_Func call_malloc = (Ir_Func) GlobalScope.Var_Value.get("_malloc_toInt");
                Ir_Value tmp_middle = Get_Middle(new Pointer_Type(new Int_Type(32)));
                CurrentBlock.add_inst(new Call(tmp_middle, call_malloc, Malloc_paras));
                tmpnode.Value = new Ir_Reg(Find_Available_Name(tmpnode.name, 0),
                        To_Ir_Type(tmpnode.type));
                CurrentBlock.add_inst(new Bitcast(tmpnode.Value, tmp_middle));
            } else {
                if (tmpnode.type.type.equals("int")) {
                    tmpnode.Value = new Ir_IntConstant(0);
                } else if (tmpnode.type.type.equals("bool")) {
                    tmpnode.Value = new Ir_BoolConst(false);
                } else {
                    tmpnode.Pointer = Get_Middle(new Pointer_Type(To_Ir_Type(tmpnode.type)));
                    CurrentBlock.add_inst(new Alloca(tmpnode.Pointer));
                    Ir_Func func = (Ir_Func) GlobalScope.Var_Value
                            .get(".func.%s.construct".formatted(tmpnode.type.type));
                    CurrentBlock.add_inst(new Call(func, tmpnode.Pointer));
                }
            }
            return;
        }
        if (tmpnode.isfunc) {
            tmpnode.Pointer = CurrentFunc.Get_This();
        } else
            tmpnode.Pointer = Get_Value(tmpnode.name,
                    CurrentFunc.Get_This());
        assert (tmpnode.Value == null);
        // DEBUG("[VAr to str]%s".formatted(tmpnode.name));
    };

    @Override
    public void visit(IndexNode tmpnode) {
        // DEBUG(tmpnode.content);
        tmpnode.belongs.accept(this);
        Ir_Value Pre = Get_Value(tmpnode.belongs);
        Ir_Reg tmp = null;
        for (var each : tmpnode.IndexList) {
            each.accept(this);
            tmp = new Ir_Reg(Find_Available_Name(".middle", 0), ((Pointer_Type) Pre.Type));
            GEP tmpGep = new GEP(tmp, Pre, Get_Value(each), true);
            CurrentBlock.add_inst(tmpGep);
            Pre = Get_Value(tmp);
        }
        tmpnode.Pointer = tmp;
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
            tmpnode.Pointer = tmpnode.belongs.Pointer;// Store This in tmpnode
        } else {
            assert (tmpnode.belongs.Pointer.Type instanceof Pointer_Type);
            Struct_Type TmpType = (Struct_Type) ((Pointer_Type) tmpnode.belongs.Pointer.Type).To_Type;
            Ir_IntConstant offset = new Ir_IntConstant(TmpType.Get_Offset(tmpnode.name));
            tmpnode.Pointer = new Ir_Reg(Find_Available_Name(".middle", 0), new Pointer_Type(To_Ir_Type(tmpnode.type)));
            GEP tmp_GEP = new GEP(tmpnode.Pointer, tmpnode.belongs.Pointer, offset, false);
            CurrentBlock.add_inst(tmp_GEP);
        }
    };

    @Override
    public void visit(BinaryexprNode tmpnode) {// TODO
        tmpnode.lv.accept(this);
        tmpnode.rv.accept(this);
        tmpnode.Value = new Ir_Reg(Find_Available_Name(".middle", 0), To_Ir_Type(tmpnode.type));
        if (tmpnode.op.equals("="))// SP for Assign
        {
            Ir_Value tmpv = Get_Value(tmpnode.rv);
            Store_Value(tmpnode.lv.Pointer, tmpv);
            return;
        }
        if (tmpnode.lv.type.type.equals("string")) {// ALERT: All String should be Left Value
            ArrayList<Ir_Value> LVparas = new ArrayList<>();
            assert (tmpnode.lv.Pointer != null);
            assert (tmpnode.rv.Pointer != null);
            LVparas.add(tmpnode.lv.Pointer);
            LVparas.add(tmpnode.rv.Pointer);
            if (tmpnode.op.equals("+")) {
                Ir_Func Add_func = (Ir_Func) GlobalScope.Var_Value.get(".func.Add_String_Together_No_Collision_Please");
                tmpnode.Pointer = Get_Middle(new Pointer_Type(To_Ir_Type(tmpnode.type)));// SP for string+string:should
                                                                                         // be left value
                CurrentBlock.add_inst(new Alloca(tmpnode.Pointer));
                CurrentBlock.add_inst(new Call(tmpnode.Value, Add_func, LVparas));
                Store_Value(tmpnode.Pointer, tmpnode.Value);
                tmpnode.Value = null;
                return;
            } else if (tmpnode.op.equals("==")) {
                Ir_Func Equal_func = (Ir_Func) GlobalScope.Var_Value
                        .get(".func.Equal_String_Together_No_Collision_Please");
                CurrentBlock.add_inst(new Call(tmpnode.Value, Equal_func, LVparas));
                return;
            } else if (tmpnode.op.equals("!=")) {
                Ir_Func Equal_func = (Ir_Func) GlobalScope.Var_Value
                        .get(".func.Not_Equal_String_Together_No_Collision_Please");
                CurrentBlock.add_inst(new Call(tmpnode.Value, Equal_func, LVparas));
                return;
            }

        }
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
        Store_Value(tmpnode.lv.Pointer, tmpnode.Value);
    };

    @Override
    public void visit(ExprNode tmpnode) {
        new FUCKER("[Fatal Error]:Should never get here:Exprnode");

    };

    @Override
    public void visit(PreexprNode tmpnode) {
        // DEBUG(tmpnode.content);
        tmpnode.rv.accept(this);
        Ir_IntConstant tmp = new Ir_IntConstant(1);
        Ir_Value tmpvalue, mid_tmp;
        switch (tmpnode.op) {
            case "++":
                assert (tmpnode.rv.Pointer != null);
                tmpvalue = Get_Value(tmpnode.rv);// Load i from tmpnode.rv.Pointer
                mid_tmp = Get_Middle(tmpvalue.Type);
                CurrentBlock.add_inst(new BinaryOp(mid_tmp, "+", tmpvalue, tmp));// i=i+1
                Store_Value(tmpnode.rv.Pointer, mid_tmp);// Store back to Pointer
                tmpnode.Pointer = tmpnode.rv.Pointer;
                break;
            case "--":
                assert (tmpnode.rv.Pointer != null);
                tmpvalue = Get_Value(tmpnode.rv);// Load i from tmpnode.rv.Pointer
                mid_tmp = Get_Middle(tmpvalue.Type);
                CurrentBlock.add_inst(new BinaryOp(mid_tmp, "-", tmpvalue, tmp));// i=i+1
                Store_Value(tmpnode.rv.Pointer, mid_tmp);// Store back to Pointer
                tmpnode.Pointer = tmpnode.rv.Pointer;
                break;
            case "!":
                tmpnode.Value = new Ir_Reg(Find_Available_Name(".middle", 0), To_Ir_Type(tmpnode.type));
                CurrentBlock.add_inst(new BinaryOp(tmpnode.Value, "^", Get_Value(tmpnode.rv), new Ir_BoolConst(true)));
                break;
            case "~":
                tmpnode.Value = new Ir_Reg(Find_Available_Name(".middle", 0), To_Ir_Type(tmpnode.type));
                CurrentBlock.add_inst(new BinaryOp(tmpnode.Value, "^", Get_Value(tmpnode.rv), new Ir_IntConstant(1)));
                break;
            case "-":
                tmpnode.Value = new Ir_Reg(Find_Available_Name(".middle", 0), To_Ir_Type(tmpnode.type));
                CurrentBlock.add_inst(new BinaryOp(tmpnode.Value, "-", new Ir_IntConstant(0), Get_Value(tmpnode.rv)));
                break;
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
        CurrentBlock.end_block_with(new Br(Get_Value(tmpnode.Cond), If_Then, If_Else));
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
            Ir_Value tmpv = Get_Value(tmpnode.RetValue);
            Store_Value(CurrentFunc.retval, tmpv);
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
        CurrentBlock.end_block_with(new Br(Get_Value(tmpnode.End), While_Body, While_End));
        // System.out.println("[asdas] %s".formatted(CurrentBlock.To_String()));
        CurrentFunc.Add_Block(While_Body);
        CurrentBlock = While_Body;
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
            // DEBUG(each.To_String());
        }
        for (var each : Blocks) {
            // DEBUG(each.To_String()+"\n");
            str += each.To_String() + "\n";
        }
        return str;
    }

}