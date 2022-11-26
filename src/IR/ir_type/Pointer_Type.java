package IR.ir_type;

public class Pointer_Type extends Ir_Type{
    public Ir_Type To_Type;
    public Pointer_Type(){}
    @Override
    public int get_size(){
        return 8;
    }
    @Override
    public String To_String(){
        return To_Type.To_String()+"*";
    }
}
