package utils;
import astnode.*;
import astnode.basicnode.FuncNode;
import astnode.basicnode.TypeNode;
import astnode.basicnode.VarNode;
import astnode.defnode.*;
public class GScope extends Scope{
    public void init(){
        Classmember.put("int", new ClassdefNode("int"));
        Classmember.put("bool", new ClassdefNode("bool"));
        Classmember.put("string", new ClassdefNode("string"));
        Classmember.put("void", new ClassdefNode("void"));
        Classmember.put("null", new ClassdefNode("null"));
        FuncdefNode n1=new FuncdefNode("print"),
        n2=new FuncdefNode("println"),
        n3=new FuncdefNode("printInt"),
        n4=new FuncdefNode("printlnInt"),
        s1=new FuncdefNode("getString"),
        s2=new FuncdefNode("toString"),
        i1=new FuncdefNode("getInt"),
        ss1=new FuncdefNode(".size"),
        b1=new FuncdefNode("length"),
        b2=new FuncdefNode("substring"),
        b3=new FuncdefNode("parseInt"),
        b4=new FuncdefNode("ord");
        b1.type=new TypeNode("int");
        b2.type=new TypeNode("string");
        b3.type=new TypeNode("int");
        b4.type=new TypeNode("int");
        b2.paras.add(new SingleAssignNode(new TypeNode("int")));
        b2.paras.add(new SingleAssignNode(new TypeNode("int")));
        b4.paras.add(new SingleAssignNode(new TypeNode("int")));
        Classmember.get("string").scope.Funcmember.put("length",b1);
        Classmember.get("string").scope.Funcmember.put("substring",b2);
        Classmember.get("string").scope.Funcmember.put("parseInt",b3);
        Classmember.get("string").scope.Funcmember.put("ord",b4);
        n1.paras.add(new SingleAssignNode(new TypeNode("string")));
        n2.paras.add(new SingleAssignNode(new TypeNode("string")));
        n3.paras.add(new SingleAssignNode(new TypeNode("int")));
        n4.paras.add(new SingleAssignNode(new TypeNode("int")));
        s2.paras.add(new SingleAssignNode(new TypeNode("int")));
        n1.type=n2.type=n3.type=n4.type=new TypeNode("void");
        s1.type=s2.type=new TypeNode("string");
        i1.type=new TypeNode("int");
        ss1.type=new TypeNode("int");
        Funcmember.put("print", n1);
        Funcmember.put("println", n2);
        Funcmember.put("printInt", n3);
        Funcmember.put("printlnInt", n4);
        Funcmember.put("getInt", i1);
        Funcmember.put("toString", s2);
        Funcmember.put("getString", s1);
        Funcmember.put(".size", ss1);
    }
    public GScope(){
        super();
        ismain=true;
    }
    public boolean hasMember(String classname,String membername)
    {
        if(!Classmember.containsKey(classname))
            return false;
        if(!Classmember.get(classname).scope.InVarScope(membername))
            return false;
        return true;
    }
    public boolean hasMethod(String classname,String methodname)
    {
        if(!Classmember.containsKey(classname))
            return false;
        if(!Classmember.get(classname).scope.InFuncScope(methodname))
            return false;
        return true;
    }
    public boolean hasClass(String classname)
    {
        if(!Classmember.containsKey(classname))
            return false;
        return true;
    }
    public boolean hasFunc(String methodname)
    {
        if(!Funcmember.containsKey(methodname))
            return false;
        return true;
    }
    public TypeNode GetClassType(String classname)
    {
        if(!Classmember.containsKey(classname))
            return null;
        return Classmember.get(classname).type;
    }
    public TypeNode GetFuncType(String funcname)
    {
        if(!Funcmember.containsKey(funcname))
            return null;
        return Funcmember.get(funcname).type;
    }   
    public FuncdefNode GetMethodInClass(String classname,String Methodname)
    {
        return Classmember.get(classname).scope.Funcmember.get(Methodname);
    }
    public TypeNode GetMemberType(String classname,String membername)
    {
        return Classmember.get(classname).scope.Varmember.get(membername).type;
    }

}
