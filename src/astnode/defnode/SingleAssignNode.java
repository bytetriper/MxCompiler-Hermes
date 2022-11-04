package astnode.defnode;
import java.lang.ProcessBuilder.Redirect.Type;
import java.util.ArrayList;

import astnode.ASTVisitor;
import astnode.basicnode.*;
import astnode.exprnode.ExprNode;
public class SingleAssignNode extends DefNode{
    public ExprNode value;
    public SingleAssignNode(){
        super();
        type=new TypeNode();
        type.fa=this;
    }
    public SingleAssignNode(TypeNode Type){
        super();
        type=Type;
        type.fa=this;
    }
    @Override
    public void accept(ASTVisitor vis){
        vis.visit(this);
    }
}
