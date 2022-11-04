package astnode.defnode;
import java.util.ArrayList;
import astnode.ASTVisitor;
import astnode.SuiteNode;
import astnode.basicnode.TypeNode;
import astnode.basicnode.VarNode;
import utils.Scope;
import astnode.basicnode.LamFuncNode;
public class FuncdefNode extends DefNode{
    public ArrayList<SingleAssignNode> paras=new ArrayList<>();
    public SuiteNode suite;
    public Scope scope=new Scope();
    public boolean Returned=false;
    public FuncdefNode(){
        super();
    }
    public FuncdefNode(LamFuncNode node)
    {
        paras=new ArrayList<>(node.paras);
        type=new TypeNode(node.type);
    }  
    public FuncdefNode(String name){
        super();
        Name=name;
    }
    @Override
    public void accept(ASTVisitor vis){
        vis.visit(this);
    }
}
