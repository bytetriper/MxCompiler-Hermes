class string {
    int[] content;
    int len;
    string(){}
    int length(){
        return len;
    } 
    int parseInt(){
        int ans=0;
        for(int i=0;i<len&&content[i]>47&&content[i]<58;i++)
        {   
            ans=ans*10+content[i]-48;
        }
        return ans;
    }
    int ord(int pos){
        return content[pos]-48;
    }
    string substring(int left,int right){
        string tmp=new string();
        int tmplen=right-left+1;
        tmp.content=new int [tmplen];
        tmp.len=tmplen;
        for(int i=0;i<tmplen;i++)
        {
            tmp.content[i]=content[left+i];
        }
        return tmp;
    } 
};
string Add_String_Together_No_Collision_Please(string a,string b)
{
    string tmp=new string();
    int tmplen=a.len+b.len,alen=a.len;
    tmp.len=tmplen;
    tmp.content=new int [tmp.len];
    for(int i=0;i<alen;++i)
        tmp.content[i]=a.content[i];
    for(int i=0;i<b.len;++i)
        tmp.content[i+alen]=b.content[i];
    return tmp;
}

void print(string str)
{
    int s=str.len;
    for(int i=0;i<s;i++)
    printf_no_collision_please(str.content[i]);

}
void println(string str)
{
    print(str);
    printf_no_collision_please(10);//"\n" for 10
}
void printInt(int num)
{
    printf_no_collision_please(num+48);
}
void printlnInt(int num)
{
    printf_no_collision_please(num+48);
    printf_no_collision_please(10);
}
string toString(int i){
    string tmp=new string();
    tmp.len=1;
    tmp.content=new int [1];
    tmp.content[0]=i+48;
    return tmp;
}

string getString(){
    string tmp;
    int [] a=new int [300];
    int cnt=0;
    while(true){
        int c=getInt()+48;
        if((c>47&&c<58)||(c>64&&c<91)||(c>96&&c<123))
            a[cnt]=c;
        else
            break;
        cnt++;
    }
    tmp.len=cnt;
    tmp.content=new int [cnt];
    for(int i=0;i<cnt;++i)
    {
        tmp.content[i]=a[i];
    }
    return tmp;
}
int main(){
    return 0;
}
/* 
int getInt(){

    return 1;
}
void printf_no_collision_please(int str){

}*/
