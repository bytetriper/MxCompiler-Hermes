import os
import re
os.chdir("/root/MxCompiler-Hermes/src")
for path,pathname,file in os.walk("./ASM/asm_inst"):
    for f in file:
        if re.match(".*java$",f) and f!="ASTVisitor.java":
            pass
            print(f"@Override\n public void visit({f.split('.')[0]} inst){'{}'}")
            #print("import ")
            #print("{\n return self.visit(this);\n}")