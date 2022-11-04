package astnode.stmtsnode;

import astnode.ASTVisitor;
import astnode.SuiteNode;
import astnode.exprnode.ExprNode;
public class ForstmtNode extends StmtNode{
    public StmtNode Init;
    public ExprNode End,Change;
    public SuiteNode suite;
    public ForstmtNode(){
        super();
    }
    @Override
    public void accept(ASTVisitor vis)
    {
        vis.visit(this);
    }
}