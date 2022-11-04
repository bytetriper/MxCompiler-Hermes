package astnode;
import java.util.ArrayList;
import utils.*;
public class ProgramNode extends AstNode {
    public ArrayList<AstNode> UnitList=new ArrayList<AstNode>();
    public GScope GlobalScope=new GScope();
    public ProgramNode(){
        super();
        GlobalScope.ismain=true;
    }
    @Override
    public void accept(ASTVisitor vis)
    {
        vis.visit(this);
    }
}
