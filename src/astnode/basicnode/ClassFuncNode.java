package astnode.basicnode;

import astnode.AstNode;
import astnode.ASTVisitor;
public class ClassFuncNode extends AstNode{
    public ClassFuncNode(){
        super();
    }
    @Override
    public void accept(ASTVisitor vis)
    {
        vis.visit(this);
    }
}
