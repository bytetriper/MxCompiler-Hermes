package IR.ir_type;
public class Bool_Type extends Ir_Type{
    public Bool_Type(){

    }
    @Override
    public int get_size(){
        return 1;
    }
    @Override
    public String To_String(){
        return "bool";
    }
    
}
