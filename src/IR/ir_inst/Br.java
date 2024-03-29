package IR.ir_inst;

import java.util.ArrayList;

import IR.BasicBlock;
import IR.ir_type.Label_Type;
import IR.ir_value.Ir_Value;
import utils.FUCKER;
import utils.Init_Warning;
import IR.IRVisitor;
public class Br extends Ir_Inst{
    public Br(){
        new Init_Warning("Br_Inst");
    }
    public Br(Ir_Value cond,Ir_Value Label1,Ir_Value Label2)
    {
        super();
        User=null;
        Operands=new ArrayList<>();
        Operands.add(cond);
        if(!(Label1.Type instanceof Label_Type))
            new FUCKER("[fatal error]:At Br (user:{}) Label1 not Label type,but instead {} ".formatted(User.Name,Label1.Type.To_String()));
        if(!(Label2.Type instanceof Label_Type))
            new FUCKER("[fatal error]:At Br (user:{}) Label2 not Label type,but instead {} ".formatted(User.Name,Label2.Type.To_String()));    
        Operands.add(Label1);
        Operands.add(Label2);
    }
    @Override
    public void accept(IRVisitor visitor){
        visitor.visit(this);
    }
    @Override
    public String To_String(){
        //br <cond type> <cond name>,label(<label1 type>) <label1 name>,label(<label2 type>) <label2 name>
        Ir_Value cond=Operands.get(0);
        BasicBlock l1=(BasicBlock)Operands.get(1);
        BasicBlock l2=(BasicBlock)Operands.get(2);
        return "br %s %s,%s %%%s,%s %%%s".formatted(cond.Type.To_String(),cond.To_String(),l1.Type.To_String(),l1.Name,l2.Type.To_String(),l2.Name);
    }
}
