package astnode;
import java.util.HashMap;

import IR.ir_value.Ir_Value;
abstract public class AstNode {
    public String content;
    public AstNode fa;
    public Ir_Value Value,Pointer;

    public AstNode(){
        
    }
    
    abstract public void accept(ASTVisitor vis);
}
