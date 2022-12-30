#include<cstdlib>
#include<cstdio>
int* _malloc_toInt(int* size,int len){
    if(len==0)
        return nullptr;
    int* a;
    //a=new int[size[0]];
    a=(int *)malloc(size[0]<<2+4);
    *a=size[0];
    a=a+4;
    for(int i=0;i<size[0];++i){
        a[i]=reinterpret_cast<int>(_malloc_toInt(size+1,len-1));
    }
    return a;
}
int* _malloc_toBool(int* size,int len){
    if(len==1)
    {
        int *a;
        a=(int *)malloc(size[0]+4);
        *a=size[0];
        a=a+4;
        return (int *)a;
    }
    int* a;
    //a=new int[size[0]];
    a=(int *)malloc(size[0]<<2+4);
    *a=size[0];
    a=a+4;
    for(int i=0;i<size[0];++i){
        a[i]=reinterpret_cast<int>(_malloc_toBool(size+1,len-1));
    }
    return a;
}
void printf_no_collision_please(int c){
    printf("%c",c);
}