package astnode.basicnode;
import astnode.ASTVisitor;

public class BoolNode extends ConstNode{
    public boolean BoolValue;
    public BoolNode()
    {
        super();   
    }
    @Override
    public void accept(ASTVisitor vis)
    {
        vis.visit(this);
    }
}
