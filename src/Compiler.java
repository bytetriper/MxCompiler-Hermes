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
import utils.*;
import frontend.*;
public class Compiler {
    public static void main(String[] args) throws Exception {
        //InputStream input=System.in;
        InputStream input;
        if(args.length>0){
            input=new FileInputStream(args[0]);
            System.out.println(args[0]);
        }else
            input=System.in;
        MxLexer lexer=new MxLexer(CharStreams.fromStream((input)));
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
