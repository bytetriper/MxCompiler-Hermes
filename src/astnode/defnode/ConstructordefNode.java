package astnode.defnode;
import astnode.ASTVisitor;
import astnode.SuiteNode;
import astnode.basicnode.*;
public class ConstructordefNode extends FuncdefNode{
    public ConstructordefNode(){
        super();
        type=new TypeNode("void");
        type.fa=this;
    }
    @Override
    public void accept(ASTVisitor vis){
        vis.visit((FuncdefNode)this);
    }
}
