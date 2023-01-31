package ASM;

import java.util.ArrayList;
import java.util.jar.Attributes.Name;

import ASM.asm_operand.Asm_OffsetReg;
import ASM.asm_operand.Asm_Operand;
import ASM.asm_operand.Asm_PhysicalReg;
import ASM.asm_operand.Asm_VirtualReg;
import IR.ir_inst.Alloca;
import IR.ir_value.Ir_Value;
import backend.Allocater;
public class Asm_FuncBlock extends Asm_Operand {
    public ArrayList<Asm_BasicBlock> Blks;
    public ArrayList<Asm_Operand> Paras;
    public String Name;
    public Asm_Operand ReturnAddress;
    public int Arg_Size=0;
    public int Total_Offset=0;
    public Asm_FuncBlock(String name){
        Name=name;
        Blks=new ArrayList<>();
        ReturnAddress=new Asm_VirtualReg(4);
    }
    public void Add_Block(Asm_BasicBlock blk){
        Blks.add(blk);
    }
    public void Add_Var(Asm_VirtualReg reg){
        reg.Offset=Total_Offset+Arg_Size;
        Total_Offset+=reg.size;
    }
    public void accept(Allocater allocater) {
        allocater.visit(this);
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
                %s:

                """.formatted(Name,Name,Name);
            for(var each:Blks)
            {
                str+=each.To_String()+"\n";
            }
            return str;
        }
}
