package frontend;
import java.lang.ProcessBuilder.Redirect.Type;
import java.rmi.server.UID;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import java.util.jar.Attributes.Name;

import org.antlr.v4.misc.Graph.Node;

import astnode.*;
import astnode.basicnode.*;
import astnode.defnode.*;
import astnode.exprnode.*;
import astnode.stmtsnode.*;
import parser.*;
public class astbuilder extends MxBaseVisitor<AstNode>  {
	public boolean Fetch_all;
    public astbuilder(){
        super();
		Fetch_all=true;
    }
    /**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation returns the result of calling
	 * {@link #visitChildren} on {@code ctx}.</p>
	 */
	@Override public AstNode visitProgram(MxParser.ProgramContext ctx) { 
        ProgramNode tmpnode=new ProgramNode();
		if(Fetch_all)tmpnode.content=ctx.getText();
		for(var each:ctx.children)
		{ 
			if(each instanceof MxParser.ClassdefContext){
				ClassdefNode tmp=(ClassdefNode)visit(each);
				tmp.fa=tmpnode;
				tmpnode.UnitList.add(tmp);
			}
			if(each instanceof MxParser.FuncdefContext){
				FuncdefNode tmp=(FuncdefNode)visit(each);
				tmp.fa=tmpnode;
				tmpnode.UnitList.add(tmp);
			}
			if(each instanceof MxParser.VardefContext){
				VardefNode tmp=(VardefNode)visit(each);
				tmp.fa=tmpnode;
				tmpnode.UnitList.add(tmp);
			}
		}
        return tmpnode;
    }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation returns the result of calling
	 * {@link #visitChildren} on {@code ctx}.</p>
	 */
	@Override public AstNode visitType(MxParser.TypeContext ctx) { 
		TypeNode node=new TypeNode();
		if(Fetch_all)node.content=ctx.getText();
		if(ctx.Int()!=null)
			node.type="int";
		/* 
			if(ctx.String()!=null)
			node.type="string";
		*/
		if(ctx.Bool()!=null)
			node.type="bool";
		if(ctx.Void()!=null)
			node.type="void";
		if(ctx.Identifier()!=null)
			node.type=ctx.Identifier().getText();			
		if(ctx.listSuf()!=null)
			node.dimension=ctx.listSuf().size();
		else
			node.dimension=0;
		return node;
	}
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation returns the result of calling
	 * {@link #visitChildren} on {@code ctx}.</p>
	 */
	@Override public AstNode visitListSuf(MxParser.ListSufContext ctx) { return visitChildren(ctx); }
	//Already abondened
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation returns the result of calling
	 * {@link #visitChildren} on {@code ctx}.</p>
	 */
	@Override public AstNode visitClassdef(MxParser.ClassdefContext ctx) { 
        ClassdefNode node=new ClassdefNode(ctx.Identifier().getText());
		if(Fetch_all)node.content=ctx.getText();
        node.suite=(SuiteNode)visit(ctx.suite());
		node.suite.fa=node;
        return node; 
    }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation returns the result of calling
	 * {@link #visitChildren} on {@code ctx}.</p>
	 */
	@Override public AstNode visitFuncdef(MxParser.FuncdefContext ctx) { 
        FuncdefNode node=new FuncdefNode(ctx.Identifier().getText());
		if(Fetch_all)node.content=ctx.getText();
        node.type=(TypeNode)visit(ctx.type());
		node.type.fa=node;
		//System.out.println(node.type.type);
        if(ctx.parameterList()!=null)
        {
            for(var each:ctx.parameterList().parameter())
            {    
				SingleAssignNode tmp=(SingleAssignNode)visit(each);
				tmp.fa=node;
				node.paras.add(tmp);
			}
        }
        node.suite=(SuiteNode)visit(ctx.suite());
		node.suite.fa=node;
		node.suite.scope.belongNode=node;
        return node;
    }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation returns the result of calling
	 * {@link #visitChildren} on {@code ctx}.</p>
	 */
	@Override public AstNode visitParameterList(MxParser.ParameterListContext ctx) { //Already abondened
        return visitChildren(ctx);
    }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation returns the result of calling
	 * {@link #visitChildren} on {@code ctx}.</p>
	 */
	@Override public AstNode visitParameter(MxParser.ParameterContext ctx) { 
		SingleAssignNode node=new SingleAssignNode();
		if(Fetch_all)node.content=ctx.getText();
        node.type=(TypeNode)visit(ctx.type());
		node.type.fa=node;
        node.Name=ctx.Identifier().getText();
        return node; 
    }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation returns the result of calling
	 * {@link #visitChildren} on {@code ctx}.</p>
	 */
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation returns the result of calling
	 * {@link #visitChildren} on {@code ctx}.</p>
	 */
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation returns the result of calling
	 * {@link #visitChildren} on {@code ctx}.</p>
	 */
	@Override public AstNode visitExprList(MxParser.ExprListContext ctx) { return visitChildren(ctx); }
	//Abondoned
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation returns the result of calling
	 * {@link #visitChildren} on {@code ctx}.</p>
	 */
	@Override public AstNode visitVardef(MxParser.VardefContext ctx) { 
		VardefNode node=new VardefNode();
		if(Fetch_all)node.content=ctx.getText();

		TypeNode type=(TypeNode)visit(ctx.type());
		node.type=type;
		node.type.fa=node;
		for(var each:ctx.singleAssign())
		{
			SingleAssignNode tmp=(SingleAssignNode)visit(each);
			tmp.type=type;
			//System.out.println(String.format("Vardef %s %s",tmp.Name,tmp.type.type));
			tmp.fa=node;
			node.VarList.add(tmp);
		}
		return node;
	}
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation returns the result of calling
	 * {@link #visitChildren} on {@code ctx}.</p>
	 */
	@Override public AstNode visitSingleAssign(MxParser.SingleAssignContext ctx) { 
		SingleAssignNode node=new SingleAssignNode();
		if(Fetch_all)node.content=ctx.getText();
		node.Name=ctx.Identifier().getText();
		if(ctx.Assign()!=null)
		{
			node.value=(ExprNode)visit(ctx.expr());
			node.value.fa=node;
		}
		return node;
	}
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation returns the result of calling
	 * {@link #visitChildren} on {@code ctx}.</p>
	 */
	@Override public AstNode visitSuite(MxParser.SuiteContext ctx) { 
		SuiteNode node=new SuiteNode();
		if(Fetch_all)node.content=ctx.getText();

		if(ctx.stmt()!=null)
		{
			for(var each:ctx.stmt())
			{	
				StmtNode tmp=(StmtNode)visit(each);
				tmp.fa=node;
				node.StmtList.add(tmp);
			}
		}
		return node; 
	}
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation returns the result of calling
	 * {@link #visitChildren} on {@code ctx}.</p>
	 */
	@Override public AstNode visitConstructordef(MxParser.ConstructordefContext ctx) {
		ConstructordefNode node=new ConstructordefNode();
		if(Fetch_all)node.content=ctx.getText();
		node.type=new TypeNode("void");
		node.Name="construct";
		//System.out.println(node.Name);
		node.suite=(SuiteNode)visit(ctx.suite()); 
		node.fa=node;
		node.suite.scope.belongNode=node;
		return node; 
	}
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation returns the result of calling
	 * {@link #visitChildren} on {@code ctx}.</p>
	 */
	@Override public AstNode visitStmt(MxParser.StmtContext ctx) { 
		if(ctx.constructordef()!=null)
		{
			ConstructordefNode node=(ConstructordefNode)visit(ctx.constructordef());
			if(Fetch_all)node.content=ctx.getText();
			return node;
		}
		if(ctx.funcdef()!=null)
		{
			FuncdefNode node=(FuncdefNode)visit(ctx.funcdef());
			if(Fetch_all)node.content=ctx.getText();
			return node;
		}
		if(ctx.If()!=null)
		{
			IfstmtNode node=new IfstmtNode();
			if(Fetch_all)node.content=ctx.getText();
			node.Cond=(ExprNode)visit(ctx.Cond);
			node.Cond.fa=node;
			if(ctx.Ifsuite!=null)
			{
				node.Ifsuite=(SuiteNode)visit(ctx.Ifsuite);
			}
			else{
				node.Ifsuite=new SuiteNode();
				
				StmtNode tmp=(StmtNode)visit(ctx.Ifstmt);
				tmp.fa=node.Ifsuite;
				node.Ifsuite.StmtList.add(tmp);
			}
			if(ctx.Else()!=null)
			{
				if(ctx.Elsesuite!=null)
				{
					node.Elsesuite=(SuiteNode)visit(ctx.Elsesuite);
					
				}
				if(ctx.Elsestmt!=null)
				{
					node.Elsesuite=new SuiteNode();
					node.Elsesuite.StmtList.add((StmtNode)visit(ctx.Elsestmt));
				}
			}
			return node;
		}
		if(ctx.For()!=null)
		{
			ForstmtNode node=new ForstmtNode();
			if(Fetch_all)node.content=ctx.getText();
			node.Init=new NullNode();
			node.End=new BoolNode();
			node.Change=new NullNode();
			((BoolNode)node.End).BoolValue=true;
			if(ctx.InitVdf!=null || ctx.InitCond!=null)
			{
				if(ctx.InitVdf!=null)
					node.Init=(StmtNode)visit(ctx.InitVdf);
				if(ctx.InitCond!=null)
					node.Init=(StmtNode)visit(ctx.InitCond);
				node.Init.fa=node;
			}
			if(ctx.EndCond!=null)
			{
				node.End=(ExprNode)visit(ctx.EndCond);
				node.End.fa=node;
			}
			if(ctx.Change!=null)
			{
				node.Change=(ExprNode)visit(ctx.Change);
				node.Change.fa=node;
			}
			if(ctx.LoopSuite!=null)
				node.suite=(SuiteNode)visit(ctx.LoopSuite);
			else
			{
				node.suite=new SuiteNode();
				StmtNode tmp=(StmtNode)visit(ctx.LoopStmt);
				tmp.fa=node.suite;
				node.suite.StmtList.add(tmp);
			}
			return node;
		}
		if(ctx.While()!=null)
		{
			WhilestmtNode node=new WhilestmtNode();
			if(Fetch_all)node.content=ctx.getText();
			node.End=(ExprNode)visit(ctx.Cond);
			node.End.fa=node;
			if(ctx.LoopSuite!=null)
			{
				node.suite=(SuiteNode)visit(ctx.LoopSuite);
				
			}
			else
			{
				node.suite=new SuiteNode();
				node.suite.StmtList.add((StmtNode)visit(ctx.LoopStmt));
			}
			return node;
		}
		if(ctx.Continue()!=null)
		{
			ContinuestmtNode node=new ContinuestmtNode();
			if(Fetch_all)node.content=ctx.getText();
			return node;
		}
		if(ctx.Break()!=null)
		{
			BreakstmtNode node=new BreakstmtNode();
			if(Fetch_all)node.content=ctx.getText();
			return node;
		}
		if(ctx.Return()!=null)
		{
			ReturnstmtNode node=new ReturnstmtNode();
			if(Fetch_all)node.content=ctx.getText();
			if(ctx.expr(0)!=null)
				node.RetValue=(ExprNode)visit(ctx.expr(0));
			else
				node.RetValue=null;
			return node;
		}
		if(ctx.suite(0)!=null)
		{
			//System.out.println(ctx.suite(0).getText());
			SuiteNode node=(SuiteNode)visit(ctx.suite(0));
			if(Fetch_all)node.content=ctx.getText();
			return node;
			
		}
		if(ctx.vardef()!=null)
		{
			VardefNode node=(VardefNode)visit(ctx.vardef());
			if(Fetch_all)node.content=ctx.getText();
			return node;
		
		}
		if(ctx.expr(0)!=null)
		{
			ExprNode node=(ExprNode)visit(ctx.expr(0));
			if(Fetch_all)node.content=ctx.getText();
			return node;
		}
		if(ctx.getText().equals(";"))
		{
			return new NullNode();
		}
		//System.out.println(ctx.getText());
		throw new RuntimeException("[Fatal Error]Missed Match at stmt"); 
	}
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation returns the result of calling
	 * {@link #visitChildren} on {@code ctx}.</p>
	 */
	@Override public AstNode visitWrongnew(MxParser.WrongnewContext ctx) { throw new RuntimeException("[format wrong]:New"); }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation returns the result of calling
	 * {@link #visitChildren} on {@code ctx}.</p>
	 */
	@Override public AstNode visitCorrectNew(MxParser.CorrectNewContext ctx) { 
		VarNode node=new VarNode();
		node.name=".new";
		if(Fetch_all)node.content=ctx.getText();
		TypeNode tmpNode=(TypeNode)visit(ctx.type());
		node.type=tmpNode;
		if(node.type.type.equals("void"))
			throw new RuntimeException(String.format("[Symbol Collecting]Newing Void in:%s",node.content));
		if(ctx.expr()!=null)
		{
			for(var each:ctx.expr())
			{
				ExprNode tmp=(ExprNode)visit(each);
				tmp.fa=node;
				node.SizeList.add(tmp);
			}
		}
		node.type.dimension=node.SizeList.size()+ctx.listSuf().size();
		return node;
	}
	@Override public AstNode visitRecur_Expr(MxParser.Recur_ExprContext ctx) { 
		if(ctx.atomExpr()!=null)
		{	
			ExprNode node=(ExprNode)visit(ctx.atomExpr());
			if(Fetch_all)node.content=ctx.getText();
			return node;
		}
		else
		{
			ExprNode node=(ExprNode)visit(ctx.expr());
			if(Fetch_all)node.content=ctx.getText();
			return node;
		}
	}
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation returns the result of calling
	 * {@link #visitChildren} on {@code ctx}.</p>
	 */	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation returns the result of calling
	 * {@link #visitChildren} on {@code ctx}.</p>
	 */
	@Override public AstNode visitFunc_call_Expr(MxParser.Func_call_ExprContext ctx)
	{
		FuncNode func=new FuncNode();
		if(Fetch_all)func.content=ctx.getText();
		//System.out.println(func.content);
		func.name=(ExprNode)visit(ctx.expr());
		func.name.fa=func;
		if(ctx.exprList()!=null)
		{
			func.ExprList=new ArrayList<>();
			for(var each:ctx.exprList().expr())
			{
				ExprNode tmp=(ExprNode)visit(each);
				tmp.fa=func;
				func.ExprList.add(tmp);	
			}
		}
		return func;
	}
	/**
	/**
	 * Visit a parse tree produced by the {@code NewExpr}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	@Override public AstNode visitBinaryExpr(MxParser.BinaryExprContext ctx) { 
		BinaryexprNode node=new BinaryexprNode();
		if(Fetch_all)node.content=ctx.getText();
		node.lv=(ExprNode)visit(ctx.lv);
		node.rv=(ExprNode)visit(ctx.rv);
		node.lv.fa=node;
		node.rv.fa=node;
		node.op=ctx.op.getText();
		return node;
	}
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation returns the result of calling
	 * {@link #visitChildren} on {@code ctx}.</p>
	 */
	@Override public AstNode visitMember_Expr(MxParser.Member_ExprContext ctx) { 
		MemberexprNode node=new MemberexprNode();
		if(Fetch_all)node.content=ctx.getText();
		node.name=ctx.Identifier().getText();
		node.belongs=(ExprNode)visit(ctx.expr());
		node.belongs.fa=node;
		return node;
	}

	@Override public AstNode visitPreExpr(MxParser.PreExprContext ctx) { 
		PreexprNode node=new PreexprNode();
		if(Fetch_all)node.content=ctx.getText();
		node.rv=(ExprNode)visit(ctx.rv);
		node.rv.fa=node;
		node.op=ctx.op.getText();
		return node;
	}
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation returns the result of calling
	 * {@link #visitChildren} on {@code ctx}.</p>
	 */
	@Override public AstNode visitSufExpr(MxParser.SufExprContext ctx) { 
		SufexprNode node=new SufexprNode();
		if(Fetch_all)node.content=ctx.getText();
		node.lv=(ExprNode)visit(ctx.lv);
		node.lv.fa=node;
		node.op=ctx.op.getText();
		return node;
	}
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation returns the result of calling
	 * {@link #visitChildren} on {@code ctx}.</p>
	 */
	@Override public AstNode visitLambda_Func(MxParser.Lambda_FuncContext ctx) { 
		LamFuncNode node=new LamFuncNode();
		if(Fetch_all)node.content=ctx.getText();
		if(ctx.And()!=null)
			node.FetchAll=true;
		if(ctx.parameterList()!=null)
		{
			node.paras=new ArrayList<>();
			for(var each:ctx.parameterList().parameter())
			{    
				SingleAssignNode tmp=(SingleAssignNode)visit(each);
				tmp.fa=node;
				node.paras.add(tmp);
			}
		}
		node.suite=(SuiteNode)visit(ctx.suite());
		return node; 
	}

	@Override public AstNode visitAssignExpr(MxParser.AssignExprContext ctx) { 
		BinaryexprNode node=new BinaryexprNode();
		if(Fetch_all)node.content=ctx.getText();
		node.lv=(ExprNode)visit(ctx.lv);
		node.rv=(ExprNode)visit(ctx.rv);
		node.op="=";
		return node; }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation returns the result of calling
	 * {@link #visitChildren} on {@code ctx}.</p>
	 */
	@Override public AstNode visitIndexExpr(MxParser.IndexExprContext ctx) { 
		IndexNode node=new IndexNode();
		if(Fetch_all)node.content=ctx.getText();
		node.belongs=(ExprNode)visit(ctx.expr(0));
		node.belongs.fa=node;
		for(int i=1;i<ctx.expr().size();++i)
		{
			ExprNode tmp=(ExprNode)visit(ctx.expr(i));
			tmp.fa=node;
			node.IndexList.add(tmp);
		}
		return node; 
	}
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation returns the result of calling
	 * {@link #visitChildren} on {@code ctx}.</p>
	 */
	public ArrayList<Integer> To_ASCII(String str){
		ArrayList<Integer> tmp=new ArrayList<>();
		char [] tmpc=str.toCharArray();
		for(int i=0;i<str.length();++i)
			tmp.add((int)tmpc[i]);
		return tmp;
	}
	@Override public AstNode visitAtomExpr(MxParser.AtomExprContext ctx) { 
		if(ctx.ConstString()!=null)
		{
			StringNode node=new StringNode();
			if(Fetch_all)node.content=ctx.getText();
			node.Content=To_ASCII(ctx.ConstString().getText());
			return node;
		}
		if(ctx.Integer()!=null)
		{
			IntegerNode node=new IntegerNode();
			if(Fetch_all)node.content=ctx.getText();
			node.IntValue=Integer.parseInt(ctx.Integer().getText());
			return node;
		}
		if(ctx.BoolConst()!=null)
		{
			BoolNode node=new BoolNode();
			if(Fetch_all)node.content=ctx.getText();
			if(ctx.BoolConst().getText().equals("true"))
				node.BoolValue=true;
			else
				node.BoolValue=false;
			return node;
		}
		if(ctx.Identifier()!=null)
		{
			VarNode node=new VarNode();
			if(Fetch_all)node.content=ctx.getText();
			node.name=ctx.Identifier().getText();
			return node;
		}
		if(ctx.This()!=null)
		{
			ThisNode node=new ThisNode();
			if(Fetch_all)node.content=ctx.getText();
			return node;
		}
		if(ctx.Null()!=null)
		{
			NullNode node=new NullNode();
			if(Fetch_all)node.content=ctx.getText();
			return node;
		}
		throw new RuntimeException("[Fatal Error]Mismatch at Atomexpr");
	}
}
