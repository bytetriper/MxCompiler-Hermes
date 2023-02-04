package backend;
import ASM.Asm_BasicBlock;
import ASM.Asm_FuncBlock;
import ASM.asm_inst.Asm_Inst;
public class NodesCollector implements AsmPass {
    public Asm_FuncBlock CurrentFunc;
    public Asm_BasicBlock CurrentBlock;
    @Override
    public void visit(Asm_BasicBlock blk) {
        CurrentBlock=blk;
        for(var inst:blk.Insts){
            inst.Node=new GraphNode<Asm_Inst>(inst);
            for(var each:inst.Node.Use){
                each.UseList.add(inst.Node);    
            }
            CurrentFunc.InteferenceGraph.Add_Regs(inst.Node.Use);
            CurrentFunc.InteferenceGraph.Add_Regs(inst.Node.Def);
        }
    }
    @Override
    public void visit(Asm_FuncBlock blk) {
        CurrentFunc=blk;
        for(var basicblk:blk.Blks){
            visit(basicblk);
        }
    }
}
