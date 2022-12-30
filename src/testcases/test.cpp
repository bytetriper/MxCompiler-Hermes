bool a;
struct A{
	int b,v;
};
A* t=new A[3];
void f(){
	t[1].b=3;
}
int main(){
	bool b=a;
	f();
	return 0;
}