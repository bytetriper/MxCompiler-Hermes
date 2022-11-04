package utils;

import java.util.ArrayList;
import java.util.HashMap;

import javax.management.RuntimeErrorException;

import astnode.basicnode.TypeNode;
import astnode.defnode.*;
import astnode.stmtsnode.StmtNode;
public class Scope {//A Class for suite that is not main suite
    public HashMap<String,SingleAssignNode> Varmember;
    public ArrayList<String> Register_array;
    public HashMap<String,FuncdefNode> Funcmember;
    public HashMap<String,ClassdefNode> Classmember;
    public Scope faScope=null;
    public StmtNode belongNode;//Func or Lambda
    public int cnter=0;
    public boolean isclass=false,ismain=false;
    //Members is impossible to be un-var
    public Scope()
    {
        Register_array=new ArrayList<>();
        Varmember=new HashMap<>();
        Funcmember=new HashMap<>();
        Classmember=new HashMap<>();
    }
    public void print()
    {
        for(String key:Varmember.keySet())
        {
            System.out.println(key);
        }
        for(String key:Funcmember.keySet())
        {
            System.out.println(key);
        }
        for(String key:Classmember.keySet())
        {
            System.out.println(key);
        }
    }
    public FuncdefNode Find_Func(String name)
    {
        if(InFuncScope(name))
            return Funcmember.get(name);
        if(faScope!=null)
            return faScope.Find_Func(name);
        return null;
    }
    public boolean InVarScope(String name){
        return Varmember.containsKey(name);
    }
    public boolean InFuncScope(String name)
    {
        return Funcmember.containsKey(name);
    }
    public boolean InClassScope(String name)
    {
        return Classmember.containsKey(name);
    }
    public boolean InScope(String name)
    {
        return InVarScope(name)|InFuncScope(name)|InClassScope(name);
    }
    public TypeNode Find_Type(String name)
    {
        if(InVarScope(name))
        {    
            return Varmember.get(name).type;
        }
        if(faScope==null)
        {    
            throw new RuntimeException("[Fatal error]Find Type Fail in FIND_TYPE_VAR");
            //return null;
        }
        return faScope.Find_Type(name);
    }
    public TypeNode Find_Func_Type(String name)
    {
        if(InFuncScope(name))
            return Funcmember.get(name).type;
        if(faScope==null)
            return null;
        return faScope.Find_Func_Type(name);
    }
    public boolean HasMethod(String name)
    {
        if(InFuncScope(name))
            return true;
        if(faScope!=null)
            return faScope.HasMethod(name);
        return false;
    }
    public boolean HasValue(String name)
    {
        if(InVarScope(name))
            return true;
        if(faScope!=null)
            return faScope.HasValue(name);
        return false;
    }
    public void Push(String name,DefNode node)
    {
        cnter++;
        if(InClassScope(name))
            throw new RuntimeException(String.format("[Symbol Collecting]%s collides with Class Name", name));
        if(node instanceof SingleAssignNode)
        {
            if(!InVarScope(name))
            {
                Register_array.add(name);
                Varmember.put(name,(SingleAssignNode)node);
                return;
            }
            throw new RuntimeException(String.format("[Symbol Collect]Var %s Alreay Exists",name));
        }
        if(node instanceof ClassdefNode)
        {
            if(!InClassScope(name))
            {   
                Classmember.put(name, (ClassdefNode)node);
                return;
            }
            throw new RuntimeException(String.format("[Symbol Collect]Class %s Alreay Exists",name));
        }
        if(node instanceof FuncdefNode)
        {
            if(!InFuncScope(name))
            {   
                Funcmember.put(name,(FuncdefNode)node);
                return;
            }
            throw new RuntimeException(String.format("[Symbol Collect]Func %s Alreay Exists",name));
        }
        throw new RuntimeException("[Fatal Error] Unexpected type when Scoping");
    }
}
