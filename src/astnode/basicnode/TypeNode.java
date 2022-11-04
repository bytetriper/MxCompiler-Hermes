package astnode.basicnode;

import astnode.AstNode;
import astnode.ASTVisitor;
public class TypeNode extends AstNode {
    public String type;
    public int dimension;
    public TypeNode(){
        super();
        dimension=0;
    }
    public TypeNode(String t){
        super();
        type=t;
    }
    public TypeNode(String t,int d){
        super();
        type=t;
        dimension=d;
    }
    public TypeNode(TypeNode t)
    {
        super();
        type=t.type;
        dimension=t.dimension;
    }
    @Override
    public void accept(ASTVisitor vis)
    {
        vis.visit(this);
    }
}
