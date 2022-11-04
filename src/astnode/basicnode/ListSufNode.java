package astnode.basicnode;

import astnode.AstNode;
import astnode.ASTVisitor;
public class ListSufNode extends AstNode{
    public ListSufNode(){
        super();
    }
    @Override
    public void accept(ASTVisitor vis)
    {
        vis.visit(this);
    }
}
