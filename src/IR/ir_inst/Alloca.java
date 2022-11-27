package IR.ir_inst;

import IR.ir_value.Ir_Value;

public class Alloca extends Ir_Inst{
    public Ir_Value User;
    public Alloca(){
        System.out.println("[Unsuggested Behaviour]:Init alloca without parameters");
        User=null;
    }
    public Alloca(Ir_Value user){
        super();
        User=user;
    }
    @Override
    public String To_String(){
        return " {}=alloca {}".formatted(User.To_String(),User.Type.To_String());
    }
}
