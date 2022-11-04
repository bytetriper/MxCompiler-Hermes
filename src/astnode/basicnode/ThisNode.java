package astnode.basicnode;
import astnode.exprnode.ExprNode;
import astnode.ASTVisitor;
public class ThisNode extends ExprNode{
    public ThisNode(){
        super();
    }
    @Override
    public void accept(ASTVisitor vis)
    {
        vis.visit(this);
    }
}
