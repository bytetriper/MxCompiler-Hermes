package astnode;
import java.util.HashMap;;
abstract public class AstNode {
    public String content;
    public AstNode fa;
    public AstNode(){
        
    }
    
    abstract public void accept(ASTVisitor vis);
}
