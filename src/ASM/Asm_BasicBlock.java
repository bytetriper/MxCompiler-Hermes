package ASM;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.jar.Attributes.Name;

import ASM.asm_inst.Asm_Inst;
import ASM.asm_operand.Asm_Operand;
import utils.FUCKER;
import backend.AsmVisitor;
public class Asm_BasicBlock extends Asm_Operand {
    public String Name;
    public LinkedList<Asm_Inst> Insts;
    public static int cnt=0;
    public Asm_BasicBlock(String name){
        Insts=new LinkedList<>();
        Name=name;
    }
    public Asm_BasicBlock(){
        Insts=new LinkedList<>();
        Name=".L%d".formatted(cnt++);
    }
    public void Push_Inst(Asm_Inst inst){
        Insts.addFirst(inst);
    }
    public void Add_Inst(Asm_Inst inst){
        Insts.add(inst);
    }
    public void accept(AsmVisitor allocater) {
        allocater.visit(this);
    }
    @Override
    public String To_String(){
        String str="\n";
        if(Name.equals(".Entry"))
        {
        }
        else
        {
            str="%s:\n\t".formatted(Name);
        }
        for(var each:Insts){
            str+=each.To_String();
            str+="\n\t";
        }
        return str;
    }
}

