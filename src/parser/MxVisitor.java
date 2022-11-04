package parser;// Generated from java-escape by ANTLR 4.11.1
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link MxParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface MxVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link MxParser#program}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitProgram(MxParser.ProgramContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#type}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitType(MxParser.TypeContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#listSuf}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitListSuf(MxParser.ListSufContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#classdef}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitClassdef(MxParser.ClassdefContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#funcdef}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFuncdef(MxParser.FuncdefContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#parameterList}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitParameterList(MxParser.ParameterListContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#parameter}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitParameter(MxParser.ParameterContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#exprList}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprList(MxParser.ExprListContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#vardef}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVardef(MxParser.VardefContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#singleAssign}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSingleAssign(MxParser.SingleAssignContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#suite}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSuite(MxParser.SuiteContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#constructordef}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitConstructordef(MxParser.ConstructordefContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStmt(MxParser.StmtContext ctx);
	/**
	 * Visit a parse tree produced by the {@code Recur_Expr}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitRecur_Expr(MxParser.Recur_ExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code Func_call_Expr}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunc_call_Expr(MxParser.Func_call_ExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code CorrectNew}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCorrectNew(MxParser.CorrectNewContext ctx);
	/**
	 * Visit a parse tree produced by the {@code Wrongnew}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitWrongnew(MxParser.WrongnewContext ctx);
	/**
	 * Visit a parse tree produced by the {@code binaryExpr}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBinaryExpr(MxParser.BinaryExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code Member_Expr}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMember_Expr(MxParser.Member_ExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code preExpr}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPreExpr(MxParser.PreExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code sufExpr}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSufExpr(MxParser.SufExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code Lambda_Func}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLambda_Func(MxParser.Lambda_FuncContext ctx);
	/**
	 * Visit a parse tree produced by the {@code assignExpr}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssignExpr(MxParser.AssignExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code IndexExpr}
	 * labeled alternative in {@link MxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIndexExpr(MxParser.IndexExprContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#atomExpr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAtomExpr(MxParser.AtomExprContext ctx);
}