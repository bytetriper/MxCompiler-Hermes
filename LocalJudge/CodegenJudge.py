import os
import subprocess
from re import *
import numpy as np
import difflib
FLAG=1
targetPath="/root/MxCompiler-Hermes/src"
testcasesPath="../Compiler-2021-testcases/codegen/"
stdinPath="../LocalJudge/StandardInput.txt"
os.chdir(targetPath)
def IrJudge(targetFile,inputPath,ans,retcode):
    if FLAG:
        print("Input:{}".format(inputPath))
    with open(inputPath,"r",encoding="utf8") as f:
        try:
            ret=subprocess.run('./RR {}'.format(targetFile),shell=True,stdin=f,stdout=subprocess.PIPE,stderr=subprocess.PIPE,timeout=15,encoding="utf8")
        except:
            print("60s TLE")
            return True
        std=ret.stdout
        std=std.replace("\n","").replace(" ","")
        ans=ans.replace("\n","").replace(" ","")
        if(std!=ans):
            if FLAG:
                print("WrongAnswer:\n expect:{} \n get:{}\n".format(ans,std))
                #print("Diff:{}".format("\n".join(list(diff))))
            return False
        if(ret.returncode!=retcode):
            if FLAG:                                                                                                                                                                 
                print("Wrong Retcode:\n expect:{} \n get {}\n".format(retcode,ret.returncode))
            return False
    return True
def CodeGenJudge(targetFile,inputPath,ans,retcode):
    if FLAG:
        print("Input:{}".format(inputPath))
    with open(inputPath,"r",encoding="utf8") as f:
        try:
            ret=subprocess.run('./AA {}'.format(targetFile),shell=True,stdin=f,stdout=subprocess.PIPE,stderr=subprocess.PIPE,timeout=90,encoding="utf8")
        except:
            print("90s TLE")
            return True
        try:
            Testcode=int(match("([\s\S]*?)\nexit code:(.*?)([0-9]+)",ret.stdout).group(3))
            STDOUT=match("([\s\S]*)\nexit code:",ret.stdout).group(1)
        except:
            print("FAIL TO GET INPUT/OUTPUT/RETCODE")
            return True
        std=STDOUT
        std=STDOUT.replace("\n","").replace(" ","")
        ans=ans.replace("\n","").replace(" ","")
        if(std!=ans):
            if FLAG:
                print("WrongAnswer:\n expect:{} \n get:{}\n".format(ans,std))
                #print("Diff:{}".format("\n".join(list(diff))))
            return False
        if(Testcode!=retcode):
            if FLAG:                                                                                                                                                                 
                print("Wrong Retcode:\n expect:{} \n get {}\n".format(retcode,ret.returncode))
            return False
    return True
def OnlyIR():
    for path,np,file in os.walk(testcasesPath):
        for f in file:
            if not match(".*mx.*",f):
                print("Skip:{}".format(f))
                continue
            name=os.path.join(path,f)
            print(f"Testing {name}")
            with open(name,"r",encoding="utf-8") as p:
                content=p.read()
                #print(content)
                input=match("([\s\S]*?)\n=== input ===\n([\s\S]*?)\n=== end ===",content)
                if(input):
                    input=input.group(2)
                    if not input:
                        input=""
                else:
                    input=""
                output=match("([\s\S]*?)=== output ===\n([\s\S]*?)\n=== end ===",content)
                if(output):
                    output=output.group(2)
                    if not output:
                        output=""
                else:
                    output=""
                retcode=match("([\s\S]*)\nExitCode: ([0-9]+)",content)
                if(retcode):
                    #print("retcode:{}".format(retcode.group(2)))
                    retcode=int(retcode.group(2))
                #print(input,output,retcode)
            with open(stdinPath,"w",encoding="utf8") as p:
                p.write(input)
            result=IrJudge(name,stdinPath,output,retcode)
            if(result):
                print("PASS")
            else:
                print("FAIL")
def CodeGenCheck():
    for path,np,file in os.walk(testcasesPath):
        for f in file:
            if not match(".*mx.*",f):
                print("Skip:{}".format(f))
                continue
            name=os.path.join(path,f)
            print(f"Testing {name}")
            try:
                with open(name,"r",encoding="utf-8") as p:
                    content=p.read()
                    #print(content)
                    input=match("([\s\S]*?)\n=== input ===\n([\s\S]*?)\n=== end ===",content)
                    if(input):
                        input=input.group(2)
                        if not input:
                            input=""
                    else:
                        input=""
                    output=match("([\s\S]*?)=== output ===\n([\s\S]*?)\n=== end ===",content)
                    if(output):
                        output=output.group(2)
                        if not output:
                            output=""
                    else:
                        output=""
                    retcode=match("([\s\S]*)\nExitCode: ([0-9]+)",content)
                    if(retcode):
                        retcode=int(retcode.group(2))
            except:
                print("FAIL TO GET INPUT/OUTPUT/RETCODE")
                continue
            with open(stdinPath,"w",encoding="utf8") as p:
                p.write(input+"\n")
            result=CodeGenJudge(name,stdinPath,output,retcode)
            if(result):
                print("PASS")
            else:
                print("FAIL")    
if __name__=="__main__":
    CodeGenCheck()