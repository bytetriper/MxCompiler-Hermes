package ASM.asm_inst;
import ASM.Asm_FuncBlock;
import backend.AsmVisitor;
public class Asm_Call extends Asm_Inst {
    public String FuncName;
    public int ParaSize;
    public Asm_Call(String Funcname,int parasize){
        FuncName=Funcname;
        ParaSize=parasize;
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
