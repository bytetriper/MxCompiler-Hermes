package astnode.stmtsnode;
import astnode.ASTVisitor;
import astnode.exprnode.ExprNode;
public class ReturnstmtNode extends StmtNode{
    public ExprNode RetValue;
    public ReturnstmtNode(){
        super();
    }
    @Override
    public void accept(ASTVisitor vis)
    {
        vis.visit(this);
    }
}