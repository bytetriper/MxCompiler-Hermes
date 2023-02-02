package ASM.asm_inst;
import ASM.Asm_FuncBlock;
import backend.AsmVisitor;
public class Asm_Call extends Asm_Inst {
    String FuncName;
    Asm_FuncBlock targetFunc;
    public Asm_Call(String Funcname){
        FuncName=Funcname;
    }
    public Asm_Call(Asm_FuncBlock blk){
        targetFunc=blk;
        FuncName=blk.Name;
    }
    @Override
    public void accept(AsmVisitor allocater) {
        allocater.visit(this);
    }
    @Override
    public String To_String(){
        //call <func>
        String str="";
        if(OriginalInst!=null)
            str="\n\t#%s".formatted(OriginalInst.To_String());
        return "call %s".formatted(FuncName)+str;
    }
}
