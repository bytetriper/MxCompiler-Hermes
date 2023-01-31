package backend;

import ASM.Asm_BasicBlock;
import ASM.Asm_FuncBlock;
import ASM.asm_inst.*;

public interface Allocater {
    public void visit(Asm_FuncBlock tmpnode);

    public void visit(Asm_BasicBlock tmpnode);

    public void visit(Asm_BinaryOp tmpnode);

    public void visit(Asm_Jump tmpnode);

    public void visit(Asm_J tmpnode);

    public void visit(Asm_Neg tmpnode);

    public void visit(Asm_La tmpnode);

    public void visit(Asm_BoolOp tmpnode);

    public void visit(Asm_Ret tmpnode);

    public void visit(Asm_Call tmpnode);

    public void visit(Asm_Store tmpnode);

    public void visit(Asm_Globel_DeclareVar tmpnode);

    public void visit(Asm_Lui tmpnode);

    public void visit(Asm_Li tmpnode);

    public void visit(Asm_Mv tmpnode);

    public void visit(Asm_SexzOp tmpnode);

    public void visit(Asm_Load tmpnode);

    public void visit(Asm_Global_Declare tmpnode);
}
