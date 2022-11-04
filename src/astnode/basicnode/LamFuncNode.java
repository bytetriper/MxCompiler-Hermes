package astnode.basicnode;
import astnode.AstNode;
import astnode.SuiteNode;
import astnode.defnode.FuncdefNode;
import astnode.ASTVisitor;
import astnode.exprnode.ExprNode;
import astnode.defnode.SingleAssignNode;
import java.util.ArrayList;
public class LamFuncNode extends ExprNode{
    public SuiteNode suite=new SuiteNode();
    public ArrayList<SingleAssignNode> paras=new ArrayList<>();
    public boolean FetchAll=false;
    public LamFuncNode(){
        super();
    }
    @Override
    public void accept(ASTVisitor vis)
    {
        vis.visit(this);
    }
}
