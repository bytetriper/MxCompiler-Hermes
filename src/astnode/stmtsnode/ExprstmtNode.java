package astnode.stmtsnode;
import astnode.ASTVisitor;
public class ExprstmtNode extends StmtNode{
    public ExprstmtNode(){
        super();
    }
    @Override
    public void accept(ASTVisitor vis)
    {
        vis.visit(this);
    }
}