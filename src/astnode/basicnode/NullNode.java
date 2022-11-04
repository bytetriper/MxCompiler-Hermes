package astnode.basicnode;

import astnode.ASTVisitor;
import astnode.exprnode.ExprNode;
public class NullNode extends ExprNode{
    public NullNode(){
        super();
        this.type=new TypeNode("null");
    }
    @Override
    public void accept(ASTVisitor vis)
    {
        vis.visit(this);
    }
}
