package astnode.exprnode;
import astnode.ASTVisitor;
public class PreexprNode extends ExprNode{
    public ExprNode rv;
    public String op;
    public PreexprNode(){
        super();
    }
    @Override
    public void accept(ASTVisitor vis)
    {
        vis.visit(this);
    }
}

