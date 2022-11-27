package IR.ir_inst;

import java.util.jar.Attributes.Name;

import IR.IRVisitor;
import IR.ir_type.Ir_Type;

public class Alloca extends Ir_Inst{
    public String Name,target_Name;
    public Ir_Type Type;
    public String Label1,Label2;
    public Alloca(){
        System.out.println("[Unsuggested Behaviour]:Init alloca without parameters");
        Name="undef";
    }
    public Alloca(String Target_Name,String name,Ir_Type type,String label1,String label2){
        Name=name;
        Type=type;
        Label1=label1;
        Label2=label2;
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
