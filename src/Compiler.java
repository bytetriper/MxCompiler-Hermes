import parser.MxLexer;
import parser.MxParser;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;
import IR.IRBuilder;
import astnode.*;
import astnode.basicnode.*;
import astnode.defnode.*;
import astnode.exprnode.*;
import astnode.stmtsnode.*;
import backend.InstSelector;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Scanner;

import utils.*;
import frontend.*;
public class Compiler {
    static public String prefix="""
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
                return content[pos];
            }
            string substring(int left,int right){
                string tmp=new string();
                int tmplen=right-left;
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
            int tmplen=a.len+b.len,alen=a.len,blen=b.len;
            //printInt(tmplen);
            tmp.len=tmplen;
            tmp.content=new int [tmplen];
            for(int i=0;i<alen;++i)
                tmp.content[i]=a.content[i];
            for(int i=0;i<blen;++i)
                tmp.content[i+alen]=b.content[i];
            return tmp;
        }
        bool Less_Compare_String_Together_No_Collision_Please(string a,string b){
            int len=b.len;
            if(a.len<b.len)
                len=a.len;
            for(int i=0;i<len;++i)
            {
                if(a.content[i]<b.content[i])
                {
                    return true;
                }
                if(a.content[i]>b.content[i])
                {
                    return false;
                }
            }
            if(a.len>b.len)
                return true;
            return false;
        }
        bool Equal_String_Together_No_Collision_Please(string a,string b){
            if(a.len!=b.len)
                return false;
            int len=a.len;
            for(int i=0;i<len;++i){
                if(a.content[i]!=b.content[i])
                    return false;
            }
            return true;
        }
        bool Not_Equal_String_Together_No_Collision_Please(string a,string b){
            if(a.len!=b.len)
                return true;
            int len=a.len;
            for(int i=0;i<len;++i){
                if(a.content[i]!=b.content[i])
                    return true;
            }
            return false;
        }
        bool LE_Compare_String_Together_No_Collision_Please(string a,string b){
            return (Less_Compare_String_Together_No_Collision_Please(a,b))|(Equal_String_Together_No_Collision_Please(a,b));
        }
        bool Greater_Compare_String_Together_No_Collision_Please(string a,string b){
            return !LE_Compare_String_Together_No_Collision_Please(a,b);
        }
        bool GE_Compare_String_Together_No_Collision_Please(string a,string b){
            return !Less_Compare_String_Together_No_Collision_Please(a,b);
        }
        void print(string str)
        {
            printf_no_collision_please(str.content,str.len);
            return;
        }
        void println(string str)
        {
            print(str);
            print("\n");
            return;
        }
        void printlnInt(int num)
        {
            printInt(num);
            print("\n");
            return;
        }
        string toString(int i){
            int []a=new  int [20];//log(i)<20;
            int cnt=0;
            bool fg=false;
            if(i==0)
            {
                cnt=1;
                a[0]=0;
            }
            if(i<0){
                fg=true;
                i=-i;
            }
            while(i!=0){
                a[cnt]=i%10;
                i=i/10;
                ++cnt;
            }
            if(fg){
                a[cnt]=-3;
                ++cnt;
            }
            string tmp=new string();
            tmp.len=cnt;
            tmp.content=new int [cnt];
            for(int i=0;i<cnt;++i)
            {
                tmp.content[i]=a[cnt-i-1]+48;
            }
            return tmp;
        }
        string getString(){
            string tmp=new string();
            tmp.content=scanf_string();
            int cnt;
            for(cnt=0;tmp.content[cnt]!=0;++cnt)
            {    
            }
            tmp.len=cnt;
            return tmp;
        }    
    """;
    static public String Format_Prefix="""
    source_filename = \"test.cpp\"
    target datalayout = \"e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128\"
    target triple = \"i386-pc-linux-gnu\"
    """;
    public static void main(String[] args) throws Exception {
        //InputStream input=System.in;
        InputStream input;Scanner s;String result;
        if(args.length>0){
            input=new FileInputStream(args[0]);
            
        }else
        {    
            input=System.in;
        }
        s = new Scanner(input).useDelimiter("\\A");
        result = s.hasNext() ? s.next() : "";
        //System.out.println(result);
        //if(args.length>1)    
            result=prefix+result;
        //MxLexer lexer=new MxLexer(CharStreams.fromStream((input)));
        MxLexer lexer=new MxLexer(CharStreams.fromString(result));
        lexer.removeErrorListeners();
        lexer.addErrorListener(new MxErrorHandler());
        MxParser parser=new MxParser(new CommonTokenStream(lexer));
        parser.removeErrorListeners();
        parser.addErrorListener(new MxErrorHandler());
        //parser.addErrorListener();
        ParseTree root=parser.program();
        //System.out.println(root.toStringTree(parser));
        astbuilder visitor=new astbuilder();
        ProgramNode node=(ProgramNode)visitor.visit(root);
        SymbolCollector sc=new SymbolCollector();
        node.accept(sc);
        SemanticChecker SCK=new SemanticChecker(node);
        node.accept(SCK);
        
         
        IRBuilder IBD=new IRBuilder(node);
        node.accept(IBD);
        
        InstSelector IS=new InstSelector();
        IS.visit(IBD);
        System.out.print(IS.To_String());
        /*FileOutputStream outputLL=new FileOutputStream("/root/MxCompiler-Hermes/src/testcases/test.ll");
        outputLL.write((Format_Prefix+IBD.To_String()).getBytes());
        outputLL.close();*/
    }
}
