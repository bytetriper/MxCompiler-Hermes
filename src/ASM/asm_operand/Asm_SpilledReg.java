package ASM.asm_operand;

public class Asm_SpilledReg extends Asm_Reg {//absolutely same with offsetreg but not offsetreg
    public int offset,size;
    public Asm_PhysicalReg base;
    public Asm_SpilledReg(Asm_PhysicalReg Base,int Offset,int Size){
        base=Base;
        offset=Offset;
        size=Size;
    }
    public Asm_SpilledReg(Asm_PhysicalReg Base,Asm_Imm Offset,int Size){
        base=Base;
        offset=Offset.Imm;
        size=Size;
    }
    @Override
    public boolean equals(Object obj) {
        return obj instanceof Asm_SpilledReg e&& e.base.equals(base) && offset==e.offset;
    }
    @Override
    public String To_String() {
        //offset(Base)
        return "%d(%s)".formatted(offset,base.To_String());
    }
}

