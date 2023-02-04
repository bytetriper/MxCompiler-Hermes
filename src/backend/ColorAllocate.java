package backend;
import java.util.LinkedList;

import javax.lang.model.util.ElementScanner14;

import ASM.Asm_BasicBlock;
import ASM.Asm_FuncBlock;
import ASM.asm_inst.*;
import ASM.asm_inst.Asm_Load.Load_Type;
import ASM.asm_inst.Asm_Store.StoreType;
import utils.FUCKER;
import ASM.asm_operand.*;
import IR.ir_inst.Store;
import utils.PhysicalRegs;
public class ColorAllocate implements AsmVisitor, AsmPass {
    public Asm_BasicBlock CurrentBlock;
    public Asm_FuncBlock CurrentFunc;
    public Asm_Operand Get_Operand(Asm_Operand reg){
        if(reg==null) return null;
        if(reg.color!=null)
        {    
            return reg.color;
        }
        else
        {
            //assert(reg instanceof Asm_OffsetReg);
            return reg;
        }
    }
    public Asm_Operand Get_Value(Asm_Operand reg, Asm_Operand target)/* Load value from target to reg(physical) */
    {
        if(reg==null)  return null;
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
        } else if(target instanceof Asm_SpilledReg){
            CurrentBlock.Add_Inst(new Asm_Load(reg, target,  Load_Type.LW));
        }else{  
            new FUCKER("[Fatal Error]Get_Value: Unexpected type of value:%s".formatted(target.To_String()));
        }
        return reg;
    }

    public Asm_Operand Store_Value(Asm_Operand target, Asm_Operand reg) {// Store value in reg(physical) to target
        if(reg==null)  return null;
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
            CurrentBlock.Add_Inst(new Asm_Store((Asm_GlobalValue)target, (Asm_PhysicalReg)reg,PhysicalRegs.t2, StoreType.SW));
        } else if (target instanceof Asm_OffsetReg) {
            CurrentBlock.Add_Inst(new Asm_Store(target, reg, StoreType.SW));
        } else if(target instanceof Asm_SpilledReg){
            CurrentBlock.Add_Inst(new Asm_Store(target, reg, StoreType.SW));
        }else {
            new FUCKER("[Fatal Error]Get_Value: Unexpected type of value:%s".formatted(target.To_String()));
        }
        return reg;
    }
    public boolean Is_BasicType(Asm_Operand reg){
        return !(reg instanceof Asm_PhysicalReg||reg instanceof Asm_BasicBlock||reg instanceof Asm_FuncBlock);
    }
    public void Process(Asm_Inst inst){
        inst.Rd=Get_Operand(inst.Rd);
        inst.Rs1=Get_Operand(inst.Rs1);
        inst.Rs2=Get_Operand(inst.Rs2);
        if(inst.Rs1!=null&&Is_BasicType(inst.Rs1)){
            inst.Rs1=Get_Value(PhysicalRegs.t0,inst.Rs1);
        }
        if(inst.Rs2!=null&&Is_BasicType(inst.Rs2)){
            inst.Rs2=Get_Value(PhysicalRegs.t1,inst.Rs2);
        }
        CurrentBlock.Add_Inst(inst);
        if(inst.Rd!=null&&Is_BasicType(inst.Rd)){
            inst.Rd=Store_Value(inst.Rd,PhysicalRegs.t0);
            
        }
    }
    public void visit(InstSelector selector){
        for(var each:selector.Blocks){
            var funcblk=(Asm_FuncBlock)each.Asm_Reg;
            visit(funcblk);
            var entry=(Asm_BasicBlock)each.Entry.Asm_Reg;
            var exit=(Asm_BasicBlock)each.Exit.Asm_Reg;
            entry.Push_Inst(new Asm_BinaryOp(PhysicalRegs.sp,PhysicalRegs.sp,new Asm_Imm(-(funcblk.Arg_Size+funcblk.Total_Offset)),"addi"));
            exit.Add_Inst_BeforeLast(new Asm_BinaryOp(PhysicalRegs.sp,PhysicalRegs.sp,new Asm_Imm((funcblk.Arg_Size+funcblk.Total_Offset)),"addi"));
        }
    }
    public void Delete_UselessMv(Asm_BasicBlock blk){
        var iterator=blk.Insts.listIterator();
        while(iterator.hasNext()){
            var inst=iterator.next();
            if(inst instanceof Asm_Mv mv){
                if(mv.Rd==mv.Rs1)
                    iterator.remove();
            }
        }
        
    }
    @Override
    public void visit(Asm_BasicBlock blk) {
        LinkedList<Asm_Inst> OldInsts=blk.Insts;
        CurrentBlock=blk;
        blk.Insts=new LinkedList<>();
        for(var inst:OldInsts){
            inst.accept(this);
        }
        Delete_UselessMv(blk);
    }
    @Override
    public void visit(Asm_FuncBlock funcblk) {
        CurrentFunc=funcblk;
        for(var each:funcblk.Blks){
            visit(each);
        }
        for(var each:funcblk.OverFlowedArgs)
            each.offset+=funcblk.Total_Offset+funcblk.Arg_Size;
    }
    @Override
    public void visit(Asm_BinaryOp inst) {
        Process(inst);
    }

    @Override
    public void visit(Asm_Jump inst) {
        Process(inst);
    }

    @Override
    public void visit(Asm_J inst) {
        CurrentBlock.Add_Inst(inst);
    }

    @Override
    public void visit(Asm_Neg inst) {
        //...
        new FUCKER("meet asm_neg:%s at color allocate".formatted(inst.To_String()));
    }

    @Override
    public void visit(Asm_La inst) {
       inst.Rd=Get_Operand(inst.Rd);
       CurrentBlock.Add_Inst(inst);
       if(Is_BasicType(inst.Rd))
       {
            inst.Rd=Store_Value(inst.Rd,PhysicalRegs.t0);
       }
    }

    @Override
    public void visit(Asm_BoolOp inst) {
        Process(inst);
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
        inst.Rd=Get_Operand(inst.Rd);
        inst.Rs1=Get_Operand(inst.Rs1);
        if(inst.Rd instanceof Asm_OffsetReg||inst.Rd instanceof Asm_GlobalValue){//alloca
            
            inst.Rs1=Get_Value(PhysicalRegs.t0,inst.Rs1);
            inst.Rd=Store_Value(inst.Rd,PhysicalRegs.t0);
        }
        else{//malloc
           Get_Value(PhysicalRegs.t0,inst.Rd);
            inst.Rd=new Asm_OffsetReg(PhysicalRegs.t0, 0, 4);
            inst.Rs1=Get_Value(PhysicalRegs.t1,inst.Rs1);
            CurrentBlock.Add_Inst(inst);
        }
    }

    @Override
    public void visit(Asm_Globel_DeclareVar inst) {
    }

    @Override
    public void visit(Asm_Lui inst) {

    }

    @Override
    public void visit(Asm_Li inst) {
    }

    @Override
    public void visit(Asm_Mv inst) {
        Process(inst);
    }

    @Override
    public void visit(Asm_SexzOp inst) {
        Process(inst);
    }

    @Override
    public void visit(Asm_Load inst) {
        inst.Rd=Get_Operand(inst.Rd);
        inst.Rs1=Get_Operand(inst.Rs1);
        if(inst.Rs1 instanceof Asm_OffsetReg||inst.Rs1 instanceof Asm_GlobalValue){//malloc
            inst.Rs1=Get_Value(PhysicalRegs.t0,inst.Rs1);
            inst.Rd=Store_Value(inst.Rd,PhysicalRegs.t0);
        }
        else{//alloca
            Get_Value(PhysicalRegs.t1, inst.Rs1);
            inst.Rs1=new Asm_OffsetReg(PhysicalRegs.t1, 0, 4);
            CurrentBlock.Add_Inst(inst);
            inst.Rd=Store_Value(inst.Rd,PhysicalRegs.t0);
        }
    }

    @Override
    public void visit(Asm_Global_Declare inst) {
    }
}
