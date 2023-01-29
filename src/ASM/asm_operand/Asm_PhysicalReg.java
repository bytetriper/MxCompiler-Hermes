package ASM.asm_operand;

import java.util.ArrayList;
import java.util.HashMap;

public class Asm_PhysicalReg extends Asm_Reg {
    RegName Name;
    public enum RegName{
        zero ,
        ra , sp , gp , tp ,
        t0 , t1 , t2 , t3 , t4 , t5 , t6 ,
        s0 , s1 , s2 , s3 , s4 , s5 , s6 , s7 , s8 , s9 , s10 , s11 ,
        a0 , a1 , a2 , a3 , a4 , a5 , a6 , a7
    };
    public HashMap<RegName,String> To_Name=new HashMap<>(){{
        put(RegName.zero,"zero");
        put(RegName.ra,"ra");
        put(RegName.sp,"sp");
        put(RegName.gp,"gp");
        put(RegName.tp,"tp");
        put(RegName.t0,"t0");
        put(RegName.t1,"t1");
        put(RegName.t2,"t2");
        put(RegName.t3,"t3");
        put(RegName.t4,"t4");
        put(RegName.t5,"t5");
        put(RegName.t6,"t6");
        put(RegName.s0,"s0");
        put(RegName.s1,"s1");
        put(RegName.s2,"s2");
        put(RegName.s3,"s3");
        put(RegName.s4,"s4");
        put(RegName.s5,"s5");
        put(RegName.s6,"s6");
        put(RegName.s7,"s7");
        put(RegName.s8,"s8");
        put(RegName.s9,"s9");
        put(RegName.s10,"s10");
        put(RegName.s11,"s11");
        put(RegName.a0,"a0");
        put(RegName.a1,"a1");
        put(RegName.a2,"a2");
        put(RegName.a3,"a3");
        put(RegName.a4,"a4");
        put(RegName.a5,"a5");
        put(RegName.a6,"a6");
        put(RegName.a7,"a7");
    }
    };
    public Asm_PhysicalReg(RegName name){
        Name=name;
    }
    @Override
    public String To_String(){
        //just name
        return To_Name.get(Name);
    }
}
