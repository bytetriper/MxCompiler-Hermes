package astnode.exprnode;
import astnode.ASTVisitor;
public class MemberexprNode extends ExprNode{
    public ExprNode belongs;
    public String name;
    public MemberexprNode(){
        super();
    }
    @Override
    public void accept(ASTVisitor vis)
    {
        vis.visit(this);
    }
}

