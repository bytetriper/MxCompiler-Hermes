package IR.ir_inst;
import IR.ir_type.*;
import IR.IRVisitor;
public class Icmp extends Ir_Inst {
    public String Name;
    public Ir_Type Type;
    public Icmp(){
        System.out.println("[Unsuggested Behaviour]:Init Icmp without parameters");
        Name="undef";
    }
    public Icmp(String name,Ir_Type type){
        Name=name;
        Type=type;
    }
    @Override
    public void accept(IRVisitor visitor){
        visitor.accept(this);
    }
    @Override
    public String To_String(){
        return " %{}=alloca {}".formatted(Name,Type.To_String());
    }
}
