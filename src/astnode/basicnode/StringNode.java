package astnode.basicnode;

import java.util.ArrayList;

import astnode.ASTVisitor;
public class StringNode extends ConstNode{
    public ArrayList<Integer> Content;
    public StringNode(){
        super();
    }
    @Override
    public void accept(ASTVisitor vis)
    {
        vis.visit(this);
    }
}
