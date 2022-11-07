package frontend;
import java.util.HashSet;
import java.util.Set;

import javax.management.RuntimeErrorException;

import org.stringtemplate.v4.ST;

import astnode.*;
import astnode.basicnode.*;
import astnode.exprnode.*;
import astnode.stmtsnode.*;
import astnode.defnode.*;
import utils.*;
public class SemanticChecker implements ASTVisitor{
public GScope GlobalScope;
public Scope CurrentScope;
public Set<String> BoolOp,LooseOp,MutualOp,BoolOnlyOp,IntOnlyOp,PrimitiveType;
public SemanticChecker(ProgramNode node){
    super();
    GlobalScope=node.GlobalScope;
    InitCheck();
    CurrentScope=GlobalScope;
    BoolOp=new HashSet<>();
    MutualOp=new HashSet<>();
    LooseOp=new HashSet<>();
    BoolOnlyOp=new HashSet<>();
    IntOnlyOp=new HashSet<>();
    PrimitiveType=new HashSet<>();
    BoolOp.add("<");BoolOp.add(">");BoolOp.add(">=");BoolOp.add("<=");BoolOp.add("==");BoolOp.add("!=");
    LooseOp.add("==");LooseOp.add("!=");LooseOp.add("=");
    BoolOnlyOp.add("&&");BoolOnlyOp.add("||");
    IntOnlyOp.add("-");IntOnlyOp.add("++");IntOnlyOp.add("--");
    IntOnlyOp.add(">>");IntOnlyOp.add("<<");IntOnlyOp.add("/");IntOnlyOp.add("*");
    IntOnlyOp.add("%");IntOnlyOp.add(">");IntOnlyOp.add("<");IntOnlyOp.add(">=");IntOnlyOp.add("<=");
    MutualOp.add("!");MutualOp.add("~");MutualOp.add("&");MutualOp.add("|");MutualOp.add("=");MutualOp.add("+");
    MutualOp.add("^");
    PrimitiveType.add("string");PrimitiveType.add("int");PrimitiveType.add("bool");
}
public void InitCheck(){
    if(!GlobalScope.InFuncScope("main"))
        FUCK("[Init Check]No main");
    if(GlobalScope.GetFuncType("main").type!="int")
        FUCK("[Init Check]Main not Correct");
    if(GlobalScope.Funcmember.get("main").paras.size()>0)
        FUCK("[Init Check]Main have paras");
}
public void FUCK(String str){
    throw new RuntimeException(str);
}
public boolean IsSameType(ExprNode n1,ExprNode n2)
{
    if(n1.type.type.equals(n2.type.type)&&n1.type.dimension==n2.type.dimension)
        return true;
    return false;
}
public boolean IsSameType(TypeNode n1,TypeNode n2)
{
    if(n1.type.equals(n2.type)&&n1.dimension==n2.dimension)
        return true;
    return false;
}
public boolean IsSameType(ExprNode n1,SingleAssignNode n2)
{
    if(n1.type.type.equals(n2.type.type)&&n1.type.dimension==n2.type.dimension)
        return true;
    return false;
}
public boolean IsSameType(ExprNode n1,TypeNode n2)
{
    if(n1.type.type.equals(n2.type)&&n1.type.dimension==n2.dimension)
        return true;
    return false;
}
public boolean IsSameType(ExprNode n1,String n2)
{
    if(n1.type.type.equals(n2)&&n1.type.dimension==0)
        return true;
    return false;
}
public boolean IsSameType(TypeNode n1,String n2)
{
    if(n1.type.equals(n2))
        return true;
    return false;
}
public void pass(StmtNode n1,StmtNode n2)
{
    n2.inFunc=n1.inFunc;
    n2.inLoop=n1.inLoop;
    n2.inClass=n1.inClass;
}
public void addResidual(SuiteNode suite,Scope parent)
{
    for(var each:suite.StmtList)
    {
        if(each instanceof IfstmtNode)
        {
            if(((IfstmtNode)each).Elsesuite!=null)
                ((IfstmtNode)each).Elsesuite.scope.faScope=parent;
            ((IfstmtNode)each).Ifsuite.scope.faScope=parent;
        }
        if(each instanceof ForstmtNode)
        {
            ((ForstmtNode)each).suite.scope.faScope=parent;
        }
        if(each instanceof WhilestmtNode)
        {
            ((WhilestmtNode)each).suite.scope.faScope=parent;
        }
        if(each instanceof SuiteNode)
        {
            ((SuiteNode)each).scope.faScope=parent;
        }
    }
}
@Override
 public void visit(AstNode tmpnode){};
@Override
 public void visit(ProgramNode tmpnode){
    //GlobalScope.print();
    for(var each:tmpnode.UnitList)
    {
        //System.out.println(each.content);
        each.accept(this); 
        if(each instanceof VardefNode)
        {
           
            for(var sa:((VardefNode)each).VarList)
            {
                tmpnode.GlobalScope.Push(((SingleAssignNode)sa).Name,(SingleAssignNode)sa);
            }
        }
    }
 };  
@Override
 public void visit(SuiteNode tmpnode){
    if(tmpnode.scope.isclass||tmpnode.scope.ismain)
        FUCK("[Fatal Error while Scoping] Isclass Or Ismain is true");
    if(tmpnode.scope.faScope==null)
        FUCK("[Scoping]No father scope");
    if(tmpnode.scope.belongNode==null)//SP for single suite
        tmpnode.scope.belongNode=tmpnode.scope.faScope.belongNode;
    CurrentScope=tmpnode.scope;
    addResidual(tmpnode, tmpnode.scope);
    //System.out.println(tmpnode.content);
    //CurrentScope.faScope.print();
    for(var each:tmpnode.StmtList)
    {
        pass(tmpnode,each);
        each.accept(this);
        if(each instanceof ReturnstmtNode)
        {
            //System.out.println(each.content);
            if(CurrentScope.belongNode==null)
                FUCK(String.format(String.format("[Returning]%s has no function to return",each.content)));
            if(CurrentScope.belongNode instanceof FuncdefNode)
            {
                FuncdefNode fnode=(FuncdefNode)CurrentScope.belongNode;
                System.out.println(each.content);
                if(IsSameType(fnode.type, "void")||fnode instanceof ConstructordefNode)//Constructor should be return void
                {
                    if(((ReturnstmtNode)each).RetValue!=null)
                        FUCK(String.format("[Returning]Mismatched Return Type Expected:%s Get:%s","null",((ReturnstmtNode)each).RetValue.type.type));
                }
                else
                {
                    if(((ReturnstmtNode)each).RetValue==null)
                        FUCK(String.format("[Returning]Mismatched Return Type Expected:%s Get:%s",fnode.type.type,"void"));                    
                    if(!IsSameType(fnode.type, ((ReturnstmtNode)each).RetValue.type))// test type match for return
                        if(!IsSameType(((ReturnstmtNode)each).RetValue.type,"null")||PrimitiveType.contains(fnode.type.type))//null SP for non-primitive type
                            FUCK(String.format("[Returning]Mismatched Return Type Expected:%s Get:%s",fnode.type.type,((ReturnstmtNode)each).RetValue.type.type));
                    fnode.Returned=true;
                }
            }
            else
            {
                if(CurrentScope.belongNode instanceof LamFuncNode)
                {
                    LamFuncNode fnode=(LamFuncNode)CurrentScope.belongNode;
                    if(((ReturnstmtNode)each).RetValue==null)
                        fnode.type=new TypeNode("void");
                    else
                        fnode.type=new TypeNode(((ReturnstmtNode)each).RetValue.type);
                }
                else
                    FUCK("[Returning:Fatal Error]Unexpected Type of belongNode!");
            }
        }
        if(each instanceof VardefNode)
        {
            for(var sa:((VardefNode)each).VarList)
            {
                tmpnode.scope.Push(sa.Name,sa);
            }
        }
        
    }
    CurrentScope=CurrentScope.faScope;
};        
@Override
 public void visit(BoolNode tmpnode){
    tmpnode.type=new TypeNode("bool");
 };     
@Override
 public void visit(ConstNode tmpnode){};
@Override
 public void visit(FuncNode tmpnode){
    tmpnode.name.isfunc=true;
    pass(tmpnode,tmpnode.name);
    tmpnode.name.accept(this);
    tmpnode.type=new TypeNode(tmpnode.name.type);
    FuncdefNode node=tmpnode.name.isFuncNode;
    System.out.println(tmpnode.ExprList);
    if(node.paras.size()!=tmpnode.ExprList.size())
    {    
        FUCK(String.format("[FuncCall]Func %s Size Not Match.Expect %d,get %d",tmpnode.content,node.paras.size(),tmpnode.ExprList.size()));
    }
    for(int i=0;i<node.paras.size();++i)
    {
        pass(tmpnode,tmpnode.ExprList.get(i));
        tmpnode.ExprList.get(i).accept(this);
        if(!IsSameType(tmpnode.ExprList.get(i), node.paras.get(i)))
            if(!IsSameType(tmpnode.ExprList.get(i),"null"))
                FUCK(String.format("[FuncCall]Parameter Type not Fit.expect %s[%d],get %s[%d]",node.paras.get(i).type.type,node.paras.get(i).type.dimension,
        tmpnode.ExprList.get(i).type.type,tmpnode.ExprList.get(i).type.dimension));
    }
};
@Override
 public void visit(IndexNode tmpnode){//a[1][2]
    pass(tmpnode,tmpnode.belongs);
    tmpnode.belongs.accept(this);
    tmpnode.type=new TypeNode(tmpnode.belongs.type);
    for(var each:tmpnode.IndexList)
    {
        pass(tmpnode,each);
        each.accept(this);
        if(!IsSameType(each,"int"))
            FUCK("[Indexing]Index not int");
    }
    //System.out.println(tmpnode.content);
    if(tmpnode.belongs.type.dimension<tmpnode.IndexList.size())
        FUCK("[Indexing] Index Too much");
    //System.out.println(tmpnode.belongs.type.dimension);
    //System.out.println(tmpnode.IndexList.size());
    tmpnode.type.dimension=tmpnode.belongs.type.dimension-tmpnode.IndexList.size();
    tmpnode.isleft=true;
 };
@Override
 public void visit(IntegerNode tmpnode){
    tmpnode.type=new TypeNode("int");
 };
@Override
 public void visit(LamFuncNode tmpnode){
    if(tmpnode.paras!=null)
        for(var sa:tmpnode.paras)
        {
            tmpnode.suite.scope.Push(sa.Name,sa);
        }
    System.out.println(tmpnode.content);
    if(tmpnode.FetchAll)
        tmpnode.suite.scope.faScope=CurrentScope;
    else
        tmpnode.suite.scope.faScope=GlobalScope;
    tmpnode.inFunc=true;
    
    pass(tmpnode,tmpnode.suite);
    tmpnode.type=new TypeNode("void");//default to be void
    tmpnode.suite.scope.belongNode=tmpnode;
    Scope tmpScope=CurrentScope;
    tmpnode.suite.accept(this);
    CurrentScope=tmpScope;//SP for GlobalScope situation   
    tmpnode.isFuncNode=new FuncdefNode(tmpnode); //For Func Specification
 };
@Override
 public void visit(ListSufNode tmpnode){};
@Override
 public void visit(NullNode tmpnode){
    tmpnode.type=new TypeNode("null");
 };
@Override
 public void visit(StringNode tmpnode){
    tmpnode.type=new TypeNode("string");
 };
@Override
 public void visit(ThisNode tmpnode){
    if(tmpnode.inClass==null)
        FUCK("[This]Not in Class");
    tmpnode.type=new TypeNode(tmpnode.inClass);
};
@Override
 public void visit(TypeNode tmpnode){};
@Override
 public void visit(VarNode tmpnode){
    //CurrentScope.print();
    System.out.println(tmpnode.content);
    if(tmpnode.isfunc)
    {
        System.out.println(String.format("[Visit Func Node]Func:%s",tmpnode.content));
        if(!CurrentScope.HasMethod(tmpnode.name)&&!tmpnode.name.equals(".new"))//new f() should be tolerated
            FUCK(String.format("[Func]Func %s not defined",tmpnode.name));
         if(CurrentScope.HasMethod(tmpnode.name))
            tmpnode.isFuncNode=CurrentScope.Find_Func(tmpnode.name);
        else
            FUCK(String.format("[Fatal Error]Func %s not defined but exists in scope",tmpnode.name)); 
        String.format("[Func]Func %s not defined",tmpnode.name);
        if(tmpnode.type==null)
        {    
            tmpnode.type=new TypeNode(tmpnode.isFuncNode.type);
        }
        return;
    }
    //GlobalScope.print();
    System.out.println(String.format("[Visit Var Node]Var:%s",tmpnode.content));
    if(!CurrentScope.HasValue(tmpnode.name)&&!tmpnode.name.equals(".new"))//Var from new should be tolerated
        FUCK(String.format("[Var]Var %s not defined",tmpnode.name));  
    if(tmpnode.type==null)
    {    
        //System.out.println(CurrentScope.Find_Type(tmpnode.name).dimension);
        tmpnode.type=new TypeNode(CurrentScope.Find_Type(tmpnode.name));
        System.out.println(String.format("[Analyzing]Decide Var %s as Type %s[%d]",tmpnode.name,tmpnode.type.type,tmpnode.type.dimension));
    }
    if(tmpnode.SizeList!=null)
    {    
        for(var expr:tmpnode.SizeList)
        {    
            pass(tmpnode,expr);
            expr.accept(this);
            if(!IsSameType(expr, "int"))
                FUCK("[Newing]Array index not int");
        }
    }
    //System.out.println(tmpnode.type.dimension);  
    tmpnode.isleft=true;
 };
@Override
 public void visit(ClassdefNode tmpnode){
    tmpnode.inClass=tmpnode.Name;
    addResidual(tmpnode.suite, tmpnode.scope);
    //System.out.println(tmpnode.content);
    tmpnode.scope.belongNode=tmpnode.scope.faScope.belongNode;
    tmpnode.scope.faScope=CurrentScope;
    CurrentScope=tmpnode.scope;
    for(var each:tmpnode.suite.StmtList)
    {
        pass(tmpnode,each);
        if(each instanceof VardefNode)
        {
            each.accept(this);
        }
        else if(each instanceof FuncdefNode)
        {
            //System.out.println(each.content);;
            if(!GlobalScope.InClassScope(((FuncdefNode)each).type.type));
            //WCurrentScope=((FuncdefNode)each).scope;
            each.accept(this);
        }
        else
        {
            FUCK(String.format("[Classdef]Undefined Sentence:%s",each.content));
        }
    }
    CurrentScope=CurrentScope.faScope;
    if(tmpnode.constructor!=null&&tmpnode.constructor.Returned)
        FUCK(String.format("[Constructor Check]class constructor %s has return value",tmpnode.Name ));
 };
@Override
 public void visit(ConstructordefNode tmpnode){
 };
@Override
 public void visit(DefNode tmpnode){
 };
@Override
 public void visit(FuncdefNode tmpnode){
    if(!GlobalScope.InClassScope(tmpnode.type.type))
        FUCK("[FuncDef] No such Return type");
    tmpnode.inFunc=true;
    tmpnode.scope.belongNode=tmpnode;
    addResidual(tmpnode.suite, tmpnode.scope);
    CurrentScope=tmpnode.scope;
    //System.out.println(tmpnode.content);
    for(var each:tmpnode.suite.StmtList)
    {
        //System.out.println(each.content);
        //CurrentScope.print();
        pass(tmpnode,each);
        each.accept(this);
        if(each instanceof ReturnstmtNode)
        {
            //System.out.println(each.content);
            if(tmpnode.type.type.equals("void")||tmpnode instanceof ConstructordefNode)//SP for construtor that doesn't have a return value
            {
                if(((ReturnstmtNode)each).RetValue!=null)
                    FUCK("[Return] Type Error,expected void");
            }
            else
            {
                //System.out.println(each.content);
                if(((ReturnstmtNode)each).RetValue==null)
                    FUCK(String.format("[Return] Type Error,expected %s,get %s",tmpnode.type.type,"void"));
                if(!(tmpnode.type.type.equals(((ReturnstmtNode)each).RetValue.type.type)))
                    FUCK(String.format("[Return] Type Error,expected %s,get %s",tmpnode.type.type,((ReturnstmtNode)each).RetValue.type.type));
                tmpnode.Returned=true;
            }
            
        }
        if(each instanceof VardefNode)
        {
            for(var sa:((VardefNode)each).VarList)
            {
                CurrentScope.Push(((SingleAssignNode)sa).Name,(SingleAssignNode)sa);
            }
        }
        //System.out.println(tmpnode.content);
       // System.out.println(tmpnode.Returned);
    }
    CurrentScope=CurrentScope.faScope;
    if(!tmpnode.Returned&&!IsSameType(tmpnode.type,"void")&&!(tmpnode instanceof ConstructordefNode))//SP for Constructor
    {
        if(!tmpnode.Name.equals("main"))
            FUCK(String.format("[Checking return]Function %s with type %s[%d] has no returned",tmpnode.Name,tmpnode.type.type,tmpnode.type.dimension));
        else
            tmpnode.Returned=true;
    }
    if(tmpnode.Returned)
        System.out.println(String.format("%s",tmpnode.Name));
};  
@Override
 public void visit(SingleAssignNode tmpnode){
    if(tmpnode.type.type.equals("void"))
        FUCK("[Varcheck]No void!");
    //System.out.println(tmpnode.value);
    if(tmpnode.value!=null)
    {    
        pass(tmpnode,tmpnode.value);
        tmpnode.value.accept(this);
    }
 };
public boolean AssignCheck(TypeNode lv,TypeNode rv,String op)//TypeCheck ,[]a=null tolerated
{
    if(IsSameType(rv, "null"))
    {
        if(!LooseOp.contains(op))
            FUCK(String.format("[Assign Check]%s is not for null", op));
        if(lv.dimension==0&&PrimitiveType.contains(lv.type))
            FUCK(String.format("[Assign Check]Null can't be asssigned to primitive type %s",lv.type));
    }
    else
    {
        if(!IsSameType(lv, rv))
            FUCK(String.format("[Assign Check]lv type %s[%d] mismatch rv type %s[%d]", lv.type,lv.dimension,rv.type,rv.dimension));
    }
    return true;
}
@Override
 public void visit(VardefNode tmpnode){
    //System.out.println(tmpnode.content);
    if(!GlobalScope.InClassScope(tmpnode.type.type))
        FUCK("[Vardef]NO SUCH TYPE");
    if(tmpnode.type.type.equals("void"))
        FUCK("[Vardef]No void!");
    for(var sa:tmpnode.VarList)
    {
        pass(tmpnode,sa);
        sa.accept(this);
        if(sa.value!=null)
        {
            AssignCheck(sa.type, sa.value.type,"=");
        }
    }
 };
@Override
 public void visit(BinaryexprNode tmpnode){
    //System.out.println("asd");
    //CurrentScope.print();
    //System.out.println(tmpnode.content);
    pass(tmpnode,tmpnode.lv);
    pass(tmpnode,tmpnode.rv);
    (tmpnode.lv).accept(this);
    if(!tmpnode.lv.isleft&&tmpnode.op.equals("="))
        FUCK(String.format("[Leftv Check]var %s is Not lv",tmpnode.lv.content));
    tmpnode.rv.accept(this);
    if(IsSameType(tmpnode.lv, tmpnode.rv))
    {    
        if(!LooseOp.contains(tmpnode.op))
        {
            if(IsSameType(tmpnode.lv,"int")&&!MutualOp.contains(tmpnode.op)&&!IntOnlyOp.contains(tmpnode.op))
                FUCK(String.format("[Op Type]Op %s is not for type %s", tmpnode.op,"int"));
            if(IsSameType(tmpnode.lv, "bool")&&!MutualOp.contains(tmpnode.op)&&!BoolOnlyOp.contains(tmpnode.op))
                FUCK(String.format("[Op Type]Op %s is not for type %s", tmpnode.op,"bool"));
            if(!IsSameType(tmpnode.lv,"int")&&!IsSameType(tmpnode.lv,"bool"))
                if(!IsSameType(tmpnode.lv, "string")||!(tmpnode.op.equals("+")||BoolOp.contains(tmpnode.op)))//SP for string
                    FUCK(String.format("[Op Type]Op %s is not for type %s[%d]", tmpnode.op,tmpnode.lv.type.type,tmpnode.lv.type.dimension));
        }
        if(BoolOp.contains(tmpnode.op))
            tmpnode.type=new TypeNode("bool");
        else
            tmpnode.type=new TypeNode(tmpnode.lv.type);
    }
    else
    {    
        //System.out.println(tmpnode.content);
        if(LooseOp.contains(tmpnode.op))
        {
            AssignCheck(tmpnode.lv.type, tmpnode.rv.type, tmpnode.op);
            if(tmpnode.op.equals("="))
                tmpnode.type=new TypeNode(tmpnode.lv.type);
            else
                tmpnode.type=new TypeNode("bool");
        }
        else
            throw new RuntimeException(String.format("[Expr]Type Not Match at BinaryExpr:%s[%d] != %s[%d]",tmpnode.lv.type.type,
            tmpnode.lv.type.dimension,tmpnode.rv.type.type,tmpnode.rv.type.dimension));
    }
 };
@Override
 public void visit(ExprNode tmpnode){
    System.out.print("[Fatal Error]ExprNode visited!");
 };
@Override
 public void visit(MemberexprNode tmpnode){
    //System.out.println("asjdksjladk");
    pass(tmpnode,tmpnode.belongs);
    tmpnode.belongs.accept(this);
    //tmpnode.belongClass=tmpnode.belongs.type.type;
    //System.out.println(tmpnode.content);
    //System.out.println(tmpnode.belongs.type.dimension);
    if(!(GlobalScope.hasClass(tmpnode.belongs.type.type)))
        FUCK("[Memberexpr] No such Belong type");
    if(tmpnode.isfunc)
    {   
        if(tmpnode.name.equals("size")&&tmpnode.belongs.type.dimension>0)
            tmpnode.name=".size";//tolerated
        else
            if(!(GlobalScope.hasMethod(tmpnode.belongs.type.type, tmpnode.name)))
                FUCK("[Memberexpr]No Such Func");
        if(tmpnode.name.equals(".size"))
            tmpnode.isFuncNode=GlobalScope.Funcmember.get(".size");
        else
            tmpnode.isFuncNode=GlobalScope.GetMethodInClass(tmpnode.belongs.type.type, tmpnode.name);
        tmpnode.type=new TypeNode(tmpnode.isFuncNode.type);
    }
    else
    {   
        //GlobalScope.Classmember.get(tmpnode.belongs.type.type).scope.print();
        if(!(GlobalScope.hasMember(tmpnode.belongs.type.type, tmpnode.name)))
            FUCK("[Memberexpr]No such Member");
        tmpnode.isleft=true;
        tmpnode.type=new TypeNode(GlobalScope.GetMemberType(tmpnode.belongs.type.type, tmpnode.name));
    }
    
};
@Override
 public void visit(PreexprNode tmpnode){
    pass(tmpnode,tmpnode.rv);
    tmpnode.rv.accept(this);
    tmpnode.type=tmpnode.rv.type;
    //System.out.println(tmpnode.content);
    if(IsSameType(tmpnode.rv,"bool")||IsSameType(tmpnode.rv,"int"))
    {
        if((tmpnode.op.equals("++")||tmpnode.op.equals("--")))
        {
            if(IsSameType(tmpnode.rv,"bool"))//bool valid check
                FUCK("[Prefix]++/-- on bool expr");
            else if((!tmpnode.rv.isleft)&&(tmpnode.op.equals("++")||tmpnode.op.equals("--")))//SP for ++/--'s demand for lv
                FUCK(String.format("[Pre expr lv check]Var %s is not lv",tmpnode.rv.content));
        }        
    }
    else
        FUCK(String.format("[Prefix]Pre expr must be int or bool,but get %s",tmpnode.type.type));   
    if(tmpnode.op.equals("++")||tmpnode.op.equals("--"))
        tmpnode.isleft=true;
 };
@Override
 public void visit(SufexprNode tmpnode){
    pass(tmpnode,tmpnode.lv);
    tmpnode.lv.accept(this);
    tmpnode.type=tmpnode.lv.type;
    //System.out.println(tmpnode.content);
    if(!IsSameType(tmpnode,"int"))
        FUCK(String.format("[Suffix]Suf expr must be int,but get %s",tmpnode.type.type));
    if(!tmpnode.lv.isleft)
        FUCK(String.format("[Leftv Check]var %s is Not lv",tmpnode.lv.content));
 };
@Override
 public void visit(BreakstmtNode tmpnode){
    if(!tmpnode.inLoop)
        FUCK("[break]Not in Loop");
};
@Override
 public void visit(ContinuestmtNode tmpnode){
    if(!tmpnode.inLoop)
        FUCK("[break]Not in Loop");
 };
@Override
 public void visit(EmptystmtNode tmpnode){};
@Override
 public void visit(ExprstmtNode tmpnode){
    FUCK("[Fatal Error]ExprNode visited");
}; 
@Override
 public void visit(ForstmtNode tmpnode){
    tmpnode.suite.scope.faScope=CurrentScope;
    CurrentScope=tmpnode.suite.scope;
    tmpnode.inLoop=true;
    pass(tmpnode,tmpnode.Init);
    pass(tmpnode,tmpnode.Change);
    pass(tmpnode,tmpnode.End);
    System.out.println(tmpnode.End.content);
    
    tmpnode.Init.accept(this);
    tmpnode.Change.accept(this);
    tmpnode.End.accept(this);
    if(!IsSameType(tmpnode.End,"bool")&&!IsSameType(tmpnode.End,"null"))
        FUCK(String.format("[While Check]Condition not bool,but %s",tmpnode.End.type));
    CurrentScope=CurrentScope.faScope;
    pass(tmpnode,tmpnode.suite);
    tmpnode.suite.accept(this);
 };
@Override
 public void visit(IfstmtNode tmpnode){
    pass(tmpnode,tmpnode.Cond);
    //System.out.println("asda");
    //CurrentScope.print();
    
    tmpnode.Cond.accept(this);
    System.out.println(tmpnode.Cond.content);
    if(!IsSameType(tmpnode.Cond,"bool"))
        FUCK(String.format("[If Condition]Type %s is Not Bool!",tmpnode.Cond.type.type));
    pass(tmpnode,tmpnode.Ifsuite);
    tmpnode.Ifsuite.scope.faScope=CurrentScope;
    tmpnode.Ifsuite.accept(this);
    if(tmpnode.Elsesuite!=null)
    {     
        tmpnode.Elsesuite.scope.faScope=CurrentScope;
        pass(tmpnode,tmpnode.Elsesuite);
        tmpnode.Elsesuite.accept(this);
    }
 };
@Override
 public void visit(ReturnstmtNode tmpnode){
    if(!tmpnode.inFunc)
        FUCK("[Return]Not in FUNC");
    if(tmpnode.RetValue!=null)
    {    
        pass(tmpnode,tmpnode.RetValue);
        tmpnode.RetValue.accept(this);
    }
 };
@Override
 public void visit(StmtNode tmpnode){};
@Override
 public void visit(WhilestmtNode tmpnode){
    tmpnode.inLoop=true;
    pass(tmpnode,tmpnode.End);
    tmpnode.End.accept(this);
    if(!IsSameType(tmpnode.End,"bool"))
        FUCK(String.format("[While Check]Condition not bool,but %s",tmpnode.End));
    tmpnode.suite.scope.faScope=CurrentScope;
    pass(tmpnode,tmpnode.suite);
    tmpnode.suite.accept(this);
 };
}