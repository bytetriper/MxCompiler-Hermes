package astnode.basicnode;
import java.util.ArrayList;

import astnode.ASTVisitor;
import astnode.exprnode.ExprNode;

public class IndexNode extends ExprNode{
    public ExprNode belongs;
    public ArrayList<ExprNode> IndexList=new ArrayList<>();
    public IndexNode()
    {
        super();   
    }
    @Override
    public void accept(ASTVisitor vis)
    {
        vis.visit(this);
    }
}