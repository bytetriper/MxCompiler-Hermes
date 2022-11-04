package astnode.defnode;
import astnode.stmtsnode.StmtNode;
import astnode.ASTVisitor;
import astnode.basicnode.TypeNode;
public class DefNode extends StmtNode{
    public String Name;
    public TypeNode type;
    public DefNode(){
        super();
    }
    @Override
    public void accept(ASTVisitor vis){
        vis.visit(this);
    }
}
