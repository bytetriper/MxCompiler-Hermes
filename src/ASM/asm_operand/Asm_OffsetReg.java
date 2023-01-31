package ASM.asm_operand;

public class Asm_OffsetReg extends Asm_Reg {
    public int offset,size;
    public Asm_PhysicalReg base;
    public Asm_OffsetReg(Asm_PhysicalReg Base,int Offset,int Size){
        base=Base;
        offset=Offset;
        size=Size;
    }
    public Asm_OffsetReg(Asm_PhysicalReg Base,Asm_Imm Offset,int Size){
        base=Base;
        offset=Offset.Imm;
        size=Size;
    }
    @Override
    public String To_String() {
        //offset(Base)
        return "%d(%s)".formatted(offset,base.To_String());
    }
}
