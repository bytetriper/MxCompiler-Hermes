package astnode.exprnode;
import astnode.basicnode.TypeNode;
import astnode.defnode.FuncdefNode;
import astnode.stmtsnode.StmtNode;
public abstract class ExprNode extends StmtNode{
    public TypeNode type;
    public boolean isfunc;
    public boolean isleft=false;
    public FuncdefNode isFuncNode;
    public ExprNode(){
        super();
        isfunc=false;
    }
}

