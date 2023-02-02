package backend;
import ASM.Asm_BasicBlock;
import ASM.Asm_FuncBlock;
public interface AsmPass {
    public void visit(Asm_FuncBlock tmpnode);

    public void visit(Asm_BasicBlock tmpnode);
}
