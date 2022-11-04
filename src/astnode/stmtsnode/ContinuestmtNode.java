package astnode.stmtsnode;
import astnode.ASTVisitor;
public class ContinuestmtNode extends StmtNode{
    public ContinuestmtNode(){
        super();
    }
    @Override
    public void accept(ASTVisitor vis)
    {
        vis.visit(this);
    }
}