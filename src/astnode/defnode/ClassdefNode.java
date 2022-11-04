package astnode.defnode;
import astnode.ASTVisitor;
import astnode.SuiteNode;
import astnode.basicnode.TypeNode;
import utils.*;
public class ClassdefNode extends DefNode{
    public SuiteNode suite;
    public GScope scope=new GScope();
    public ConstructordefNode constructor;
    public ClassdefNode(String n){
        super();
        scope.isclass=true;
        type=new TypeNode();
        type.fa=this;
        type.type="Class";
        Name=n;
    }
    @Override
    public void accept(ASTVisitor vis){
        vis.visit(this);
    }
}
