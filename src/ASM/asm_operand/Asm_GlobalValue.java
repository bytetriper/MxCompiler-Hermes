package ASM.asm_operand;

import IR.ir_value.Ir_GlobalReg;

public class Asm_GlobalValue extends Asm_Operand {
    public String symbol;
    public int size,word;//size is size in byte,word is initial number.
    public Asm_GlobalValue(Ir_GlobalReg reg){
        symbol=reg.Name;
        size=reg.Type.get_size();
    }
    @Override
    public String To_String(){
        //TODO CHECK
        /*
            	.type	c,@object               # @c
                .globl	c
            c:
                .zero	4                       # 0x0
                .size	c, 4
        */
        String str="""
                .type   %s,@object
                .global %s
            %s:
                .zero %d
                .size %s,%d
            """.formatted(symbol,symbol,size,symbol,size);
        return str;
    }
}
