package frontend;
import astnode.*;
import astnode.basicnode.*;
import astnode.exprnode.*;
import astnode.stmtsnode.*;
import astnode.defnode.*;
public class SymbolCollector implements ASTVisitor{
    public SymbolCollector(){}
    @Override
    public void visit(AstNode tmpnode){};
    public void FUCK(){
        throw new RuntimeException("[RE] Already Existed");
    }
   @Override
    public void visit(ProgramNode tmpnode){
        tmpnode.GlobalScope.init();
        for(var each:tmpnode.UnitList)
        {
            if(each instanceof ClassdefNode)
            {
                tmpnode.GlobalScope.Push(((ClassdefNode)each).Name,(ClassdefNode)each);
                ((ClassdefNode)each).scope.faScope=tmpnode.GlobalScope;
                each.accept(this);
            }
            if(each instanceof FuncdefNode)
            {
                tmpnode.GlobalScope.Push(((FuncdefNode)each).Name,(FuncdefNode)each);
                ((FuncdefNode)each).scope.faScope=tmpnode.GlobalScope;
                each.accept(this);
            }
        }
    }
   @Override
    public void visit(SuiteNode tmpnode){};
   @Override
    public void visit(BoolNode tmpnode){};
   @Override
    public void visit(ConstNode tmpnode){};
   @Override
    public void visit(FuncNode tmpnode){};
   @Override
    public void visit(IndexNode tmpnode){};
   @Override
    public void visit(IntegerNode tmpnode){};
   @Override
    public void visit(LamFuncNode tmpnode){
    };
   @Override
    public void visit(ListSufNode tmpnode){};
    @Override
 public void visit(SingleAssignNode tmpnode){};
   @Override
    public void visit(NullNode tmpnode){};
   @Override
    public void visit(StringNode tmpnode){};
   @Override
    public void visit(ThisNode tmpnode){};
   @Override
    public void visit(TypeNode tmpnode){};
   @Override
    public void visit(VarNode tmpnode){};
   @Override
    public void visit(ClassdefNode tmpnode){
        boolean construct=false;
        for(var stmt:tmpnode.suite.StmtList)
        {
            if(stmt instanceof ConstructordefNode)
            {
                if(construct)
                    throw new RuntimeException(String.format("[Symbol Collect]class %s has more than one constructor",tmpnode.Name));
                tmpnode.constructor=((ConstructordefNode)stmt);
                if(((ConstructordefNode)stmt).paras.size()!=0)
                    throw new RuntimeException("Constructor has parameters");
                if(!((ConstructordefNode)stmt).type.type.equals(tmpnode.Name)) 
                    throw new RuntimeException("[Constructor Check]Constructor unmatched");
                construct=true;         
                tmpnode.scope.Push(tmpnode.Name, (FuncdefNode)stmt);
                stmt.accept(this);
                ((ConstructordefNode)stmt).scope.faScope=tmpnode.scope;
                
            }
            if(stmt instanceof FuncdefNode)
            {
                if(stmt instanceof LamFuncNode)
                    continue;
                tmpnode.scope.Push(((FuncdefNode)stmt).Name, (FuncdefNode)stmt);
                ((FuncdefNode)stmt).scope.faScope=tmpnode.scope;
                stmt.accept(this);
            }
            if(stmt instanceof VardefNode)
            {
                for(var sa:((VardefNode)stmt).VarList)
                {
                    //System.out.println(((SingleAssignNode)sa).Name);
                    tmpnode.scope.Push(((SingleAssignNode)sa).Name,(SingleAssignNode)sa);
                }
            }
        }
    };
   @Override
    public void visit(ConstructordefNode tmpnode){
    };
   @Override
    public void visit(DefNode tmpnode){};
   @Override
    public void visit(FuncdefNode tmpnode){
        if(tmpnode.paras!=null)
            for(var sa:tmpnode.paras)
            {
                tmpnode.scope.Push(sa.Name,sa);
            }
    };
   @Override
    public void visit(VardefNode tmpnode){};
   @Override
    public void visit(BinaryexprNode tmpnode){};
   @Override
    public void visit(ExprNode tmpnode){};
   @Override
    public void visit(MemberexprNode tmpnode){};
   @Override
    public void visit(PreexprNode tmpnode){};
   @Override
    public void visit(SufexprNode tmpnode){};
   @Override
    public void visit(BreakstmtNode tmpnode){};
   @Override
    public void visit(ContinuestmtNode tmpnode){};
   @Override
    public void visit(EmptystmtNode tmpnode){};
   @Override
    public void visit(ExprstmtNode tmpnode){};
   @Override
    public void visit(ForstmtNode tmpnode){};
   @Override
    public void visit(IfstmtNode tmpnode){};
   @Override
    public void visit(ReturnstmtNode tmpnode){};
   @Override
    public void visit(StmtNode tmpnode){};
   @Override
    public void visit(WhilestmtNode tmpnode){};
}  
