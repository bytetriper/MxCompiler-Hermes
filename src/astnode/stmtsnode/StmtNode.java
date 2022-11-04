package astnode.stmtsnode;
import astnode.AstNode;
public abstract class StmtNode extends AstNode{
    public boolean inLoop=false;
    public boolean inFunc=false;
    public String inClass;
    public StmtNode(){
        super();
    }
}