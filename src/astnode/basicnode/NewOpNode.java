package astnode.basicnode;

import astnode.AstNode;
import astnode.ASTVisitor;
public class NewOpNode extends AstNode{
    public NewOpNode(){
        super();
    }
    @Override
    public void accept(ASTVisitor vis)
    {
        vis.visit(this);
    }
}
