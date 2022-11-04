package astnode.exprnode;
import astnode.ASTVisitor;
public class NewexprNode extends ExprNode{
    public NewexprNode(){
        super();
    }
    @Override
    public void accept(ASTVisitor vis)
    {
        vis.visit(this);
    }
}

