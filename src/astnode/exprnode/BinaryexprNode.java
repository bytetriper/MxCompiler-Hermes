package astnode.exprnode;
import astnode.ASTVisitor;
public class BinaryexprNode extends ExprNode{
    public ExprNode lv,rv;
    public String op;
    public BinaryexprNode(){
        super();
    }
    @Override
    public void accept(ASTVisitor vis)
    {
        vis.visit(this);
    }
}

