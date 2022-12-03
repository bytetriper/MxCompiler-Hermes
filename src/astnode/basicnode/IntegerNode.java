package astnode.basicnode;

import astnode.ASTVisitor;
public class IntegerNode extends ConstNode{
    public int IntValue;
    public IntegerNode(){
        super();
    }
    @Override
    public void accept(ASTVisitor vis)
    {
        vis.visit(this);
    }
}
