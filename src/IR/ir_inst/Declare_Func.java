package IR.ir_inst;

import java.util.ArrayList;

import IR.ir_value.Ir_Func;
import IR.ir_value.Ir_Value;
import astnode.defnode.FuncdefNode;
import utils.Init_Warning;
import IR.IRVisitor;

public class Declare_Func extends Ir_Inst {
    public Declare_Func(){
        new Init_Warning("Declare_Func");
    }
    public Declare_Func(Ir_Func func,ArrayList<Ir_Value> paras)
    {
        User=func;
        Operands=new ArrayList<>(paras);
    }
    @Override
    public void accept(IRVisitor visitor){
        visitor.visit(this);
    }
    @Override
    public String To_String()
    {
        //declare <func type> <func name> '(' (<para type> <para name>)* ')'
        String str="";
        for(var i=0;i<Operands.size();++i)
        {
            var each=Operands.get(i);
            str+="%s %s".formatted(each.Type.To_String(),each.To_String());
            if(i!=Operands.size()-1)
                str+=",";
        }
        Ir_Func tmpf=(Ir_Func)User;
        return "declare %s %s (%s)".formatted(tmpf.Type.To_String(),tmpf.To_String(),str);
    }
}
