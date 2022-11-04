package astnode.stmtsnode;
import astnode.ASTVisitor;
public class EmptystmtNode extends StmtNode{
    public EmptystmtNode(){
        super();
    }
    @Override
    public void accept(ASTVisitor vis)
    {
        vis.visit(this);
    }
}