package IR;
import IR.ir_inst.*;
public interface IRVisitor {
    abstract public void visit(Store tmpnode);
    abstract public void visit(Global_DeclareVar tmpnode);
    abstract public void visit(Ptrtoint tmpnode);
    abstract public void visit(BinaryOp tmpnode);
    abstract public void visit(GEP tmpnode);
    abstract public void visit(Bitcast tmpnode);
    abstract public void visit(Ret tmpnode);
    abstract public void visit(Zext tmpnode);
    abstract public void visit(Trunc tmpnode);
    abstract public void visit(Alloca tmpnode);
    abstract public void visit(Inttoptr tmpnode);
    abstract public void visit(Load tmpnode);
    abstract public void visit(Br tmpnode);
    abstract public void visit(Icmp tmpnode);
    abstract public void visit(Global_Declare tmpnode);
    abstract public void visit(Uncond_Br tmpnode);
    abstract public void visit(Call tmpnode);
    abstract public void visit(Declare_Class tmpnode);
    abstract public void visit(Declare_Func tmpnode);
    abstract public void visit(BasicBlock tmpBlock);
    abstract public void visit(FuncBlock tmpBlock);
    abstract public void visit(IRBuilder builder);

}
