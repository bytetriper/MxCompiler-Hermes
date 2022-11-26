package IR.ir_type;

public class Array_Type extends Ir_Type {
    public int length;
    public Ir_Type To_Type;
    public Array_Type(){

    }
    @Override
    public int get_size(){
        return length*To_Type.get_size();
    }
    @Override
    public String To_String(){
        return "[{} x {}]".formatted(length,To_Type.To_String());
    }
}
