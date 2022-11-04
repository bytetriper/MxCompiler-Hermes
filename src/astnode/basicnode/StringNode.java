package astnode.basicnode;

import astnode.ASTVisitor;
public class StringNode extends ConstNode{
    public String content;
    public StringNode(){
        super();
    }
    @Override
    public void accept(ASTVisitor vis)
    {
        vis.visit(this);
    }
}
