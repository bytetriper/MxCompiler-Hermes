package backend;

import java.security.KeyStore.Entry;
import java.util.ArrayList;
import java.util.Base64;

import IR.BasicBlock;
import IR.FuncBlock;
import IR.IRBuilder;
import IR.IRVisitor;
import IR.ir_inst.*;
import java.util.HashMap;
import java.util.ListIterator;

import ASM.Asm_BasicBlock;
import ASM.Asm_FuncBlock;
import ASM.asm_inst.Asm_BinaryOp;
import ASM.asm_inst.Asm_BoolOp;
import ASM.asm_inst.Asm_Call;
import ASM.asm_inst.Asm_Global_Declare;
import ASM.asm_inst.Asm_Globel_DeclareVar; 
import ASM.asm_inst.Asm_Inst;
import ASM.asm_inst.Asm_J;
import ASM.asm_inst.Asm_Jump;
import ASM.asm_inst.Asm_La;
import ASM.asm_inst.Asm_Load;
import ASM.asm_inst.Asm_Lui;
import ASM.asm_inst.Asm_Mv;
import ASM.asm_inst.Asm_Ret;
import ASM.asm_inst.Asm_SexzOp;
import ASM.asm_inst.Asm_Store;
import ASM.asm_inst.Asm_Load.Load_Type;
import ASM.asm_inst.Asm_Store.StoreType;
import ASM.asm_operand.Asm_GlobalValue;
import ASM.asm_operand.Asm_Imm;
import ASM.asm_operand.Asm_OffsetReg;
import ASM.asm_operand.Asm_Operand;
import ASM.asm_operand.Asm_PhysicalReg;
import ASM.asm_operand.Asm_Reg;
import ASM.asm_operand.Asm_Relocation;
import ASM.asm_operand.Asm_VirtualReg;
import ASM.asm_operand.Asm_PhysicalReg.RegName;
import ASM.asm_operand.Asm_Relocation.Functype;
import IR.ir_type.Array_Type;
import IR.ir_type.Ir_Type;
import IR.ir_type.Pointer_Type;
import IR.ir_type.Struct_Type;
import IR.ir_value.Ir_BoolConst;
import IR.ir_value.Ir_GlobalReg;
import IR.ir_value.Ir_IntConstant;
import IR.ir_value.Ir_NullPtrConstant;
import IR.ir_value.Ir_Reg;
import IR.ir_value.Ir_Value;
import IR.ir_value.Ir_VoidConst;
import utils.FUCKER;

public class InstSelector implements IRVisitor {
    public HashMap<String, Ir_Type> Rename;
    public ArrayList<FuncBlock> Blocks;
    public Asm_BasicBlock CurrentBlock;
    public Asm_FuncBlock CurrentFunc;
    public ArrayList<Ir_Inst> Init_Declare;
    public ArrayList<Asm_Inst> Global_Declares;

    public final Asm_PhysicalReg zero = new Asm_PhysicalReg(RegName.zero);
    public final Asm_PhysicalReg ra = new Asm_PhysicalReg(RegName.ra);
    public final Asm_PhysicalReg sp = new Asm_PhysicalReg(RegName.sp);
    public final Asm_PhysicalReg gp = new Asm_PhysicalReg(RegName.gp);
    public final Asm_PhysicalReg tp = new Asm_PhysicalReg(RegName.tp);
    public final Asm_PhysicalReg t0 = new Asm_PhysicalReg(RegName.t0);
    public final Asm_PhysicalReg t1 = new Asm_PhysicalReg(RegName.t1);
    public final Asm_PhysicalReg t2 = new Asm_PhysicalReg(RegName.t2);
    public final Asm_PhysicalReg t3 = new Asm_PhysicalReg(RegName.t3);
    public final Asm_PhysicalReg t4 = new Asm_PhysicalReg(RegName.t4);
    public final Asm_PhysicalReg t5 = new Asm_PhysicalReg(RegName.t5);
    public final Asm_PhysicalReg t6 = new Asm_PhysicalReg(RegName.t6);
    public final Asm_PhysicalReg s0 = new Asm_PhysicalReg(RegName.s0);
    public final Asm_PhysicalReg s1 = new Asm_PhysicalReg(RegName.s1);
    public final Asm_PhysicalReg s2 = new Asm_PhysicalReg(RegName.s2);
    public final Asm_PhysicalReg s3 = new Asm_PhysicalReg(RegName.s3);
    public final Asm_PhysicalReg s4 = new Asm_PhysicalReg(RegName.s4);
    public final Asm_PhysicalReg s5 = new Asm_PhysicalReg(RegName.s5);
    public final Asm_PhysicalReg s6 = new Asm_PhysicalReg(RegName.s6);
    public final Asm_PhysicalReg s7 = new Asm_PhysicalReg(RegName.s7);
    public final Asm_PhysicalReg s8 = new Asm_PhysicalReg(RegName.s8);
    public final Asm_PhysicalReg s9 = new Asm_PhysicalReg(RegName.s9);
    public final Asm_PhysicalReg s10 = new Asm_PhysicalReg(RegName.s10);
    public final Asm_PhysicalReg s11 = new Asm_PhysicalReg(RegName.s11);
    public final Asm_PhysicalReg a0 = new Asm_PhysicalReg(RegName.a0);
    public final Asm_PhysicalReg a1 = new Asm_PhysicalReg(RegName.a1);
    public final Asm_PhysicalReg a2 = new Asm_PhysicalReg(RegName.a2);
    public final Asm_PhysicalReg a3 = new Asm_PhysicalReg(RegName.a3);
    public final Asm_PhysicalReg a4 = new Asm_PhysicalReg(RegName.a4);
    public final Asm_PhysicalReg a5 = new Asm_PhysicalReg(RegName.a5);
    public final Asm_PhysicalReg a6 = new Asm_PhysicalReg(RegName.a6);
    public final Asm_PhysicalReg a7 = new Asm_PhysicalReg(RegName.a7);

    public void DEBUG(String msg) {
        System.out.println(msg);
    }

    public void New_Block() {
        CurrentBlock = new Asm_BasicBlock();
        CurrentFunc.Add_Block(CurrentBlock);
    }

    public Asm_Operand Get_Operand(Ir_Value tmp) {
        if (tmp.Asm_Reg == null) {
            if (tmp instanceof Ir_VoidConst) {
                new FUCKER("VOID %s".formatted(tmp.To_String()));
                return null;
            } else if (tmp instanceof Ir_IntConstant) {
                tmp.Asm_Reg = new Asm_Imm(((Ir_IntConstant) tmp).val);
            } else if (tmp instanceof Ir_BoolConst) {
                tmp.Asm_Reg = new Asm_Imm(((Ir_BoolConst) tmp).val ? 1 : 0);
            } else if (tmp instanceof Ir_NullPtrConstant) {
                tmp.Asm_Reg =new Asm_Imm(0);
            } else if (tmp instanceof Ir_Reg)// TODO
            {
                tmp.Asm_Reg = new Asm_VirtualReg(tmp.get_size());
            } else if (tmp instanceof Ir_GlobalReg) {
                tmp.Asm_Reg = new Asm_GlobalValue((Ir_GlobalReg) tmp);
            } else {
                new FUCKER("MOTHER FUCKER!");
            }
        }
        return tmp.Asm_Reg;
    }
    public void Save_regs(FuncBlock funcblk){
        Asm_BasicBlock entry=(Asm_BasicBlock)funcblk.Entry.Asm_Reg;
        Asm_BasicBlock end=(Asm_BasicBlock)funcblk.Exit.Asm_Reg;
        Asm_VirtualReg reg=new Asm_VirtualReg(4);
        entry.Push_Inst(new Asm_Mv(reg,s0));
        end.Push_Inst(new Asm_Mv(s0, reg));
    }
    public void Init() {
        for (var blk : Blocks) {
            ArrayList<Asm_Operand> para = new ArrayList<>();
            blk.Asm_Reg = new Asm_FuncBlock(blk.Name);
            blk.Entry.Asm_Reg = new Asm_BasicBlock(".Entry".formatted(blk.Name));
            int totalsize=0;
            for (int i = 0; i < blk.Parameter.size(); ++i) {
                Ir_Value tmp = blk.Parameter.get(i);
                if (i < 8) {
                    switch (i) {
                        case 0:
                            tmp.Asm_Reg = a0;
                            break;
                        case 1:
                            tmp.Asm_Reg = a1;
                            break;
                        case 2:
                            tmp.Asm_Reg = a2;
                            break;
                        case 3:
                            tmp.Asm_Reg = a3;
                            break;
                        case 4:
                            tmp.Asm_Reg = a4;
                            break;
                        case 5:
                            tmp.Asm_Reg = a5;
                            break;
                        case 6:
                            tmp.Asm_Reg = a6;
                            break;
                        case 7:
                            tmp.Asm_Reg = a7;
                            break;
                    }
                } else {
                    tmp.Asm_Reg = new Asm_OffsetReg(s0,totalsize , tmp.get_size());
                    totalsize+=tmp.get_size();
                }
                para.add(tmp.Asm_Reg);
            }
            ((Asm_FuncBlock) blk.Asm_Reg).Paras = para;
            for (var basic : blk.blks) {
                basic.Asm_Reg = new Asm_BasicBlock();
                for (var inst : basic.Inst) {
                    if (inst instanceof Call) {
                        ((Asm_FuncBlock) blk.Asm_Reg).Arg_Size = Math.max(((Asm_FuncBlock) blk.Asm_Reg).Arg_Size,
                                ((Call) inst).Operands.size() * 4 - 32);
                    }
                }
            }
            blk.Exit.Asm_Reg = new Asm_BasicBlock("%s.Exit".formatted(blk.Name));
        }
    }
    public void CloseUp(){
        for(var each:Blocks){
            Save_regs(each);
        }
    }
    @Override
    public void visit(IRBuilder builder) {
        Blocks = builder.Blocks;
        Init_Declare = builder.Init_Declare;
        Rename = builder.Rename;
        Global_Declares = new ArrayList<>();
        Init();
        for (var inst : Init_Declare) {
            if (inst instanceof Global_Declare || inst instanceof Global_DeclareVar) {
                inst.accept(this);
            }
        }
        for (var blk : Blocks) {
            visit(blk);
        }
        CloseUp();
    }

    @Override
    public void visit(FuncBlock tmpBlock) {
        CurrentFunc = (Asm_FuncBlock) tmpBlock.Asm_Reg;
        CurrentBlock = (Asm_BasicBlock) tmpBlock.Entry.Asm_Reg;
        CurrentBlock.Add_Inst(new Asm_Mv(CurrentFunc.ReturnAddress,ra));//save ra in advanced
        CurrentFunc.Add_Block(CurrentBlock);
        visit(tmpBlock.Entry);
        for (var blk : tmpBlock.blks) {
            CurrentBlock = (Asm_BasicBlock) blk.Asm_Reg;
            CurrentFunc.Add_Block(CurrentBlock);
            visit(blk);
        }
        CurrentBlock = (Asm_BasicBlock) tmpBlock.Exit.Asm_Reg;
        CurrentFunc.Add_Block(CurrentBlock);
        visit(tmpBlock.Exit);
    }

    @Override
    public void visit(BasicBlock tmpBlock) {
        for (var inst : tmpBlock.Inst) {
            inst.accept(this);
            if (CurrentBlock.Insts.size() > 0)
                CurrentBlock.Insts.getLast().OriginalInst = inst;
        }
        tmpBlock.Ret_inst.accept(this);
        CurrentBlock.Insts.getLast().OriginalInst = tmpBlock.Ret_inst;
    }

    @Override
    public void visit(Store tmpnode) {// MODIFIED
        Asm_Operand rs1 = Get_Operand(tmpnode.Operands.get(0));
        Asm_Operand rd = Get_Operand(tmpnode.User);
        CurrentBlock.Add_Inst(new Asm_Store(rd, rs1,StoreType.SW));
    }

    @Override
    public void visit(Global_DeclareVar tmpnode) {// MODIFIED
        tmpnode.User.Asm_Reg = new Asm_GlobalValue((Ir_GlobalReg) tmpnode.User);
        ArrayList<Asm_Imm> tmpList = new ArrayList<>();
        for (var each : tmpnode.Operands) {
            assert (each instanceof Ir_IntConstant);
            tmpList.add(new Asm_Imm(((Ir_IntConstant) each).val));
        }
        Global_Declares.add(new Asm_Globel_DeclareVar(tmpnode.User.Asm_Reg, tmpList));
    }

    @Override
    public void visit(Ptrtoint tmpnode) { // MODIFIED
        Asm_Operand rs1 = Get_Operand(tmpnode.Operands.get(0));
        Asm_Operand rd = Get_Operand(tmpnode.User);
        CurrentBlock.Add_Inst(new Asm_Mv(rd, rs1));// Always Save Word
    }

    @Override
    public void visit(BinaryOp tmpnode) {// MODIFIED
        Asm_Operand regl = Get_Operand(tmpnode.Operands.get(0));
        Asm_Operand regr = Get_Operand(tmpnode.Operands.get(1));
        Asm_Operand reg = Get_Operand(tmpnode.User);
        if (BinaryOp.OpMap.containsValue(tmpnode.Op)) {
            CurrentBlock.Add_Inst(new Asm_BinaryOp(reg, regl, regr, tmpnode.Op));
        } else {
            switch (tmpnode.Op) {
                case "eq":
                    CurrentBlock.Add_Inst(new Asm_BinaryOp(reg, regl, regr, "sub"));
                    CurrentBlock.Add_Inst(new Asm_SexzOp(reg, reg, "seqz"));
                    break;
                case "ne":
                    CurrentBlock.Add_Inst(new Asm_BinaryOp(reg, regl, regr, "sub"));
                    CurrentBlock.Add_Inst(new Asm_SexzOp(reg, reg, "snez"));
                    break;
                case "sgt":
                    CurrentBlock.Add_Inst(new Asm_BinaryOp(reg, regr, regl, "sub"));
                    CurrentBlock.Add_Inst(new Asm_BoolOp(reg, reg, new Asm_Imm(0), "slt"));
                    break;
                case "sge":
                    CurrentBlock.Add_Inst(new Asm_BinaryOp(reg, regr, regl, "sub"));
                    CurrentBlock.Add_Inst(new Asm_BoolOp(reg, reg, new Asm_Imm(1), "slt"));
                    break;
                case "slt":
                    CurrentBlock.Add_Inst(new Asm_BoolOp(reg, regl, regr, "slt"));
                    break;
                case "sle":
                    CurrentBlock.Add_Inst(new Asm_BinaryOp(reg, regl, regr, "sub"));
                    CurrentBlock.Add_Inst(new Asm_BoolOp(reg, reg, new Asm_Imm(1), "slt"));
                    break;
            }
        }
    }

    @Override
    public void visit(GEP tmpnode) {
        assert (tmpnode.Operands.size() <= 2);
        Asm_Operand rd = Get_Operand(tmpnode.User);
        Asm_Operand rs1 = Get_Operand(tmpnode.Operands.get(0));
        if (!tmpnode.indexing) {
            Ir_Type type = ((Pointer_Type) tmpnode.Operands.get(0).Type).To_Type;
            if (type instanceof Struct_Type) {
                int tmp = ((Ir_IntConstant) tmpnode.Operands.get(1)).val;
                Asm_Operand offset = new Asm_Imm(((Struct_Type) type).Get_Offset(tmp));
                CurrentBlock.Add_Inst(new Asm_BinaryOp(rd, rs1, offset, "add"));
            } else {
                Asm_Operand tmp=new Asm_VirtualReg(4);
                CurrentBlock.Add_Inst(new Asm_La(tmp, rs1));
                Asm_Imm offset = new Asm_Imm(((Ir_IntConstant) tmpnode.Operands.get(1)).val * 4);
                CurrentBlock.Add_Inst(new Asm_BinaryOp(rd, tmp, offset, "add"));
            }
        } else {
            var offset = Get_Operand(tmpnode.Operands.get(1));
            Asm_Operand tmpreg=new Asm_VirtualReg(4);
            CurrentBlock.Add_Inst(new Asm_Mv(tmpreg, offset));
            CurrentBlock.Add_Inst(new Asm_BinaryOp(tmpreg, tmpreg, new Asm_Imm(rd.size / 2), "sll"));// mul t1 4/1
            CurrentBlock.Add_Inst(new Asm_BinaryOp(rd, rs1, tmpreg, "add"));
        }
    }

    @Override
    public void visit(Bitcast tmpnode) {// MODIFIED
        Asm_Operand rs1 = Get_Operand(tmpnode.Operands.get(0));
        Asm_Operand rd = Get_Operand(tmpnode.User);
        CurrentBlock.Add_Inst(new Asm_Mv(rd, rs1));// Always Save Word
    }

    @Override
    public void visit(Ret tmpnode) {// MODIFIED
        if (tmpnode.Operands.size() > 0) {
            var tmp = tmpnode.Operands.get(0);
            if (!(tmp instanceof Ir_VoidConst)) {
                CurrentBlock.Add_Inst(new Asm_Mv(a0, Get_Operand(tmp)));
            }
        }
        CurrentBlock.Add_Inst(new Asm_Mv(ra, CurrentFunc.ReturnAddress));
        // all alloca is put inside the Entry Block,so Total_Offset here must be the
        // real offset
        CurrentBlock.Add_Inst(new Asm_Ret());
    }

    @Override
    public void visit(Zext tmpnode) {// MODIFIED
        CurrentBlock
                .Add_Inst(new Asm_Mv(Get_Operand(tmpnode.User), Get_Operand(tmpnode.Operands.get(0))));
    }

    @Override
    public void visit(Trunc tmpnode) {// MODIFIED
        Asm_Imm imm = new Asm_Imm(1);
        CurrentBlock.Add_Inst(
                new Asm_BinaryOp(Get_Operand(tmpnode.User), Get_Operand(tmpnode.Operands.get(0)), imm, "and"));
    }

    @Override
    public void visit(Alloca tmpnode) {// MODIFIED
        tmpnode.User.Asm_Reg = new Asm_OffsetReg(sp, (CurrentFunc.Total_Offset+CurrentFunc.Arg_Size), tmpnode.User.get_size());
        CurrentFunc.Total_Offset += tmpnode.User.get_size();
    }

    @Override
    public void visit(Inttoptr tmpnode) {// MODIFIED
        CurrentBlock
                .Add_Inst(new Asm_Mv(Get_Operand(tmpnode.User), Get_Operand(tmpnode.Operands.get(0))));
    }

    @Override
    public void visit(Load tmpnode) {// MODIFIED
        Asm_Operand Base = Get_Operand(tmpnode.Operands.get(0));
        Ir_Value user = tmpnode.User;
        Asm_Operand Auser = Get_Operand(tmpnode.User);
        if (user.Type instanceof Struct_Type) {
            new FUCKER("Load struct struct* shouldn't exist");
        } else {
            CurrentBlock.Add_Inst(new Asm_Load(Auser, Base,Load_Type.LW));
        }
    }

    @Override
    public void visit(Br tmpnode) {// MODIFIED
        Asm_Operand j1 = Get_Operand(tmpnode.Operands.get(1));
        Asm_Operand j2 = Get_Operand(tmpnode.Operands.get(2));
        Asm_Operand judge = Get_Operand(tmpnode.Operands.get(0));
        // Get_Value(t0, judge);
        CurrentBlock.Add_Inst(new Asm_Jump(j1, judge, "bnez"));
        CurrentBlock.Add_Inst(new Asm_Jump(j2, judge, "beqz"));
    }

    @Override
    public void visit(Icmp tmpnode) {// MODIFIED
        Asm_Operand regl = Get_Operand(tmpnode.Operands.get(0));
        Asm_Operand regr = Get_Operand(tmpnode.Operands.get(1));
        Asm_Operand reg = Get_Operand(tmpnode.User);
        switch (tmpnode.choice) {
            case "eq":
                CurrentBlock.Add_Inst(new Asm_BinaryOp(reg, regl, regr, "sub"));
                CurrentBlock.Add_Inst(new Asm_SexzOp(reg, reg, "seqz"));
                break;
            case "ne":
                CurrentBlock.Add_Inst(new Asm_BinaryOp(reg, regl, regr, "sub"));
                CurrentBlock.Add_Inst(new Asm_SexzOp(reg, reg, "snez"));
                break;
            case "sgt":
                CurrentBlock.Add_Inst(new Asm_BinaryOp(reg, regr, regl, "sub"));
                CurrentBlock.Add_Inst(new Asm_BoolOp(reg, reg, new Asm_Imm(0), "slt"));
                break;
            case "sge":
            CurrentBlock.Add_Inst(new Asm_BinaryOp(reg, regr, regl, "sub"));
                CurrentBlock.Add_Inst(new Asm_BoolOp(reg, reg, new Asm_Imm(1), "slt"));
                break;
            case "slt":
                CurrentBlock.Add_Inst(new Asm_BoolOp(reg, regl, regr, "slt"));
                break;
            case "sle":
                CurrentBlock.Add_Inst(new Asm_BinaryOp(reg, regl, regr, "sub"));
                CurrentBlock.Add_Inst(new Asm_BoolOp(reg, reg, new Asm_Imm(1), "slt"));
                break;
            case "ugt":
                CurrentBlock.Add_Inst(new Asm_BinaryOp(reg, regr, regl, "sub"));
                CurrentBlock.Add_Inst(new Asm_BoolOp(reg, reg, new Asm_Imm(1), "sltu"));
                break;
            case "uge":
                CurrentBlock.Add_Inst(new Asm_BoolOp(reg, regr, regl, "sltu"));
                break;
            case "ult":
                CurrentBlock.Add_Inst(new Asm_BoolOp(reg, regl, regr, "sltu"));
                break;
            case "ule":
                CurrentBlock.Add_Inst(new Asm_BinaryOp(reg, regl, regr, "sub"));
                CurrentBlock.Add_Inst(new Asm_BoolOp(reg, reg, new Asm_Imm(1), "sltu"));
                break;
        }
    }

    @Override
    public void visit(Global_Declare tmpnode) {// MODIFIED
        Asm_GlobalValue tmp = new Asm_GlobalValue(((Ir_GlobalReg) tmpnode.User));
        Global_Declares.add(new Asm_Global_Declare(tmp));
    }

    @Override
    public void visit(Uncond_Br tmpnode) {// MODIFIED
        CurrentBlock.Add_Inst(new Asm_J((Asm_BasicBlock) tmpnode.Operands.get(0).Asm_Reg));
    }

    @Override
    public void visit(Call tmpnode) {// MODIFIED
        int totalsize = 0;
        for (int i = 0; i < tmpnode.Operands.size(); ++i) {
            var para = Get_Operand(tmpnode.Operands.get(i));
            if (i < 8) {
                switch (i) {
                    case 0:
                        CurrentBlock.Add_Inst(new Asm_Mv(a0, para));
                        break;
                    case 1:
                        CurrentBlock.Add_Inst(new Asm_Mv(a1, para));
                        break;
                    case 2:
                        CurrentBlock.Add_Inst(new Asm_Mv(a2, para));
                        break;
                    case 3:
                        CurrentBlock.Add_Inst(new Asm_Mv(a3, para));
                        break;
                    case 4:
                        CurrentBlock.Add_Inst(new Asm_Mv(a4, para));
                        break;
                    case 5:
                        CurrentBlock.Add_Inst(new Asm_Mv(a5, para));
                        break;
                    case 6:
                        CurrentBlock.Add_Inst(new Asm_Mv(a6, para));
                        break;
                    case 7:
                        CurrentBlock.Add_Inst(new Asm_Mv(a7, para));
                        break;
                }
            } else {
                CurrentBlock.Add_Inst(new Asm_Mv(new Asm_OffsetReg(sp, totalsize, para.size), para));
                totalsize += para.size;
            }

        }
        CurrentBlock.Add_Inst(new Asm_Mv(CurrentFunc.ReturnAddress,ra));
        CurrentBlock.Add_Inst(new Asm_Call(tmpnode.Func.Name));
        CurrentBlock.Add_Inst(new Asm_Mv(ra,CurrentFunc.ReturnAddress));
        if (tmpnode.User != null)
            CurrentBlock.Add_Inst(new Asm_Mv(Get_Operand(tmpnode.User), a0));
    }

    @Override
    public void visit(Declare_Class tmpnode) {
    }

    @Override
    public void visit(Declare_Func tmpnode) {
    }

    public String To_String() {
        // <Func Block>
        // -<BasicBlocks>
        // <Gloabal Declare>
        String str = ".text\n";
        for (var each : Blocks) {
            str += each.Asm_Reg.To_String();
            str += "\n";
        }
        for (var inst : Global_Declares)
            str += inst.To_String() + "\n";
        return str;
    }
}
