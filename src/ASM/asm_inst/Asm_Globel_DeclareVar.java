package ASM.asm_inst;

import java.util.ArrayList;

import ASM.asm_operand.Asm_GlobalValue;
import ASM.asm_operand.Asm_Imm;
import ASM.asm_operand.Asm_Operand;

public class Asm_Globel_DeclareVar extends Asm_Inst {
    public ArrayList<Asm_Imm> Words;
    public Asm_Globel_DeclareVar(Asm_Operand reg,ArrayList<Asm_Imm> word)
    {
        Words=word;
        assert(reg instanceof Asm_GlobalValue);
        Rd=reg;
    }
    @Override
    public String To_String() {
        /*
            .section data
          .L__const.main.a:
            .word	6                       # 0x6
            .word	7                       # 0x7
            .word	8                       # 0x8
            .word	9                       # 0x9
            .word	10                      # 0xa
            .word	11                      # 0xb
            .word	12                      # 0xc
            .word	13                      # 0xd
            .word	14                      # 0xe
            .word	15                      # 0xf
            .size	.L__const.main.a, 40
         */
        String str=".section data\n%s:\n\t".formatted(Rd.To_String());
        for(var word:Words){
            str+=".word %d\n\t".formatted(word.Imm);
        }
        return str;
    }
}
