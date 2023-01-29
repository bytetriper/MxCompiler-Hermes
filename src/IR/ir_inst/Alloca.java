package IR.ir_inst;

import IR.IRVisitor;
import IR.ir_type.Pointer_Type;
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
        assert(user.Type instanceof Pointer_Type);
    }
    @Override
    public String To_String(){
        return "%s=alloca %s".formatted(User.To_String(),((Pointer_Type)User.Type).To_Type.To_String());
    }
    @Override
    public void accept(IRVisitor visitor){
        visitor.visit(this);
    }
}
