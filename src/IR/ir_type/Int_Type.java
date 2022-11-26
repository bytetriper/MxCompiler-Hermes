package IR.ir_type;
public class Int_Type extends Ir_Type {
    public Int_Type(){

    }
    @Override
    public int get_size(){
        return 8;
    }
    @Override
    public String To_String(){
        return "int";
    }
}
