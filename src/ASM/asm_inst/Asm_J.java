package ASM.asm_inst;

import java.util.ArrayList;
import java.util.jar.Attributes.Name;

import ASM.Asm_BasicBlock;
import backend.AsmVisitor;
public class Asm_J extends Asm_Inst {
    public Asm_J(Asm_BasicBlock blk){
        Rd=blk;
    }
    @Override
    public void accept(AsmVisitor allocater) {
        allocater.visit(this);
    }
    @Override
    public String To_String(){
        //j <blk name>
        String str="";
        if(OriginalInst!=null)
            str="\n\t#%s".formatted(OriginalInst.To_String());
        return "j %s".formatted(((Asm_BasicBlock)Rd).Name)+str;
    }
}
