#include<cstdio>
bool s = 1;
int **a;
struct A
{
    int c, d;
    A()
    {
        c = 0;
        d = 0;
    }
};
struct string
{
    /* data */
    int *a;
    int len;
    string(int len)
    {
        a = new int[len];
    }
};
const string C(10);
const int c[3] = {1, 2, 3};
void f()
{
    char *s = "asdasd";
    "Asdaad";
}
int cc(int w)
{
    if (w > 1)
        return 2;
    else
        return 1;
}

int main()
{
    int** siz=new int*[3];
    siz[1]=new int [2];
    std::scanf("%d",&siz[1][1]);
    siz[1][2]=3;
    if(siz[1][1]==3)
    {
        siz[1][1]*=12;
    }
    if(siz[1][1]>23)
    {
        return -1;
    }
    return 0;
}