import subprocess
with open("local.txt","r") as f:
    pipe=subprocess.Popen(["python src/include.py"],stdin=f,stdout=subprocess.PIPE,stderr=subprocess.PIPE,shell=True)
    print(pipe.stdout.read().decode("utf8"))
    pipe.stdout.close()