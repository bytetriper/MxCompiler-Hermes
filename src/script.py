a=["zero" ,
        "ra" , "sp" , "gp" , "tp" ,
        "t0" , "t1" , "t2" , "t3" , "t4" , "t5" , "t6" ,
      "s0" , "s1" , "s2" , "s3" , "s4" , "s5" , "s6" , "s7" , "s8" , "s9" , "s10" , "s11" ,
        "a0" , "a1" , "a2" , "a3" , "a4" , "a5" , "a6" , "a7"]

for i in a:
    print("public final Asm_PhysicalReg {}=new Asm_PhysicalReg(RegName.{});".format(i,i))