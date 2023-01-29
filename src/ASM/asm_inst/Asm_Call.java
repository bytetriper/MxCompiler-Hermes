package ASM.asm_inst;

public class Asm_Call extends Asm_Inst {
    String FuncName;
    public Asm_Call(String Funcname){
        FuncName=Funcname;
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
