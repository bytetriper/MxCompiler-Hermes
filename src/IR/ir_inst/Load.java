package IR.ir_inst;
import IR.ir_type.*;
import IR.IRVisitor;
public class Load extends Ir_Inst {
    public String Name;
    public Ir_Type Type;
    public Load(){
        System.out.println("[Unsuggested Behaviour]:Init Load without parameters");
        Name="undef";
    }
    public Load(String name,Ir_Type type){
        Name=name;
        Type=type;
    }
    @Override
    public void accept(IRVisitor visitor){
        visitor.accept(this);
    }
    @Override
    public String To_String(){
        return " %{}=Icmp {}".formatted(Name,Type.To_String());
    }
}
