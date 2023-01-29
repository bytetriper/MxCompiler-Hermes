package ASM.asm_inst;

public class Asm_Ret extends Asm_Inst {
    public Asm_Ret(){}
    @Override
    public String To_String(){
        String str="";
        if(OriginalInst!=null)
            str="\n\t#%s".formatted(OriginalInst.To_String());
        return "ret"+str;
    }
}
