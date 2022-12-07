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
        {
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
            int s=str.len;
            for(int i=0;i<s;i++)
            printf_no_collision_please(str.content[i]);
            return;
        }
        void println(string str)
        {
            print(str);
            printf_no_collision_please(10);
            return;
        }
        void printInt(int num)
        {
            printf_no_collision_please(num+48);
            return;
        }
        void printlnInt(int num)
        {
            printf_no_collision_please(num+48);
            printf_no_collision_please(10);
            return;
        }
        string toString(int i){
            string tmp=new string();
            tmp.len=1;
            tmp.content=new int [1];
            tmp.content[0]=i+48;
            return tmp;
        }
        string getString(){
            string tmp=new string();
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
        }
    """;
    public static void main(String[] args) throws Exception {
        //InputStream input=System.in;
        InputStream input;Scanner s;String result;
        if(args.length>0){
            input=new FileInputStream(args[0]);
            
        }else
        {    input=System.in;
        }
        s = new Scanner(input).useDelimiter("\\A");
        result = s.hasNext() ? s.next() : "";
        System.out.println(result);
        result=prefix+result;
        //MxLexer lexer=new MxLexer(CharStreams.fromStream((input)));
        MxLexer lexer=new MxLexer(CharStreams.fromString(result));
        //lexer.removeErrorListeners();
        //lexer.addErrorListener(new MxErrorHandler());
        MxParser parser=new MxParser(new CommonTokenStream(lexer));
        //parser.removeErrorListeners();
        //parser.addErrorListener(new MxErrorHandler());
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
        System.out.print(IBD.To_String());
        //node.GlobalScope.print();
    }
}
