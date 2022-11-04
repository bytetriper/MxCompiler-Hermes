package astnode.stmtsnode;

import astnode.ASTVisitor;
import astnode.SuiteNode;
import astnode.exprnode.ExprNode;
public class IfstmtNode extends StmtNode{
    public ExprNode Cond;
    public SuiteNode Ifsuite;
    public SuiteNode Elsesuite;
    public IfstmtNode(){
        super();
    }
    @Override
    public void accept(ASTVisitor vis)
    {
        vis.visit(this);
    }
}