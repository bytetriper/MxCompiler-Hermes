import subprocess
import os
import sys
assert(os.getcwd()==r'/root/MxCompiler-Hermes/src')
if(len(sys.argv)>1):
    os.chdir('parser')
    ret=subprocess.run("antlr4 Mx.g4 -visitor -no-listener",shell=True,stdout=subprocess.PIPE,stderr=subprocess.PIPE,timeout=10)
    if ret.stderr:
        print("compiler g4 error")
        exit(0)
if 1:
    if(len(sys.argv)>1):
        name=['MxBaseVisitor.java','MxParser.java','MxVisitor.java','MxLexer.java']
        for n in name:
            with open(n, "r+") as f:
                old = f.read()
                f.seek(0)
                f.write('package parser;')
                f.write(old)
        os.chdir('..')
    try:
        ret=subprocess.run("rm *.class",shell=True,stdout=subprocess.PIPE,stderr=subprocess.PIPE,timeout=10)
    except:
        pass
    try:
        ret=subprocess.run("rm */*.class",shell=True,stdout=subpsocess.PIPE,stderr=subprocess.PIPE,timeout=10)
        print(ret.stderr.decode('utf8','replace'))
    except:
        pass
    try:
        ret=subprocess.run("rm */*/*.class",shell=True,stdout=subpsocess.PIPE,stderr=subprocess.PIPE,timeout=10)
        print(ret.stderr.decode('utf8','replace'))
    except:
        pass
    #print(ret.stderr.decode(errors='ignore'))
    try:
        ret=subprocess.run("javac Compiler.java",shell=True,stdout=subprocess.PIPE,stderr=subprocess.PIPE,timeout=10)
    except:
        pass
    print(ret.stderr)
