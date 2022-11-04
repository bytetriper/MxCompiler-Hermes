package astnode.stmtsnode;
import astnode.ASTVisitor;
public class BreakstmtNode extends StmtNode{
    public BreakstmtNode(){
        super();
    }
    @Override
    public void accept(ASTVisitor vis)
    {
        vis.visit(this);
    }
}