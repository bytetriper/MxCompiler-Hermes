package IR;

import java.lang.ProcessBuilder.Redirect.Type;
import java.util.ArrayList;

import IR.ir_inst.Br;
import IR.ir_inst.Ir_Inst;
import IR.ir_type.Label_Type;
import IR.ir_value.Ir_Value;
import utils.FUCKER;

public class BasicBlock extends Ir_Value{
    public ArrayList<Ir_Inst> Inst;
    public static int cnt=0,BlockCnt=0;
    public FuncBlock FatherBlock;
    public Ir_Inst Ret_inst;
    public String Get_Name(){
        BlockCnt++;
        return ".block.%d".formatted(BlockCnt);//In formatting,%% represets %
    }
    public BasicBlock(FuncBlock func){
        cnt++;
        Name=Get_Name();
        Type=new Label_Type();
        Inst=new ArrayList<>();
        FatherBlock=func;
    }
    public BasicBlock(FuncBlock func,String name){//guarantee that "name" is unused before
        BlockCnt++;
        Name="%s.%d".formatted(name,BlockCnt);
        Type=new Label_Type();
        Inst=new ArrayList<>();
        FatherBlock=func;
    }
    public void add_inst(Ir_Inst inst){
        Inst.add(inst);
    }
    public void end_block_with(Ir_Inst inst){
       //Inst.add(inst);
        Ret_inst=inst;
    }
    //for Debugging
    public void print(){
        for(var each:Inst)
        {
            System.out.print(each.To_String());
        }
    }
    @Override 
    public int get_size(){
        new FUCKER("[Fatal Error]:try to get a block's size");
        return -1;
    }
    @Override
    public String To_String(){
        assert(Inst.get(Inst.size()-1) instanceof Br);
        assert(Ret_inst!=null);
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
            //System.out.println(each.To_String());
            str+=each.To_String();
            str+="\n\t";
        }
        str+=Ret_inst.To_String()+"\n";
        return str;
    }
}
