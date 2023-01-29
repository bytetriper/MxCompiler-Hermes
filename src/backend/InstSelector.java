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
import ASM.asm_inst.Asm_Li;
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
                tmp.Asm_Reg = new Asm_VirtualReg(zero, 0, 4);
            } else if (tmp instanceof Ir_Reg)// TODO
            {
                tmp.Asm_Reg = new Asm_VirtualReg(s10, CurrentFunc.Total_Offset, tmp.get_size());
                CurrentFunc.Total_Offset += tmp.get_size();
            } else if (tmp instanceof Ir_GlobalReg) {
                tmp.Asm_Reg = new Asm_GlobalValue((Ir_GlobalReg) tmp);

            } else {
                new FUCKER("MOTHER FUCKER!");
            }
        }
        return tmp.Asm_Reg;
    }

    public void Get_Value(Asm_Operand reg, Asm_Operand target)/* Load value from target to reg(physical) */
    {
        assert (reg instanceof Asm_PhysicalReg);
        if (target instanceof Asm_PhysicalReg) {
            CurrentBlock.Add_Inst(new Asm_Mv(reg, target));
        } else if (target instanceof Asm_VirtualReg) {
            CurrentBlock.Add_Inst(
                    new Asm_Load(reg, ((Asm_VirtualReg) target).Reg, new Asm_Imm(((Asm_VirtualReg) target).Offset),
                            target.size == 4 ? Load_Type.LW : Load_Type.LB));
        } else if (target instanceof Asm_GlobalValue) {
            CurrentBlock.Add_Inst(
                    new Asm_Load(reg, target, ((Asm_GlobalValue) target).size == 4 ? Load_Type.LW : Load_Type.LB));

        } else if (target instanceof Asm_Imm) {
            CurrentBlock.Add_Inst(new Asm_Li(reg, target));
        } else {
            new FUCKER("[Fatal Error]Get_Value: Unexpected type of value");
        }
    }

    public void Store_Value(Asm_Operand target, Asm_Operand reg) {// Store value in reg(physical) to target
        assert (reg instanceof Asm_PhysicalReg);
        if (target instanceof Asm_PhysicalReg) {
            CurrentBlock.Add_Inst(new Asm_Mv(target, reg));
        } else if (target instanceof Asm_VirtualReg) {
            CurrentBlock.Add_Inst(
                    new Asm_Store(((Asm_VirtualReg) target).Reg, reg, new Asm_Imm(((Asm_VirtualReg) target).Offset),
                            target.size == 4 ? StoreType.SW : StoreType.SB));
        } else if (target instanceof Asm_GlobalValue) {
            CurrentBlock.Add_Inst(
                    new Asm_Store(reg, target, target.size == 4 ? StoreType.SW : StoreType.SB));
        } else {
            new FUCKER("[Fatal Error]Get_Value: Unexpected type of value");
        }
    }

    public void Store_Value(Asm_Operand target, Asm_Operand reg, int offset, StoreType type) {// Store value in
                                                                                              // reg(physical) to
                                                                                              // target(offset),StoreType
                                                                                              // must be assiged here
        assert (reg instanceof Asm_PhysicalReg);
        if (target instanceof Asm_PhysicalReg) {
            assert (offset == 0);
            CurrentBlock.Add_Inst(new Asm_Mv(target, reg));
        } else if (target instanceof Asm_VirtualReg) {
            CurrentBlock.Add_Inst(new Asm_Store(((Asm_VirtualReg) target).Reg, reg,
                    new Asm_Imm(((Asm_VirtualReg) target).Offset + offset), type));
        } else if (target instanceof Asm_GlobalValue) {
            // use t6 as temporary register
            CurrentBlock.Add_Inst(new Asm_Lui(t6, new Asm_Relocation(target, Functype.hi)));
            CurrentBlock.Add_Inst(new Asm_Store(t6, reg, new Asm_Relocation(target, Functype.lo), type));
        } else {
            new FUCKER("[Fatal Error]Get_Value: Unexpected type of value");
        }
    }

    public void Init() {
        for (var blk : Blocks) {
            ArrayList<Asm_Operand> para = new ArrayList<>();
            int totalsize = 0;
            blk.Asm_Reg = new Asm_FuncBlock(blk.Name, s10);
            blk.Entry.Asm_Reg = new Asm_BasicBlock(".Entry".formatted(blk.Name));
            for (int i = 0; i < blk.Parameter.size(); ++i) {
                Ir_Value tmp = blk.Parameter.get(i);
                if (i < 8) {
                    ((Asm_FuncBlock) blk.Asm_Reg).Add_Var(tmp, s10);
                    Asm_PhysicalReg reg = ((Asm_VirtualReg) tmp.Asm_Reg).Reg;
                    Asm_Imm offset = new Asm_Imm(((Asm_VirtualReg) tmp.Asm_Reg).Offset);
                    switch (i) {
                        case 0:
                            ((Asm_BasicBlock) blk.Entry.Asm_Reg)
                                    .Push_Inst(new Asm_Store(reg, a0,
                                            offset, StoreType.SW));
                            break;
                        case 1:
                            ((Asm_BasicBlock) blk.Entry.Asm_Reg)
                                    .Push_Inst(new Asm_Store(reg, a1,
                                            offset, StoreType.SW));
                            break;
                        case 2:
                            ((Asm_BasicBlock) blk.Entry.Asm_Reg)
                                    .Push_Inst(new Asm_Store(reg, a2,
                                            offset, StoreType.SW));
                            break;
                        case 3:
                            ((Asm_BasicBlock) blk.Entry.Asm_Reg)
                                    .Push_Inst(new Asm_Store(reg, a3,
                                            offset, StoreType.SW));
                            break;
                        case 4:
                            ((Asm_BasicBlock) blk.Entry.Asm_Reg)
                                    .Push_Inst(new Asm_Store(reg, a4,
                                            offset, StoreType.SW));
                            break;
                        case 5:
                            ((Asm_BasicBlock) blk.Entry.Asm_Reg)
                                    .Push_Inst(new Asm_Store(reg, a5,
                                            offset, StoreType.SW));
                            break;
                        case 6:
                            ((Asm_BasicBlock) blk.Entry.Asm_Reg)
                                    .Push_Inst(new Asm_Store(reg, a6,
                                            offset, StoreType.SW));
                            break;
                        case 7:
                            ((Asm_BasicBlock) blk.Entry.Asm_Reg)
                                    .Push_Inst(new Asm_Store(reg, a7,
                                            offset, StoreType.SW));
                            break;
                    }
                } else {
                    tmp.Asm_Reg = new Asm_VirtualReg(s11, totalsize, tmp.get_size());
                    totalsize += tmp.get_size();
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

    public void CloseUp() {
        for (var blk : Blocks) {
            var asmblk = (Asm_BasicBlock) blk.Entry.Asm_Reg;
            var funcblk = (Asm_FuncBlock) blk.Asm_Reg;
            asmblk.Push_Inst(new Asm_Store(funcblk.ReturnAddress.Reg, ra, new Asm_Imm(funcblk.ReturnAddress.Offset),
                    StoreType.SW));
            asmblk.Push_Inst(new Asm_BinaryOp(s11, sp, new Asm_Imm((funcblk.Total_Offset + funcblk.Arg_Size)), "addi"));// same
                                                                                                                        // status
                                                                                                                        // as
                                                                                                                        // s0
            asmblk.Push_Inst(new Asm_BinaryOp(s10, sp, new Asm_Imm(funcblk.Arg_Size), "addi"));// sp+arg_size,use to
                                                                                               // locate normal vregs
            asmblk.Push_Inst(new Asm_BinaryOp(sp, sp, new Asm_Imm(-(funcblk.Total_Offset + funcblk.Arg_Size)), "addi"));
            for (var basicblk : funcblk.Blks) {
                for (var inst : basicblk.Insts) {
                    if (inst instanceof Asm_Ret) {
                        var SPinst = new Asm_BinaryOp(sp, sp, new Asm_Imm(funcblk.Total_Offset + funcblk.Arg_Size),
                                "addi");
                        basicblk.Add_Before(SPinst, inst);
                        break;
                    }
                }
                ListIterator<Asm_Inst> it=basicblk.Insts.listIterator();
                while(it.hasNext()){
                    if(it.next() instanceof Asm_Call){
                        it.next();//Add sp sp ...
                        it.add(new Asm_BinaryOp(s11, sp, new Asm_Imm(funcblk.Total_Offset + funcblk.Arg_Size),"addi"));
                    }
                }
            }
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
        // DEBUG(tmpBlock.Entry.To_String());
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
    public void visit(Store tmpnode) {
        Asm_Operand rs1=Get_Operand(tmpnode.Operands.get(0));
        Asm_Operand rd=Get_Operand(tmpnode.User);
        Get_Value(t0, Get_Operand(tmpnode.Operands.get(0)));
        if(rd instanceof Asm_GlobalValue){
            Store_Value(Get_Operand(tmpnode.User),t0);
        }
        else{
            Get_Value(t1, Get_Operand(tmpnode.User));
            Store_Value(new Asm_VirtualReg(t1, 0, 4), t0);
        }
    }

    @Override
    public void visit(Global_DeclareVar tmpnode) {
        tmpnode.User.Asm_Reg = new Asm_GlobalValue((Ir_GlobalReg) tmpnode.User);
        ArrayList<Asm_Imm> tmpList = new ArrayList<>();
        for (var each : tmpnode.Operands) {
            assert (each instanceof Ir_IntConstant);
            tmpList.add(new Asm_Imm(((Ir_IntConstant) each).val));
        }
        Global_Declares.add(new Asm_Globel_DeclareVar(tmpnode.User.Asm_Reg, tmpList));
    }

    @Override
    public void visit(Ptrtoint tmpnode) {
        Asm_PhysicalReg tmpreg = new Asm_PhysicalReg(RegName.t0);
        Get_Value(tmpreg, Get_Operand(tmpnode.Operands.get(0)));
        Store_Value(Get_Operand(tmpnode.User), tmpreg);
        // CurrentBlock.Add_Inst(new Asm_Mv(Get, CurrentBlock));
    }

    @Override
    public void visit(BinaryOp tmpnode) {
        Asm_Operand regl = Get_Operand(tmpnode.Operands.get(0));
        Asm_Operand regr = Get_Operand(tmpnode.Operands.get(1));
        Asm_Operand reg = Get_Operand(tmpnode.User);
        Get_Value(t1, regl);
        Get_Value(t2, regr);
        if (BinaryOp.OpMap.containsValue(tmpnode.Op)) {
            CurrentBlock.Add_Inst(new Asm_BinaryOp(t0, t1, t2, tmpnode.Op));
        } else {
            switch (tmpnode.Op) {
                case "eq":
                    CurrentBlock.Add_Inst(new Asm_BinaryOp(t1, t1, t2, "sub"));
                    CurrentBlock.Add_Inst(new Asm_SexzOp(t0, t1, "seqz"));
                    break;
                case "ne":
                    CurrentBlock.Add_Inst(new Asm_BinaryOp(t1, t1, t2, "sub"));
                    CurrentBlock.Add_Inst(new Asm_SexzOp(t0, t1, "snez"));
                    break;
                case "sgt":
                    CurrentBlock.Add_Inst(new Asm_BoolOp(t0, t2, t1, "slt"));
                    break;
                case "sge":
                    CurrentBlock.Add_Inst(new Asm_BinaryOp(t1, t2, t1, "sub"));
                    CurrentBlock.Add_Inst(new Asm_BoolOp(t0, t1, new Asm_Imm(1), "slti"));
                    break;
                case "slt":
                    CurrentBlock.Add_Inst(new Asm_BoolOp(t0, t1, t2, "slt"));
                    break;
                case "sle":
                    CurrentBlock.Add_Inst(new Asm_BinaryOp(t1, t1, t2, "sub"));
                    CurrentBlock.Add_Inst(new Asm_BoolOp(t0, t1, new Asm_Imm(1), "slti"));
                    break;
            }
        }
        Store_Value(reg, t0);
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
                Get_Value(t0, rs1);
                Get_Value(t1, offset);
                CurrentBlock.Add_Inst(new Asm_BinaryOp(t0, t0, t1, "add"));
                Store_Value(rd, t0);
            } else {
                CurrentBlock.Add_Inst(new Asm_La(t0, rs1));
                Asm_Imm offset = new Asm_Imm(((Ir_IntConstant) tmpnode.Operands.get(1)).val * 4);
                Get_Value(t1, offset);
                CurrentBlock.Add_Inst(new Asm_BinaryOp(t0, t0, t1, "add"));
                Store_Value(rd, t0);
            }
        } else {
            var offset = Get_Operand(tmpnode.Operands.get(1));
            Get_Value(t1, offset);
            Get_Value(t0, rs1);
            CurrentBlock.Add_Inst(new Asm_BinaryOp(t1, t1, new Asm_Imm(rd.size / 2), "slli"));// mul t1 4/1
            CurrentBlock.Add_Inst(new Asm_BinaryOp(t0, t0, t1, "add"));
            Store_Value(rd, t0);
        }
    }

    @Override
    public void visit(Bitcast tmpnode) {
        Get_Value(t0, Get_Operand(tmpnode.Operands.get(0)));
        Store_Value(Get_Operand(tmpnode.User), t0);
    }

    @Override
    public void visit(Ret tmpnode) {
        if (tmpnode.Operands.size() > 0) {
            var tmp = tmpnode.Operands.get(0);
            if (!(tmp instanceof Ir_VoidConst)) {
                // DEBUG(Get_Operand(tmpnode.Operands.get(0)).To_String());
                // assert(Get_Operand(tmpnode.Operands.get(0)) instanceof Asm_VirtualReg);
                Get_Value(a0, Get_Operand(tmpnode.Operands.get(0)));

            }
        }
        Get_Value(ra, CurrentFunc.ReturnAddress);
        // all alloca is put inside the Entry Block,so Total_Offset here must be the
        // real offset
        CurrentBlock.Add_Inst(new Asm_Ret());
    }

    @Override
    public void visit(Zext tmpnode) {
        Get_Value(t0, Get_Operand(tmpnode.Operands.get(0)));
        Store_Value(Get_Operand(tmpnode.User), t0);
    }

    @Override
    public void visit(Trunc tmpnode) {
        int t = tmpnode.User.Type.get_size() << 3;
        Asm_Imm imm = new Asm_Imm(1);
        Get_Value(t1, Get_Operand(tmpnode.Operands.get(0)));
        Get_Value(t2, imm);
        CurrentBlock.Add_Inst(new Asm_BinaryOp(t0, t1, t2, "and"));
        Store_Value(Get_Operand(tmpnode.User), t0);
    }

    @Override
    public void visit(Alloca tmpnode) {
        Get_Operand(tmpnode.User);
    }

    @Override
    public void visit(Inttoptr tmpnode) {
        Get_Value(t0, Get_Operand(tmpnode.Operands.get(0)));
        Store_Value(Get_Operand(tmpnode.User), t0);
    }

    @Override
    public void visit(Load tmpnode) {
        Asm_Operand Base = Get_Operand(tmpnode.Operands.get(0));
        if(Base instanceof Asm_GlobalValue){
            CurrentBlock.Add_Inst(new Asm_La(t1, Base));
        }
        else
            Get_Value(t1, Base);
        Ir_Value user = tmpnode.User;
        Asm_Operand Auser = Get_Operand(tmpnode.User);
        int totalsize = 0;
        if (user.Type instanceof Struct_Type) {
            Struct_Type type = (Struct_Type) user.Type;
            for (var SubType : type.Mem_Cnt) {
                if (SubType == 4) {
                    CurrentBlock.Add_Inst(new Asm_Load(t0, t1, new Asm_Imm(totalsize), Load_Type.LW));
                    Store_Value(Auser, t0, totalsize, StoreType.SW);
                } else {
                    CurrentBlock.Add_Inst(new Asm_Load(t0, t1, new Asm_Imm(totalsize), Load_Type.LB));
                    Store_Value(Auser, t0, totalsize, StoreType.SB);
                }
                totalsize += SubType;
            }
        } else {
            Get_Value(t0, new Asm_VirtualReg(t1, 0, 4));
            Store_Value(Auser, t0);
        }
    }

    @Override
    public void visit(Br tmpnode) {
        Asm_Operand j1 = Get_Operand(tmpnode.Operands.get(1));
        Asm_Operand j2 = Get_Operand(tmpnode.Operands.get(2));
        Asm_Operand judge = Get_Operand(tmpnode.Operands.get(0));
        Get_Value(t0, judge);
        CurrentBlock.Add_Inst(new Asm_Jump(j1, t0, "bnez"));
        CurrentBlock.Add_Inst(new Asm_Jump(j2, t0, "beqz"));
    }

    @Override
    public void visit(Icmp tmpnode) {
        Asm_Operand regl = Get_Operand(tmpnode.Operands.get(0));
        Asm_Operand regr = Get_Operand(tmpnode.Operands.get(1));
        Asm_Operand reg = Get_Operand(tmpnode.User);
        Get_Value(t1, regl);
        Get_Value(t2, regr);
        switch (tmpnode.choice) {
            case "eq":
                CurrentBlock.Add_Inst(new Asm_BinaryOp(t1, t1, t2, "sub"));
                CurrentBlock.Add_Inst(new Asm_SexzOp(t0, t1, "seqz"));
                break;
            case "ne":
                CurrentBlock.Add_Inst(new Asm_BinaryOp(t1, t1, t2, "sub"));
                CurrentBlock.Add_Inst(new Asm_SexzOp(t0, t1, "snez"));
                break;
            case "sgt":
                CurrentBlock.Add_Inst(new Asm_BoolOp(t0, t2, t1, "slt"));
                break;
            case "sge":
                CurrentBlock.Add_Inst(new Asm_BinaryOp(t1, t2, t1, "sub"));
                CurrentBlock.Add_Inst(new Asm_BoolOp(t0, t1, new Asm_Imm(1), "slti"));
                break;
            case "slt":
                CurrentBlock.Add_Inst(new Asm_BoolOp(t0, t1, t2, "slt"));
                break;
            case "sle":
                CurrentBlock.Add_Inst(new Asm_BinaryOp(t1, t1, t2, "sub"));
                CurrentBlock.Add_Inst(new Asm_BoolOp(t0, t1, new Asm_Imm(1), "slti"));
                break;
            case "ugt":
                CurrentBlock.Add_Inst(new Asm_BoolOp(t0, t2, t1, "sltu"));
                break;
            case "uge":
                CurrentBlock.Add_Inst(new Asm_BinaryOp(t1, t2, t1, "sub"));
                CurrentBlock.Add_Inst(new Asm_BoolOp(t0, t1, new Asm_Imm(1), "sltiu"));
                break;
            case "ult":
                CurrentBlock.Add_Inst(new Asm_BoolOp(t0, t1, t2, "sltu"));
                break;
            case "ule":
                CurrentBlock.Add_Inst(new Asm_BinaryOp(t1, t1, t2, "sub"));
                CurrentBlock.Add_Inst(new Asm_BoolOp(t0, t1, new Asm_Imm(1), "sltiu"));
                break;

        }
        Store_Value(reg, t0);
    }

    @Override
    public void visit(Global_Declare tmpnode) {
        Asm_GlobalValue tmp = new Asm_GlobalValue(((Ir_GlobalReg) tmpnode.User));
        Global_Declares.add(new Asm_Global_Declare(tmp));
    }

    @Override
    public void visit(Uncond_Br tmpnode) {
        CurrentBlock.Add_Inst(new Asm_J((Asm_BasicBlock) tmpnode.Operands.get(0).Asm_Reg));
    }

    @Override
    public void visit(Call tmpnode) {
        int totalsize = 0;
        for (int i = 0; i < tmpnode.Operands.size(); ++i) {
            var para = Get_Operand(tmpnode.Operands.get(i));
            if (i < 8) {
                switch (i) {
                    case 0:
                        Get_Value(a0, para);
                        break;
                    case 1:
                        Get_Value(a1, para);
                        break;
                    case 2:
                        Get_Value(a2, para);
                        break;
                    case 3:
                        Get_Value(a3, para);
                        break;
                    case 4:
                        Get_Value(a4, para);
                        break;
                    case 5:
                        Get_Value(a5, para);
                        break;
                    case 6:
                        Get_Value(a6, para);
                        break;
                    case 7:
                        Get_Value(a7, para);
                        break;
                }
            } else {
                Get_Value(t0, para);
                Store_Value(new Asm_VirtualReg(sp, totalsize, para.size), t0);
                totalsize += para.size;
            }
            
        }
        CurrentBlock.Add_Inst(new Asm_Call(tmpnode.Func.Name));
        CurrentBlock.Add_Inst(new Asm_BinaryOp(s10, sp, new Asm_Imm(CurrentFunc.Arg_Size), "addi"));
        if (tmpnode.User != null)
            Store_Value(Get_Operand(tmpnode.User), a0);
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
