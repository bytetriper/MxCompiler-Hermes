package ASM.asm_inst;

import ASM.asm_operand.Asm_GlobalValue;
import backend.AsmVisitor;
public class Asm_Global_Declare extends Asm_Inst {
    public Asm_Global_Declare(Asm_GlobalValue reg){
        Rd=reg;
    }
    @Override
    public void accept(AsmVisitor allocater) {
        allocater.visit(this);
    }
    @Override
    public String To_String() {
        //
        /*
            	.type	c,@object               # @c
                .globl	c
            c:
                .zero	4                       # 0x0
                ...
                .size	c, 4
        */
        String tmp=Rd.To_String();
        int size=((Asm_GlobalValue)Rd).size;
        String str="""
            .section data
            .type   %s,@object
            .global %s
        %s:
            .zero %d
            .size %s,%d
        """.formatted(tmp,tmp,tmp,size,tmp,size);
        return str;
    }
}
