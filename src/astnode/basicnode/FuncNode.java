package astnode.basicnode;
import astnode.exprnode.ExprNode;

import java.util.ArrayList;

import astnode.ASTVisitor;
public class FuncNode extends ExprNode{
    public ExprNode name;
    public ArrayList<ExprNode> ExprList=new ArrayList<>();
    public boolean IsInternal=false;
    public FuncNode(){
        super();
    }
    @Override
    public void accept(ASTVisitor vis)
    {
        vis.visit(this);
    }
}
