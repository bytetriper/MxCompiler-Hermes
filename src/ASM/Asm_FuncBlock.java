package ASM;

import java.util.ArrayList;
import java.util.jar.Attributes.Name;

import ASM.asm_operand.Asm_Operand;
import ASM.asm_operand.Asm_PhysicalReg;
import ASM.asm_operand.Asm_VirtualReg;
import IR.ir_inst.Alloca;
import IR.ir_value.Ir_Value;

public class Asm_FuncBlock extends Asm_Operand {
    public ArrayList<Asm_BasicBlock> Blks;
    public ArrayList<Asm_Operand> Paras;
    public String Name;
    public Asm_VirtualReg ReturnAddress;
    public int Arg_Size=0;
    public int Total_Offset=0;
    public Asm_FuncBlock(String name,Asm_PhysicalReg base){
        Name=name;
        Blks=new ArrayList<>();
        ReturnAddress=new Asm_VirtualReg(base, Total_Offset,4);
        Total_Offset=4;//4 byte for RA
    }
    public void Add_Block(Asm_BasicBlock blk){
        Blks.add(blk);
    }
    public void Add_Var(Ir_Value tmpnode,Asm_PhysicalReg base){
        tmpnode.Asm_Reg=new Asm_VirtualReg(base,Total_Offset,tmpnode.get_size());
        Total_Offset+=tmpnode.get_size();
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
