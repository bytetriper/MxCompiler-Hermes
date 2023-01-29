#include"stdlib.h"
#include"stdio.h"
void printf_no_collision_please(int* a,int len){
    char *s=(char *)malloc(len);
    for(int i=0;i<len;++i)
        s[i]=a[i];
    printf("%s",s);
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
int* scanf_string(){
    char s[200];
    scanf("%s",s);
    int *a=(int *)malloc(800);
    int i;
    for(i=0;s[i];++i){
        a[i]=s[i];
    }
    a[i]=0;
    return a;
}
int* _malloc(int size){
    int *a=(int *)malloc(size<<2);
    return a;
}
int* _malloc_toInt(int* size,int len){
    if(len==0)
        return 0;
    int* a;
    a=(int *)malloc((size[0]<<2)+4);
    *a=size[0];
    a=a+1;
    for(int i=0;i<size[0];++i){
        a[i]=(int)(_malloc_toInt(size+1,len-1));
    }
    return a;
}