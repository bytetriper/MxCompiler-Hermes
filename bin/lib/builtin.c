#include"stdlib.h"
#include"stdio.h"
void printf_no_collision_please(int c){
    printf("%c",c);
}
void printInt(int c){
    printf("%d",c);
}
int getInt(){
    int c;
    scanf("%d",&c);
    //printf("%d\n",c);
    return c;
}
int scanf_no_collision_please(){
    char c;
    scanf("%c",&c);
    //printInt(c);
    return c;
}
int* _malloc(int size){
    int *a=(int *)malloc(size<<2);
    return a;
}
int* _malloc_toInt(int* size,int len){
    if(len==0)
        return NULL;
    //printInt(size[0]);
    int* a;
    //a=new int[size[0]];
    a=(int *)malloc((size[0]<<2)+4);
    *a=size[0];
    a=a+1;
    for(int i=0;i<size[0];++i){
        a[i]=(int)(_malloc_toInt(size+1,len-1));
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
    a=(int *)malloc((size[0]<<2)+4);
    *a=size[0];
    a=a+1;
    for(int i=0;i<size[0];++i){
        a[i]=(int)(_malloc_toBool(size+1,len-1));
    }
    return a;
}