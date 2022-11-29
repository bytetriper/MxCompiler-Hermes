package IR;

import astnode.ASTVisitor;

import java.util.ArrayList;
import java.util.HashMap;

import astnode.*;
import astnode.basicnode.*;
import astnode.exprnode.*;
import astnode.defnode.*;
import astnode.stmtsnode.*;
import utils.GScope;
public class IRBuilder implements ASTVisitor {
    public GScope GlobalScope;
    public HashMap<String,String> Rename;
    public ArrayList<BasicBlock> Blocks;
    public BasicBlock CurrentBlock;
    public FuncBlock CurrentFunc;
    public ArrayList<String> Init_way;
    public int ClassCnt=0;
    public void New_Block(){
        assert(CurrentFunc!=null);
        CurrentBlock=new BasicBlock(CurrentFunc);
        Blocks.add(CurrentBlock);
    }
    public void Init(){
        for(var each:GlobalScope.Classmember.keySet())
        { 
            ClassCnt++;
            Rename.put(each,".class.%d".formatted(ClassCnt));
        }
    }
    public IRBuilder(ProgramNode root) {
        Rename=new HashMap<>();
        Blocks=new ArrayList<>();
        //New_Block();
        GlobalScope=root.GlobalScope;
        Init();
    }
    @Override
    public void visit(SuiteNode tmpnode) {
        
    };

    @Override
    public void visit(ProgramNode tmpnode) {
        for(var each:tmpnode.UnitList)
        {
            visit(each);
        }
    };

    @Override
    public void visit(AstNode tmpnode) {
    };

    @Override
    public void visit(ClassdefNode tmpnode) {
        visit(tmpnode.suite);
    };

    @Override
    public void visit(SingleAssignNode tmpnode) {
    };

    @Override
    public void visit(ConstructordefNode tmpnode) {
    };

    @Override
    public void visit(FuncdefNode tmpnode) {
        
        visit(tmpnode.suite);
    };

    @Override
    public void visit(VardefNode tmpnode) {
    };

    @Override
    public void visit(DefNode tmpnode) {
    };

    @Override
    public void visit(LamFuncNode tmpnode) {
    };

    @Override
    public void visit(FuncNode tmpnode) {
    };

    @Override
    public void visit(NullNode tmpnode) {
    };

    @Override
    public void visit(BoolNode tmpnode) {
    };

    @Override
    public void visit(StringNode tmpnode) {
    };

    @Override
    public void visit(IntegerNode tmpnode) {
    };

    @Override
    public void visit(ConstNode tmpnode) {
    };

    @Override
    public void visit(TypeNode tmpnode) {
    };

    @Override
    public void visit(ListSufNode tmpnode) {
    };

    @Override
    public void visit(VarNode tmpnode) {
    };

    @Override
    public void visit(IndexNode tmpnode) {
    };

    @Override
    public void visit(ThisNode tmpnode) {
    };

    @Override
    public void visit(MemberexprNode tmpnode) {
    };

    @Override
    public void visit(BinaryexprNode tmpnode) {
    };

    @Override
    public void visit(SufexprNode tmpnode) {
    };

    @Override
    public void visit(ExprNode tmpnode) {
    };

    @Override
    public void visit(PreexprNode tmpnode) {
    };

    @Override
    public void visit(BreakstmtNode tmpnode) {
    };

    @Override
    public void visit(IfstmtNode tmpnode) {
    };

    @Override
    public void visit(ExprstmtNode tmpnode) {
    };

    @Override
    public void visit(EmptystmtNode tmpnode) {
    };

    @Override
    public void visit(ContinuestmtNode tmpnode) {
    };

    @Override
    public void visit(ReturnstmtNode tmpnode) {
    };

    @Override
    public void visit(ForstmtNode tmpnode) {
    };

    @Override
    public void visit(WhilestmtNode tmpnode) {
    };

    @Override
    public void visit(StmtNode tmpnode) {
    };
}