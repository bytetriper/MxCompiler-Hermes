package IR.ir_type;

import utils.Init_Warning;

public class Int_Type extends Ir_Type {
    public int size;
    public Int_Type(){
        new Init_Warning("Int_32");
        size=32;
    }
    public Int_Type(int siz){
        assert(siz==1||siz==8||siz==32);
        size=siz;
    }
    @Override
    public int get_size(){
        return size;
    }
    @Override
    public String To_String(){
        return "i%d".formatted(size);
    }
}
