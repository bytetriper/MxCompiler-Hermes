package IR;

import java.lang.ProcessBuilder.Redirect.Type;
import java.util.ArrayList;

import IR.ir_inst.Br;
import IR.ir_inst.Ir_Inst;
import IR.ir_type.Label_Type;
import IR.ir_value.Ir_Value;

public class BasicBlock extends Ir_Value{
    public ArrayList<Ir_Inst> Inst;
    public static int cnt=0,BlockCnt=0;
    public FuncBlock FatherBlock;
    public String Get_Name(){
        BlockCnt++;
        return ".block.%d".formatted(BlockCnt);
    }
    public BasicBlock(FuncBlock func){
        cnt++;
        Name=Get_Name();
        Type=new Label_Type();
        Inst=new ArrayList<>();
        FatherBlock=func;
    }
    public void add_inst(Ir_Inst inst){
        Inst.add(inst);
    }
    //for Debugging
    public void print(){
        for(var each:Inst)
        {
            System.out.print(each.To_String());
        }
    }
    @Override
    public String To_String(){
        assert(Inst.get(Inst.size()-1) instanceof Br);
        /*
        <block name>:
            <Inst1>
            <Inst2>
            ...
            <Inst n=br> 
        */
        String str=Name+":\n\t";
        for(var each:Inst)
        {
            str+=each.To_String();
            str+="\n";
        }
        return str;
    }
}
