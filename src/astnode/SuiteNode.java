package astnode;

import java.util.ArrayList;
import utils.*;
import astnode.stmtsnode.StmtNode;

public class SuiteNode extends StmtNode {
    public ArrayList<StmtNode> StmtList=new ArrayList<>();
    public Scope scope;
    public SuiteNode(){
        super();
        scope=new Scope();
    }
    @Override
    public void accept(ASTVisitor vis)
    {
        vis.visit(this);
    }
}
