package astnode.defnode;
import java.util.ArrayList;

import astnode.ASTVisitor;
import astnode.basicnode.VarNode;
import astnode.basicnode.*;
public class VardefNode extends DefNode{
    public ArrayList<SingleAssignNode> VarList=new ArrayList<>();
    public VardefNode(){
        super();
        type=new TypeNode();
        type.fa=this;
    }
    @Override
    public void accept(ASTVisitor vis){
        vis.visit(this);
    }
}
