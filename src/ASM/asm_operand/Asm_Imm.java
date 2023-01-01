package ASM.asm_operand;

public class Asm_Imm extends Asm_Operand {
    public int Imm;
    public Asm_Imm(int value){
        Imm=value;
    }
    @Override
    public String To_String()
    {
        //just Imm itself
        return Integer.toString(Imm);
    }
}
