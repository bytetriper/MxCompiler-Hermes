package astnode.stmtsnode;
import astnode.ASTVisitor;
import astnode.SuiteNode;
import astnode.exprnode.ExprNode;
import IR.BasicBlock;
public class WhilestmtNode extends StmtNode{
    public ExprNode End;
    public SuiteNode suite;
    public BasicBlock Condition_Block,End_Block;

    public WhilestmtNode(){
        super();
    }
    @Override
    public void accept(ASTVisitor vis)
    {
        vis.visit(this);
    }
}