package ASM;

import java.util.ArrayList;
import java.util.jar.Attributes.Name;

import ASM.asm_inst.Asm_Inst;
import ASM.asm_operand.Asm_Operand;

public class Asm_BasicBlock extends Asm_Operand {
    public String Name;
    public ArrayList<Asm_Inst> Insts;
    public Asm_Inst RetInst;
    public Boolean Returned;
    public static int cnt=0;
    public Asm_BasicBlock(String name){
        Insts=new ArrayList<>();
        Name=name;
    }
    public Asm_BasicBlock(){
        Insts=new ArrayList<>();
        Name=".L%d".formatted(cnt++);
    }
    public void Add_Inst(Asm_Inst inst){
        Insts.add(inst);
    }
    public void End_Block_with(Asm_Inst inst){
        RetInst=inst;
        Returned=true;
    }
    @Override
    public String To_String(){
        String str="%s:\n\t".formatted(Name);
        assert(Returned);
        for(var each:Insts){
            str+=each.To_String();
            str+="\n\t";
        }
        str+=RetInst.To_String()+"\n";
        return str;
    }
}
