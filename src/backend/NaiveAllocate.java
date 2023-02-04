package backend;

import java.lang.annotation.Target;
import java.util.LinkedList;
import java.util.ListIterator;

import ASM.Asm_BasicBlock;
import ASM.Asm_FuncBlock;
import ASM.asm_operand.*;
import ASM.asm_operand.Asm_PhysicalReg.RegName;
import IR.FuncBlock;
import ASM.asm_inst.*;
import ASM.asm_inst.Asm_Store.StoreType;
import ASM.asm_inst.Asm_Load.Load_Type;
import utils.FUCKER;

public class NaiveAllocate implements AsmVisitor {
    public Asm_BasicBlock CurrentBlock;
    public Asm_FuncBlock CurrentFunc;
    Asm_PhysicalReg t0 = new Asm_PhysicalReg(RegName.t0);
    Asm_PhysicalReg t1 = new Asm_PhysicalReg(RegName.t1);
    Asm_PhysicalReg sp = new Asm_PhysicalReg(RegName.sp);
    Asm_PhysicalReg s0=new Asm_PhysicalReg(RegName.s0);
    Asm_PhysicalReg t2=new Asm_PhysicalReg(RegName.t2);
    public Asm_Operand Get_Value(Asm_Operand reg, Asm_Operand target)/* Load value from target to reg(physical) */
    {
        assert (reg instanceof Asm_PhysicalReg);
        if (target instanceof Asm_PhysicalReg) {
            CurrentBlock.Add_Inst(new Asm_Mv(reg, target));
        } else if (target instanceof Asm_VirtualReg) {
            var tmp = (Asm_VirtualReg) target;
            if (tmp.Offset == -1) {
                CurrentFunc.Add_Var(tmp);
            }
            CurrentBlock.Add_Inst(new Asm_Load(reg,target,  Load_Type.LW));
        } else if (target instanceof Asm_GlobalValue) {
            CurrentBlock.Add_Inst(
                    new Asm_Load(reg, target, Load_Type.LW));

        } else if (target instanceof Asm_Imm) {
            CurrentBlock.Add_Inst(new Asm_Li(reg, target));
        } else if (target instanceof Asm_OffsetReg) {
            CurrentBlock.Add_Inst(new Asm_Load(reg, target,  Load_Type.LW));
        } else {
            new FUCKER("[Fatal Error]Get_Value: Unexpected type of value:%s".formatted(target.To_String()));
        }
        return reg;
    }

    public Asm_Operand Store_Value(Asm_Operand target, Asm_Operand reg) {// Store value in reg(physical) to target
        assert (reg instanceof Asm_PhysicalReg);
        if (target instanceof Asm_PhysicalReg) {
            CurrentBlock.Add_Inst(new Asm_Mv(target, reg));
        } else if (target instanceof Asm_VirtualReg) {
            var tmp = (Asm_VirtualReg) target;
            if (tmp.Offset == -1) {
                CurrentFunc.Add_Var(tmp);
            }
            CurrentBlock.Add_Inst(new Asm_Store(target, reg, StoreType.SW));
        } else if (target instanceof Asm_GlobalValue) {
            CurrentBlock.Add_Inst(new Asm_Store((Asm_GlobalValue)target, (Asm_PhysicalReg)reg,t2, StoreType.SW));
        } else if (target instanceof Asm_OffsetReg) {
            CurrentBlock.Add_Inst(new Asm_Store(target, reg, StoreType.SW));
        } else {
            new FUCKER("[Fatal Error]Get_Value: Unexpected type of value:%s".formatted(target.To_String()));
        }
        return reg;
    }
    public void CloseUp(FuncBlock blk){
        var funcblk=(Asm_FuncBlock)blk.Asm_Reg;
        var entry=(Asm_BasicBlock)blk.Entry.Asm_Reg;
        for(var each:funcblk.OverFlowedArgs)
            each.offset+=funcblk.Total_Offset+funcblk.Arg_Size;
        entry.Push_Inst(new Asm_BinaryOp(sp,sp,new Asm_Imm(-(funcblk.Total_Offset+funcblk.Arg_Size)),"addi"));
        entry.Push_Inst(new Asm_Mv(s0,sp));
        var exit=(Asm_BasicBlock)blk.Exit.Asm_Reg;
        exit.Insts.add(exit.Insts.size()-1,new Asm_BinaryOp(sp,sp, new Asm_Imm((funcblk.Total_Offset+funcblk.Arg_Size)), "addi"));
    }
    public void visit(InstSelector selector) {
        for (var funcblk : selector.Blocks) {
            CurrentFunc = (Asm_FuncBlock) funcblk.Asm_Reg;
            CurrentFunc.accept(this);
            CloseUp(funcblk);
        }
    }

    @Override
    public void visit(Asm_FuncBlock FuncBlock) {
        for (var blk : FuncBlock.Blks) {
            CurrentBlock = (Asm_BasicBlock) blk;
            CurrentBlock.accept(this);

        }

    }

    @Override
    public void visit(Asm_BasicBlock Block) {
        var Oldinsts = Block.Insts;
        Block.Insts = new LinkedList<>();
        for (var inst : Oldinsts) {
            inst.accept(this);
            if(inst.OriginalInst!=null&&Block.Insts.size()>0)
                Block.Insts.get(Block.Insts.size()-1).OriginalInst=inst.OriginalInst;
        }
    }

    @Override
    public void visit(Asm_BinaryOp inst) {
        inst.Rs1 = Get_Value(t0, inst.Rs1);
        inst.Rs2 = Get_Value(t1, inst.Rs2);
        CurrentBlock.Add_Inst(inst);
        inst.Rd =Store_Value(inst.Rd, t0);
    }

    @Override
    public void visit(Asm_Jump inst) {
        if (inst.Rs2 != null) {
            inst.Rs2 = Get_Value(t1, inst.Rs2);
        }
        inst.Rs1 = Get_Value(t0, inst.Rs1);
        CurrentBlock.Add_Inst(inst);
    }

    @Override
    public void visit(Asm_J inst) {
        CurrentBlock.Add_Inst(inst);
    }

    @Override
    public void visit(Asm_Neg inst) {
        new FUCKER("I have inst neg ?");
    }

    @Override
    public void visit(Asm_La inst) {
        CurrentBlock.Add_Inst(inst);
        inst.Rd=Store_Value(inst.Rd,t0);
    }

    @Override
    public void visit(Asm_BoolOp inst) {
        inst.Rs1 = Get_Value(t0, inst.Rs1);
        inst.Rs2 = Get_Value(t1, inst.Rs2);
        CurrentBlock.Add_Inst(inst);
        inst.Rd = Store_Value(inst.Rd, t0);
    }

    @Override
    public void visit(Asm_Ret inst) {
        CurrentBlock.Add_Inst(inst);
    }

    @Override
    public void visit(Asm_Call inst) {
        CurrentBlock.Add_Inst(inst);
    }

    @Override
    public void visit(Asm_Store inst) {
        if (inst.Rd instanceof Asm_VirtualReg) {
            Get_Value(t1, inst.Rd);
            inst.Rd=new Asm_OffsetReg(t1,0, 4);
            inst.Rs1 = Get_Value(t0, inst.Rs1);
            CurrentBlock.Add_Inst(inst);
        }
        else{
            assert(inst.Rd instanceof Asm_OffsetReg);
            inst.Rs1 = Get_Value(t0, inst.Rs1);
            inst.Rd = Store_Value(inst.Rd, t0);
        }
    }

    @Override
    public void visit(Asm_Globel_DeclareVar inst) {
    }

    @Override
    public void visit(Asm_Lui inst) {
        new FUCKER("I have inst Lui ?");
    }

    @Override
    public void visit(Asm_Li inst) {
        new FUCKER("I have inst Li ?");
    }

    @Override
    public void visit(Asm_Mv inst) {
        Get_Value(t0,inst.Rs1);
        Store_Value(inst.Rd,t0);
    }

    @Override
    public void visit(Asm_SexzOp inst) {
        inst.Rs1 = Get_Value(t0, inst.Rs1);
        CurrentBlock.Add_Inst(inst);
        inst.Rd = Store_Value(inst.Rd, t0);
    }

    @Override
    public void visit(Asm_Load inst) {
        if (inst.Rs1 instanceof Asm_VirtualReg) {
            Get_Value(t1, inst.Rs1);
            inst.Rs1=new Asm_OffsetReg(t1, 0, 4);
            CurrentBlock.Add_Inst(inst);
            inst.Rd=Store_Value(inst.Rd,t0);
        }
        else{
            assert(inst.Rs1 instanceof Asm_OffsetReg);
            inst.Rs1 = Get_Value(t0, inst.Rs1);
            inst.Rd = Store_Value(inst.Rd, t0);
        }
    }

    @Override
    public void visit(Asm_Global_Declare inst) {
    }
}
