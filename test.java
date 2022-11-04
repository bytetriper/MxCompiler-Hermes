public class test {
    static public void main(String args[])
    {
        A a=new A();
        B b=new B();
        //System.out.println(b instanceof A);
        fun(a);
    }
    static public void fun(A c)
    {
        System.out.println(c instanceof B);
    }
}
class A{A(){}}
class B extends A{B(){super();}}
