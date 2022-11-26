package IR.ir_inst;

import java.util.jar.Attributes.Name;

import IR.IRVisitor;
import IR.ir_type.Ir_Type;

public class Alloca extends Ir_Inst{
    public String Name;
    public Ir_Type Type;
    public Alloca(){
        System.out.println("[Unsuggested Behaviour]:Init alloca without parameters");
        Name="undef";
    }
    public Alloca(String name,Ir_Type type){
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
