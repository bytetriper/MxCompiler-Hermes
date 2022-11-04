package astnode.basicnode;

import astnode.exprnode.ExprNode;
import astnode.ASTVisitor;
import java.util.ArrayList;
public class VarNode extends ExprNode{
    public String name;
    public ExprNode value;
    public ArrayList<ExprNode> SizeList=new ArrayList<>();
    public VarNode(){
        super();
    }
    public VarNode(TypeNode Type){
        super();
        type=Type;
    }
    @Override
    public void accept(ASTVisitor vis)
    {
        vis.visit(this);
    }
}
