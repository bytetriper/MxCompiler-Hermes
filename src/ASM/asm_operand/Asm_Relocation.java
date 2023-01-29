package ASM.asm_operand;

public class Asm_Relocation extends Asm_Operand{
    public enum Functype{
        hi,lo
    };
    public Functype functype;
    public String symbol;
    public Asm_Relocation(Asm_Operand Global,Functype type){
        assert(Global instanceof Asm_GlobalValue);
        functype=type;
        symbol=((Asm_GlobalValue)Global).symbol;
    }
    @Override
    public String To_String() {
        //%hi/%lo(symbol)
        return "%%%s(%s)".formatted(functype==Functype.hi?"hi":"lo",symbol);
    }
}
