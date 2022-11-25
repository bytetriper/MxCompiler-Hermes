import os
import re
for path,pathname,file in os.walk(os.getcwd()):
    for f in file:
        if re.match(".*java$",f) and f!="ASTVisitor.java":
            pass
            print(f"@Override\n public void visit({f.split('.')[0]} tmpnode){'{}'};")
            #print("import ")
            #print("{\n return self.visit(this);\n}")