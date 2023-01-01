import os
from re import *
import subprocess
assert(os.getcwd()==r'/root/MxCompiler-Hermes/src')# Compiler的绝对路径
for path,pname,file in os.walk(r'../Compiler-2021-testcases/codegen'):#testcase相对Compiler的路径
    #print(path,file)
    for f in file:
        if not match(".*mx.*",f):
            #print(f)
            continue
        name=os.path.join(path,f)
        print(f"Testing {name}")
        with open(name,'r',encoding='utf8') as p:
            content=p.read()
        ret=subprocess.run('./RR {}'.format(name),shell=True,stdout=subprocess.PIPE,stderr=subprocess.PIPE,timeout=10)
        if ret.stderr:
            print("CodeGen Error")
        else:
            ret=subprocess.run('llvm-as testcases/test.ll',shell=True,stdout=subprocess.PIPE,stderr=subprocess.PIPE,timeout=10)
            if(ret.stderr):
                print("LLVM COMPILE ERROR at [{}]".format(name))
                print(ret.stderr)
            else:
                print('Correct')
