package IR.ir_inst;
import IR.ir_value.Ir_Value;
import utils.FUCKER;

import java.util.ArrayList;

public class Icmp extends Ir_Inst {
    public String choice;
    public Icmp(){
        super();
        System.out.println("[Unsuggested Behaviour]:Init Icmp without parameters");
    }
    public Icmp(Ir_Value user,ArrayList<Ir_Value> operands){
        super();
        User=user;
        Operands=new ArrayList<>(operands);
    }
    public Icmp(Ir_Value user,ArrayList<Ir_Value> operands,String ch){
        super();
        User=user;
        Operands=new ArrayList<>(operands);
        switch(ch){
            case "eq" :  choice = "eq" ; break;
            case "ne" :  choice = "ne" ; break;
            case "ugt" : choice = "ugt" ; break;
            case "uge" : choice = "uge" ; break;
            case "ult" : choice = "ult" ; break;
            case "ule" : choice = "ule" ; break;
            case "sgt" : choice = "sgt" ; break;
            case "sge" : choice = "sge" ; break;
            case "slt" : choice = "slt" ; break;
            case "sle" : choice = "sle" ; break;
            default: new FUCKER("[Fatal Error]:No Such Choice:{} At Icmp".formatted(ch));
        }
    }
    @Override
    public String To_String(){
        //%target=Icmp <Cond> <type> <op1> , <op2>
        return " %s=Icmp %s %s %s,%s".formatted(User.To_String(),choice,Operands.get(0).To_String(),Operands.get(1).To_String());
    }
}
