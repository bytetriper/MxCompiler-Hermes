package IR;

import java.util.ArrayList;

import IR.ir_inst.Alloca;
import IR.ir_inst.Br;
import IR.ir_inst.Ret;
import IR.ir_inst.Uncond_Br;
import IR.ir_type.Ir_Type;
import IR.ir_value.Ir_Reg;

public class FuncBlock {
    public ArrayList<BasicBlock> blks;
    public BasicBlock Entry,exit;
    static int retcnt=0;
    public FuncBlock(Ir_Type retT){
        blks=new ArrayList<>();
        Entry=new BasicBlock(this);
        Ir_Reg retval=new Ir_Reg(".retval.%d".formatted(retcnt),retT);
        Entry.add_inst(new Alloca(retval));
        exit=new BasicBlock(this);
        exit.add_inst(new Ret(retval));
    }
    public void Add_Block(BasicBlock tmpblock){
        blks.add(tmpblock);        
    }
    public void End_Func(){
        BasicBlock tmp=blks.get(0),tmpend=blks.get(blks.size()-1);
        Uncond_Br Jump_Ptr=new Uncond_Br(tmp);
        Uncond_Br Jump_End=new Uncond_Br(exit);
        Entry.add_inst(Jump_Ptr);
        tmpend.add_inst(Jump_End); 
    }
}
