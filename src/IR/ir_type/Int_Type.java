package IR.ir_type;

import utils.Init_Warning;

public class Int_Type extends Ir_Type {
    public int size;
    public boolean isbool=false;
    public Int_Type(){
        new Init_Warning("Int_32");
        size=32;
    }
    public Int_Type(int siz,boolean Isbool){
        assert(siz==1||siz==32);
        size=siz;
        isbool=Isbool;
    }
    @Override
    public int get_size(){
        if(size==1)
            return 4;//i1 should be saved as i32
        return size/8;//i1 should totally be unrelated to get_size
    }
    @Override
    public String To_String(){
        return "i%d".formatted(size);
    }
}   
