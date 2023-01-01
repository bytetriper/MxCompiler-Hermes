package backend;

import java.util.ArrayList;
import java.util.Base64;

import IR.BasicBlock;
import IR.FuncBlock;
import IR.IRBuilder;
import IR.IRVisitor;
import IR.ir_inst.*;
import java.util.HashMap;

import ASM.Asm_BasicBlock;
import ASM.Asm_FuncBlock;
import ASM.asm_operand.Asm_GlobalValue;
import ASM.asm_operand.Asm_Imm;
import ASM.asm_operand.Asm_Operand;
import ASM.asm_operand.Asm_VirtualReg;
import IR.ir_type.Ir_Type;
import IR.ir_value.Ir_BoolConst;
import IR.ir_value.Ir_GlobalReg;
import IR.ir_value.Ir_IntConstant;
import IR.ir_value.Ir_NullPtrConstant;
import IR.ir_value.Ir_Reg;
import IR.ir_value.Ir_Value;
import IR.ir_value.Ir_VoidConst;

public class InstSelector implements IRVisitor {
    public HashMap<String, Ir_Type> Rename;
    public ArrayList<FuncBlock> Blocks;
    public Asm_BasicBlock CurrentBlock;
    public Asm_FuncBlock CurrentFunc;
    public ArrayList<Ir_Inst> Init_Declare;
    public ArrayList<Asm_GlobalValue> Global_Variables;

    public void New_Block() {
        CurrentBlock = new Asm_BasicBlock();
    }

    public Asm_Operand Get_Operand(Ir_Value tmp) {
        if (tmp.Asm_Reg == null) {
            if (tmp instanceof Ir_VoidConst) {
                return null;
            } else if (tmp instanceof Ir_IntConstant) {
                tmp.Asm_Reg = new Asm_Imm(((Ir_IntConstant) tmp).val);
            } else if (tmp instanceof Ir_BoolConst) {
                tmp.Asm_Reg = new Asm_Imm(((Ir_BoolConst) tmp).val ? 1 : 0);
            } else if (tmp instanceof Ir_NullPtrConstant) {
                return null;//TODO CHECK
            }else if(tmp instanceof Ir_Reg)//TODO
            {
                tmp.Asm_Reg=new Asm_VirtualReg((Ir_Reg)tmp);
            }

        }
    }

    @Override
    public void visit(IRBuilder builder){
        Blocks=builder.Blocks;
        Init_Declare=builder.Init_Declare;
        Rename=builder.Rename;
        Global_Variables=new ArrayList<>();
        for(var inst:Init_Declare){
            if(inst instanceof Global_Declare)
            {    
                inst.User.Asm_Reg=new Asm_GlobalValue((Ir_GlobalReg)inst.User)
                Global_Variables.add();
            }
        }
        for(var blk:Blocks)
        {
        }
    }

    @Override
    public void visit(FuncBlock tmpBlock) {

    }

    @Override
    public void visit(BasicBlock tmpBlock) {

    }

    @Override
    public void visit(Store tmpnode) {

    }

    @Override
    public void visit(Global_DeclareVar tmpnode) {
    }

    @Override
    public void visit(Ptrtoint tmpnode) {
    }

    @Override
    public void visit(BinaryOp tmpnode) {
    }

    @Override
    public void visit(GEP tmpnode) {
    }

    @Override
    public void visit(Bitcast tmpnode) {
    }

    @Override
    public void visit(Ret tmpnode) {
    }

    @Override
    public void visit(Zext tmpnode) {
    }

    @Override
    public void visit(Trunc tmpnode) {
    }

    @Override
    public void visit(Alloca tmpnode) {
    }

    @Override
    public void visit(Inttoptr tmpnode) {
    }

    @Override
    public void visit(Load tmpnode) {
    }

    @Override
    public void visit(Br tmpnode) {
    }

    @Override
    public void visit(Icmp tmpnode) {
    }

    @Override
    public void visit(Global_Declare tmpnode) {
    }

    @Override
    public void visit(Uncond_Br tmpnode) {
    }

    @Override
    public void visit(Call tmpnode) {
    }

    @Override
    public void visit(Declare_Class tmpnode) {
    }

    @Override
    public void visit(Declare_Func tmpnode) {
    }
}
