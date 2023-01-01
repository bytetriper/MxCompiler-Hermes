package ASM.asm_inst;

import java.util.ArrayList;
import java.util.jar.Attributes.Name;

import ASM.Asm_BasicBlock;

public class Asm_J extends Asm_Inst {
    public Asm_J(Asm_BasicBlock blk){
        Rd=blk;
    }
    @Override
    public String To_String(){
        //j <blk name>
        return "j %s".formatted(((Asm_BasicBlock)Rd).Name);
    }
}
