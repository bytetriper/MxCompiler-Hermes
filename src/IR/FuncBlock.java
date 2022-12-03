package IR;

import java.lang.ProcessBuilder.Redirect.Type;
import java.util.ArrayList;
import java.util.jar.Attributes.Name;

import IR.ir_inst.Alloca;
import IR.ir_inst.Br;
import IR.ir_inst.Load;
import IR.ir_inst.Ret;
import IR.ir_inst.Uncond_Br;
import IR.ir_type.Ir_Type;
import IR.ir_type.Pointer_Type;
import IR.ir_value.Ir_Func;
import IR.ir_value.Ir_Reg;
import IR.ir_value.Ir_Value;
import utils.FUCKER;

public class FuncBlock extends Ir_Value{
    public ArrayList<BasicBlock> blks;
    public BasicBlock Entry,Exit;
    static int retcnt=0;
    public ArrayList<Ir_Value> Parameter;
    public Ir_Reg retval;
    public Ir_Value This;
    public FuncBlock(Ir_Func func,ArrayList<Ir_Value> Paras){
        Type=func.Type;
        Name=func.To_String();
        Parameter=new ArrayList<>(Paras);
        blks=new ArrayList<>();
        Entry=new BasicBlock(this,"Entry");//Can Modify
        retval=new Ir_Reg(".retval.p",new Pointer_Type(Type));
        Entry.add_inst(new Alloca(retval));
        Exit=new BasicBlock(this,"Exit");//Can Modify
        Ir_Reg return_load=new Ir_Reg(".retval",Type);
        Load end_load=new Load(return_load, retval);
        Exit.add_inst(end_load);
        Exit.end_block_with(new Ret(return_load));
    }
    public void Add_Alloca(Alloca inst){
        Entry.add_inst(inst);
    }
    public void Add_Block(BasicBlock tmpblock){
        blks.add(tmpblock);        
    }
    public Ir_Value Get_This(){//do not guarantee This exists or even have any parameters
        if(Parameter.size()==0)
            return null;
        return Parameter.get(0);
    }
    public void End_Func(){
        BasicBlock tmp=blks.get(0);
        Uncond_Br Jump_Ptr=new Uncond_Br(tmp);
        //Uncond_Br Jump_End=new Uncond_Br(Exit);
        Entry.end_block_with(Jump_Ptr);
        //tmpend.add_inst(Jump_End); 
    }
    @Override
    public int get_size(){
        new FUCKER("[Fatal Error]:try to get a FuncBlock's size");
        return -1;
    }
    @Override
    public String To_String(){
        //declare <type> <@Name> '('<type1> <name1>,<type2> <name2>... ')'{
        // block_to_string()
        //}
        String str="define %s %s".formatted(Type.To_String(),Name);
        str+='(';
        //Ir_Reg this_reg=new Ir_Reg("this", Type);
        for(int i=0;i<Parameter.size();i++)
        {
            str+="%s %s".formatted(Parameter.get(i).Type.To_String(),Parameter.get(i).To_String());
            if(i!=Parameter.size()-1)
                str+=",";
        }
        str+=")";
        str+="{\n";
        str+=Entry.To_String()+"\n";
        for(var each:blks){
            str+=each.To_String()+"\n";
        }
        str+=Exit.To_String()+"\n";
        str+="}\n";
        return str;
    }
}
