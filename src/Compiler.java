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
import backend.NaiveAllocate;

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
            string(){
                len=0;
            }
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
        string tmp_no_collision_plz=new string();
        int []a_no_collison_plz=new  int [20];
        string toString(int i){//log(i)<20;
            if(tmp_no_collision_plz.len==0)
                tmp_no_collision_plz.content=new int[20];
            int cnt=0;
            bool fg=false;
            if(i==0)
            {
                cnt=1;
                a_no_collison_plz[0]=0;
            }
            if(i<0){
                fg=true;
                i=-i;
            }
            while(i!=0){
                a_no_collison_plz[cnt]=i%10;
                i=i/10;
                ++cnt;
            }
            if(fg){
                a_no_collison_plz[cnt]=-3;
                ++cnt;
            }
            tmp_no_collision_plz.len=cnt;
            for(int i=0;i<cnt;++i)
            {
                tmp_no_collision_plz.content[i]=a_no_collison_plz[cnt-i-1]+48;
            }
            return tmp_no_collision_plz;
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
    static public String BUILTIN="""
        .text
        .file	"builtin.c"
        .globl	printf_no_collision_please # -- Begin function printf_no_collision_please
        .p2align	2
        .type	printf_no_collision_please,@function
    printf_no_collision_please:             # @printf_no_collision_please
    # %bb.0:                                # %entry
        addi	sp, sp, -32
        sw	ra, 28(sp)
        sw	s0, 24(sp)
        addi	s0, sp, 32
        sw	a0, -12(s0)
        sw	a1, -16(s0)
        lw	a0, -16(s0)
        call	malloc
        sw	a0, -20(s0)
        sw	zero, -24(s0)
        j	.LBB0_1
    .LBB0_1:                                # %for.cond
                                            # =>This Inner Loop Header: Depth=1
        lw	a0, -24(s0)
        lw	a1, -16(s0)
        bge	a0, a1, .LBB0_4
        j	.LBB0_2
    .LBB0_2:                                # %for.body
                                            #   in Loop: Header=BB0_1 Depth=1
        lw	a0, -12(s0)
        lw	a1, -24(s0)
        slli	a2, a1, 2
        add	a0, a0, a2
        lw	a0, 0(a0)
        lw	a2, -20(s0)
        add	a1, a2, a1
        sb	a0, 0(a1)
        j	.LBB0_3
    .LBB0_3:                                # %for.inc
                                            #   in Loop: Header=BB0_1 Depth=1
        lw	a0, -24(s0)
        addi	a0, a0, 1
        sw	a0, -24(s0)
        j	.LBB0_1
    .LBB0_4:                                # %for.end
        lw	a1, -20(s0)
        lui	a0, %hi(.L.str)
        addi	a0, a0, %lo(.L.str)
        call	printf
        lw	s0, 24(sp)
        lw	ra, 28(sp)
        addi	sp, sp, 32
        ret
    .Lfunc_end0:
        .size	printf_no_collision_please, .Lfunc_end0-printf_no_collision_please
                                            # -- End function
        .globl	printInt                # -- Begin function printInt
        .p2align	2
        .type	printInt,@function
    printInt:                               # @printInt
    # %bb.0:                                # %entry
        addi	sp, sp, -16
        sw	ra, 12(sp)
        sw	s0, 8(sp)
        addi	s0, sp, 16
        sw	a0, -12(s0)
        lw	a1, -12(s0)
        lui	a0, %hi(.L.str.1)
        addi	a0, a0, %lo(.L.str.1)
        call	printf
        lw	s0, 8(sp)
        lw	ra, 12(sp)
        addi	sp, sp, 16
        ret
    .Lfunc_end1:
        .size	printInt, .Lfunc_end1-printInt
                                            # -- End function
        .globl	getInt                  # -- Begin function getInt
        .p2align	2
        .type	getInt,@function
    getInt:                                 # @getInt
    # %bb.0:                                # %entry
        addi	sp, sp, -16
        sw	ra, 12(sp)
        sw	s0, 8(sp)
        addi	s0, sp, 16
        lui	a0, %hi(.L.str.1)
        addi	a0, a0, %lo(.L.str.1)
        addi	a1, s0, -12
        call	__isoc99_scanf
        lw	a0, -12(s0)
        lw	s0, 8(sp)
        lw	ra, 12(sp)
        addi	sp, sp, 16
        ret
    .Lfunc_end2:
        .size	getInt, .Lfunc_end2-getInt
                                            # -- End function
        .globl	scanf_string            # -- Begin function scanf_string
        .p2align	2
        .type	scanf_string,@function
    scanf_string:                           # @scanf_string
    # %bb.0:                                # %entry
        addi	sp, sp, -224
        sw	ra, 220(sp)
        sw	s0, 216(sp)
        addi	s0, sp, 224
        lui	a0, %hi(.L.str)
        addi	a0, a0, %lo(.L.str)
        addi	a1, s0, -208
        call	__isoc99_scanf
        addi	a0, zero, 800
        call	malloc
        sw	a0, -212(s0)
        sw	zero, -216(s0)
        j	.LBB3_1
    .LBB3_1:                                # %for.cond
                                            # =>This Inner Loop Header: Depth=1
        lw	a0, -216(s0)
        addi	a1, s0, -208
        add	a0, a1, a0
        lbu	a0, 0(a0)
        beqz	a0, .LBB3_4
        j	.LBB3_2
    .LBB3_2:                                # %for.body
                                            #   in Loop: Header=BB3_1 Depth=1
        lw	a0, -216(s0)
        addi	a1, s0, -208
        add	a1, a1, a0
        lb	a1, 0(a1)
        lw	a2, -212(s0)
        slli	a0, a0, 2
        add	a0, a2, a0
        sw	a1, 0(a0)
        j	.LBB3_3
    .LBB3_3:                                # %for.inc
                                            #   in Loop: Header=BB3_1 Depth=1
        lw	a0, -216(s0)
        addi	a0, a0, 1
        sw	a0, -216(s0)
        j	.LBB3_1
    .LBB3_4:                                # %for.end
        lw	a0, -212(s0)
        lw	a1, -216(s0)
        slli	a1, a1, 2
        add	a0, a0, a1
        sw	zero, 0(a0)
        lw	a0, -212(s0)
        lw	s0, 216(sp)
        lw	ra, 220(sp)
        addi	sp, sp, 224
        ret
    .Lfunc_end3:
        .size	scanf_string, .Lfunc_end3-scanf_string
                                            # -- End function
        .globl	_malloc                 # -- Begin function _malloc
        .p2align	2
        .type	_malloc,@function
    _malloc:                                # @_malloc
    # %bb.0:                                # %entry
        addi	sp, sp, -16
        sw	ra, 12(sp)
        sw	s0, 8(sp)
        addi	s0, sp, 16
        sw	a0, -12(s0)
        lw	a0, -12(s0)
        slli	a0, a0, 2
        call	malloc
        sw	a0, -16(s0)
        lw	a0, -16(s0)
        lw	s0, 8(sp)
        lw	ra, 12(sp)
        addi	sp, sp, 16
        ret
    .Lfunc_end4:
        .size	_malloc, .Lfunc_end4-_malloc
                                            # -- End function
        .globl	_malloc_toInt           # -- Begin function _malloc_toInt
        .p2align	2
        .type	_malloc_toInt,@function
    _malloc_toInt:                          # @_malloc_toInt
    # %bb.0:                                # %entry
        addi	sp, sp, -32
        sw	ra, 28(sp)
        sw	s0, 24(sp)
        addi	s0, sp, 32
        sw	a0, -16(s0)
        sw	a1, -20(s0)
        lw	a0, -20(s0)
        bnez	a0, .LBB5_2
        j	.LBB5_1
    .LBB5_1:                                # %if.then
        sw	zero, -12(s0)
        j	.LBB5_7
    .LBB5_2:                                # %if.end
        lw	a0, -16(s0)
        lw	a0, 0(a0)
        slli	a0, a0, 2
        addi	a0, a0, 4
        call	malloc
        sw	a0, -24(s0)
        lw	a0, -16(s0)
        lw	a0, 0(a0)
        lw	a1, -24(s0)
        sw	a0, 0(a1)
        lw	a0, -24(s0)
        addi	a0, a0, 4
        sw	a0, -24(s0)
        sw	zero, -28(s0)
        j	.LBB5_3
    .LBB5_3:                                # %for.cond
                                            # =>This Inner Loop Header: Depth=1
        lw	a0, -28(s0)
        lw	a1, -16(s0)
        lw	a1, 0(a1)
        bge	a0, a1, .LBB5_6
        j	.LBB5_4
    .LBB5_4:                                # %for.body
                                            #   in Loop: Header=BB5_3 Depth=1
        lw	a0, -16(s0)
        addi	a0, a0, 4
        lw	a1, -20(s0)
        addi	a1, a1, -1
        call	_malloc_toInt
        lw	a1, -24(s0)
        lw	a2, -28(s0)
        slli	a2, a2, 2
        add	a1, a1, a2
        sw	a0, 0(a1)
        j	.LBB5_5
    .LBB5_5:                                # %for.inc
                                            #   in Loop: Header=BB5_3 Depth=1
        lw	a0, -28(s0)
        addi	a0, a0, 1
        sw	a0, -28(s0)
        j	.LBB5_3
    .LBB5_6:                                # %for.end
        lw	a0, -24(s0)
        sw	a0, -12(s0)
        j	.LBB5_7
    .LBB5_7:                                # %return
        lw	a0, -12(s0)
        lw	s0, 24(sp)
        lw	ra, 28(sp)
        addi	sp, sp, 32
        ret
    .Lfunc_end5:
        .size	_malloc_toInt, .Lfunc_end5-_malloc_toInt
                                            # -- End function
        .type	.L.str,@object          # @.str
        .section	.rodata.str1.1,"aMS",@progbits,1
    .L.str:
        .asciz	"%s"
        .size	.L.str, 3
    
        .type	.L.str.1,@object        # @.str.1
    .L.str.1:
        .asciz	"%d"
        .size	.L.str.1, 3        
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
        if(args.length>1)    
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
        System.out.print(Format_Prefix+IBD.To_String());
        InstSelector IS=new InstSelector();
        IS.visit(IBD);
        NaiveAllocate NA=new NaiveAllocate();
        NA.visit(IS);
        
        FileOutputStream outputASM=new FileOutputStream("output.s");
        outputASM.write(IS.To_String().getBytes());
        outputASM.close();
        FileOutputStream outputBUILTIN=new FileOutputStream("builtin.s");
        outputBUILTIN.write(BUILTIN.getBytes());
        outputBUILTIN.close();
    }
}
