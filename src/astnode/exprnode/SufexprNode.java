package astnode.exprnode;
import astnode.ASTVisitor;
public class SufexprNode extends ExprNode{
    public ExprNode lv;
    public String op;
    public SufexprNode(){
        super();
    }
    @Override
    public void accept(ASTVisitor vis)
    {
        vis.visit(this);
    }
}

