package ASM;

import java.util.ArrayList;
import java.util.jar.Attributes.Name;

import ASM.asm_operand.Asm_Operand;
import IR.ir_inst.Alloca;

public class Asm_FuncBlock extends Asm_Operand {
    public ArrayList<Asm_BasicBlock> Blks;
    public ArrayList<Asm_Operand> Paras;
    public String Name;

    public int Alloca_Used=0;
    public Asm_FuncBlock(String name,ArrayList<Asm_Operand> paras){
        Name=name;
        Blks=new ArrayList<>();
        Paras=paras;
        Alloca_Used=4;//4 byte for RA
    }
    public void Add_Block(Asm_BasicBlock blk){
        Blks.add(blk);
    }
    @Override
    public String To_String(){
        /*
         .globl	main                    # -- Begin function main
        .type	main,@function
    main:    
        <......>
         */
        String str="""
                    .globl %s
                    .type   %s,@function
                %s:

                """.formatted(Name,Name,Name);
            for(var each:Blks)
            {
                str+=each.To_String();
            }
            return str;
        }
}
