package astnode.stmtsnode;
import astnode.ASTVisitor;
import astnode.SuiteNode;
import astnode.exprnode.ExprNode;
public class WhilestmtNode extends StmtNode{
    public ExprNode End;
    public SuiteNode suite;
    public WhilestmtNode(){
        super();
    }
    @Override
    public void accept(ASTVisitor vis)
    {
        vis.visit(this);
    }
}