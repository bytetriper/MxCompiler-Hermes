#include<cstdlib>
#include<cstdio>
bool s=1;
int **a;
int* _malloc_toInt(int* size,int len){
    if(len==0)
        return nullptr;
    int* a;
    //a=new int[size[0]];
    a=(int *)malloc(size[0]<<2);
    for(int i=0;i<size[0];++i){
        a[i]=reinterpret_cast<int>(_malloc_toInt(size+1,len-1));
    }
    return a;
}
int* _malloc_toBool(int* size,int len){
    if(len==1)
    {
        bool *a;
        a=(bool *)malloc(size[0]);
        return (int *)a;
    }
    int* a;
    //a=new int[size[0]];
    a=(int *)malloc(size[0]<<2);
    for(int i=0;i<size[0];++i){
        a[i]=reinterpret_cast<int>(_malloc_toBool(size+1,len-1));
    }
    return a;
}
int siz[2];
int main(){
    int len=2;
    siz[0]=3;
    siz[1]=2;
    int **a=(int **) _malloc_toInt(siz,len);
    a[1][1]=0;
    printf("%d\n",a[1][1]);
    return 0;
}