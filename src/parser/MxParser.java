package parser;// Generated from java-escape by ANTLR 4.11.1
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast", "CheckReturnValue"})
public class MxParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.11.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, Integer=3, BoolConst=4, ConstString=5, Int=6, String=7, 
		Bool=8, Void=9, If=10, Else=11, Return=12, Class=13, Tru=14, Fals=15, 
		This=16, For=17, While=18, Break=19, Continue=20, New=21, Null=22, LeftParen=23, 
		RightParen=24, LeftBracket=25, RightBracket=26, LeftBrace=27, RightBrace=28, 
		To=29, Less=30, LessEqual=31, Greater=32, GreaterEqual=33, LeftShift=34, 
		RightShift=35, Plus=36, Minus=37, Mul=38, Div=39, Mod=40, AndAnd=41, OrOr=42, 
		Caret=43, And=44, Or=45, Not=46, Tilde=47, Question=48, Colon=49, Semi=50, 
		Comma=51, Assign=52, Equal=53, NotEqual=54, Dot=55, Identifier=56, Whitespace=57, 
		Newline=58, BlockComment=59, LineComment=60;
	public static final int
		RULE_program = 0, RULE_type = 1, RULE_listSuf = 2, RULE_classdef = 3, 
		RULE_funcdef = 4, RULE_parameterList = 5, RULE_parameter = 6, RULE_exprList = 7, 
		RULE_vardef = 8, RULE_singleAssign = 9, RULE_suite = 10, RULE_constructordef = 11, 
		RULE_stmt = 12, RULE_expr = 13, RULE_atomExpr = 14;
	private static String[] makeRuleNames() {
		return new String[] {
			"program", "type", "listSuf", "classdef", "funcdef", "parameterList", 
			"parameter", "exprList", "vardef", "singleAssign", "suite", "constructordef", 
			"stmt", "expr", "atomExpr"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'++'", "'--'", null, null, null, "'int'", "'string'", "'bool'", 
			"'void'", "'if'", "'else'", "'return'", "'class'", "'true'", "'false'", 
			"'this'", "'for'", "'while'", "'break'", "'continue'", "'new'", "'null'", 
			"'('", "')'", "'['", "']'", "'{'", "'}'", "'->'", "'<'", "'<='", "'>'", 
			"'>='", "'<<'", "'>>'", "'+'", "'-'", "'*'", "'/'", "'%'", "'&&'", "'||'", 
			"'^'", "'&'", "'|'", "'!'", "'~'", "'?'", "':'", "';'", "','", "'='", 
			"'=='", "'!='", "'.'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, "Integer", "BoolConst", "ConstString", "Int", "String", 
			"Bool", "Void", "If", "Else", "Return", "Class", "Tru", "Fals", "This", 
			"For", "While", "Break", "Continue", "New", "Null", "LeftParen", "RightParen", 
			"LeftBracket", "RightBracket", "LeftBrace", "RightBrace", "To", "Less", 
			"LessEqual", "Greater", "GreaterEqual", "LeftShift", "RightShift", "Plus", 
			"Minus", "Mul", "Div", "Mod", "AndAnd", "OrOr", "Caret", "And", "Or", 
			"Not", "Tilde", "Question", "Colon", "Semi", "Comma", "Assign", "Equal", 
			"NotEqual", "Dot", "Identifier", "Whitespace", "Newline", "BlockComment", 
			"LineComment"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "java-escape"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public MxParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ProgramContext extends ParserRuleContext {
		public TerminalNode EOF() { return getToken(MxParser.EOF, 0); }
		public List<FuncdefContext> funcdef() {
			return getRuleContexts(FuncdefContext.class);
		}
		public FuncdefContext funcdef(int i) {
			return getRuleContext(FuncdefContext.class,i);
		}
		public List<ClassdefContext> classdef() {
			return getRuleContexts(ClassdefContext.class);
		}
		public ClassdefContext classdef(int i) {
			return getRuleContext(ClassdefContext.class,i);
		}
		public List<TerminalNode> Semi() { return getTokens(MxParser.Semi); }
		public TerminalNode Semi(int i) {
			return getToken(MxParser.Semi, i);
		}
		public List<VardefContext> vardef() {
			return getRuleContexts(VardefContext.class);
		}
		public VardefContext vardef(int i) {
			return getRuleContext(VardefContext.class,i);
		}
		public ProgramContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_program; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitProgram(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ProgramContext program() throws RecognitionException {
		ProgramContext _localctx = new ProgramContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_program);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(37); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				setState(37);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,0,_ctx) ) {
				case 1:
					{
					{
					setState(30);
					classdef();
					setState(31);
					match(Semi);
					}
					}
					break;
				case 2:
					{
					setState(33);
					funcdef();
					}
					break;
				case 3:
					{
					{
					setState(34);
					vardef();
					setState(35);
					match(Semi);
					}
					}
					break;
				}
				}
				setState(39); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( ((_la) & ~0x3f) == 0 && ((1L << _la) & 72057594037937088L) != 0 );
			setState(41);
			match(EOF);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class TypeContext extends ParserRuleContext {
		public TerminalNode Int() { return getToken(MxParser.Int, 0); }
		public TerminalNode Void() { return getToken(MxParser.Void, 0); }
		public TerminalNode String() { return getToken(MxParser.String, 0); }
		public TerminalNode Bool() { return getToken(MxParser.Bool, 0); }
		public List<ListSufContext> listSuf() {
			return getRuleContexts(ListSufContext.class);
		}
		public ListSufContext listSuf(int i) {
			return getRuleContext(ListSufContext.class,i);
		}
		public TerminalNode Identifier() { return getToken(MxParser.Identifier, 0); }
		public TypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_type; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitType(this);
			else return visitor.visitChildren(this);
		}
	}

	public final TypeContext type() throws RecognitionException {
		TypeContext _localctx = new TypeContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_type);
		try {
			int _alt;
			setState(72);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,6,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(43);
				match(Int);
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(44);
				match(Void);
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(45);
				match(String);
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(46);
				match(Bool);
				}
				break;
			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(47);
				match(Int);
				setState(49); 
				_errHandler.sync(this);
				_alt = 1;
				do {
					switch (_alt) {
					case 1:
						{
						{
						setState(48);
						listSuf();
						}
						}
						break;
					default:
						throw new NoViableAltException(this);
					}
					setState(51); 
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,2,_ctx);
				} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
				}
				break;
			case 6:
				enterOuterAlt(_localctx, 6);
				{
				setState(53);
				match(String);
				setState(55); 
				_errHandler.sync(this);
				_alt = 1;
				do {
					switch (_alt) {
					case 1:
						{
						{
						setState(54);
						listSuf();
						}
						}
						break;
					default:
						throw new NoViableAltException(this);
					}
					setState(57); 
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,3,_ctx);
				} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
				}
				break;
			case 7:
				enterOuterAlt(_localctx, 7);
				{
				setState(59);
				match(Bool);
				setState(61); 
				_errHandler.sync(this);
				_alt = 1;
				do {
					switch (_alt) {
					case 1:
						{
						{
						setState(60);
						listSuf();
						}
						}
						break;
					default:
						throw new NoViableAltException(this);
					}
					setState(63); 
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,4,_ctx);
				} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
				}
				break;
			case 8:
				enterOuterAlt(_localctx, 8);
				{
				setState(65);
				match(Identifier);
				}
				break;
			case 9:
				enterOuterAlt(_localctx, 9);
				{
				setState(66);
				match(Identifier);
				setState(68); 
				_errHandler.sync(this);
				_alt = 1;
				do {
					switch (_alt) {
					case 1:
						{
						{
						setState(67);
						listSuf();
						}
						}
						break;
					default:
						throw new NoViableAltException(this);
					}
					setState(70); 
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,5,_ctx);
				} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ListSufContext extends ParserRuleContext {
		public TerminalNode LeftBracket() { return getToken(MxParser.LeftBracket, 0); }
		public TerminalNode RightBracket() { return getToken(MxParser.RightBracket, 0); }
		public ListSufContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_listSuf; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitListSuf(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ListSufContext listSuf() throws RecognitionException {
		ListSufContext _localctx = new ListSufContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_listSuf);
		try {
			enterOuterAlt(_localctx, 1);
			{
			{
			setState(74);
			match(LeftBracket);
			setState(75);
			match(RightBracket);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ClassdefContext extends ParserRuleContext {
		public TerminalNode Class() { return getToken(MxParser.Class, 0); }
		public TerminalNode Identifier() { return getToken(MxParser.Identifier, 0); }
		public SuiteContext suite() {
			return getRuleContext(SuiteContext.class,0);
		}
		public ClassdefContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_classdef; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitClassdef(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ClassdefContext classdef() throws RecognitionException {
		ClassdefContext _localctx = new ClassdefContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_classdef);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(77);
			match(Class);
			setState(78);
			match(Identifier);
			setState(79);
			suite();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class FuncdefContext extends ParserRuleContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public TerminalNode Identifier() { return getToken(MxParser.Identifier, 0); }
		public SuiteContext suite() {
			return getRuleContext(SuiteContext.class,0);
		}
		public TerminalNode LeftParen() { return getToken(MxParser.LeftParen, 0); }
		public TerminalNode RightParen() { return getToken(MxParser.RightParen, 0); }
		public ParameterListContext parameterList() {
			return getRuleContext(ParameterListContext.class,0);
		}
		public FuncdefContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_funcdef; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitFuncdef(this);
			else return visitor.visitChildren(this);
		}
	}

	public final FuncdefContext funcdef() throws RecognitionException {
		FuncdefContext _localctx = new FuncdefContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_funcdef);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(81);
			type();
			setState(82);
			match(Identifier);
			{
			setState(83);
			match(LeftParen);
			setState(85);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (((_la) & ~0x3f) == 0 && ((1L << _la) & 72057594037928896L) != 0) {
				{
				setState(84);
				parameterList();
				}
			}

			setState(87);
			match(RightParen);
			}
			setState(89);
			suite();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ParameterListContext extends ParserRuleContext {
		public List<ParameterContext> parameter() {
			return getRuleContexts(ParameterContext.class);
		}
		public ParameterContext parameter(int i) {
			return getRuleContext(ParameterContext.class,i);
		}
		public List<TerminalNode> Comma() { return getTokens(MxParser.Comma); }
		public TerminalNode Comma(int i) {
			return getToken(MxParser.Comma, i);
		}
		public ParameterListContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_parameterList; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitParameterList(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ParameterListContext parameterList() throws RecognitionException {
		ParameterListContext _localctx = new ParameterListContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_parameterList);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(91);
			parameter();
			setState(96);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==Comma) {
				{
				{
				setState(92);
				match(Comma);
				setState(93);
				parameter();
				}
				}
				setState(98);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ParameterContext extends ParserRuleContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public TerminalNode Identifier() { return getToken(MxParser.Identifier, 0); }
		public ParameterContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_parameter; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitParameter(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ParameterContext parameter() throws RecognitionException {
		ParameterContext _localctx = new ParameterContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_parameter);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(99);
			type();
			setState(100);
			match(Identifier);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ExprListContext extends ParserRuleContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public List<TerminalNode> Comma() { return getTokens(MxParser.Comma); }
		public TerminalNode Comma(int i) {
			return getToken(MxParser.Comma, i);
		}
		public ExprListContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_exprList; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitExprList(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ExprListContext exprList() throws RecognitionException {
		ExprListContext _localctx = new ExprListContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_exprList);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(102);
			expr(0);
			setState(107);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==Comma) {
				{
				{
				setState(103);
				match(Comma);
				setState(104);
				expr(0);
				}
				}
				setState(109);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class VardefContext extends ParserRuleContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public List<SingleAssignContext> singleAssign() {
			return getRuleContexts(SingleAssignContext.class);
		}
		public SingleAssignContext singleAssign(int i) {
			return getRuleContext(SingleAssignContext.class,i);
		}
		public List<TerminalNode> Comma() { return getTokens(MxParser.Comma); }
		public TerminalNode Comma(int i) {
			return getToken(MxParser.Comma, i);
		}
		public VardefContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_vardef; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitVardef(this);
			else return visitor.visitChildren(this);
		}
	}

	public final VardefContext vardef() throws RecognitionException {
		VardefContext _localctx = new VardefContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_vardef);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(110);
			type();
			setState(111);
			singleAssign();
			setState(116);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==Comma) {
				{
				{
				setState(112);
				match(Comma);
				setState(113);
				singleAssign();
				}
				}
				setState(118);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class SingleAssignContext extends ParserRuleContext {
		public TerminalNode Identifier() { return getToken(MxParser.Identifier, 0); }
		public TerminalNode Assign() { return getToken(MxParser.Assign, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public SingleAssignContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_singleAssign; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitSingleAssign(this);
			else return visitor.visitChildren(this);
		}
	}

	public final SingleAssignContext singleAssign() throws RecognitionException {
		SingleAssignContext _localctx = new SingleAssignContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_singleAssign);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(119);
			match(Identifier);
			setState(122);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==Assign) {
				{
				setState(120);
				match(Assign);
				setState(121);
				expr(0);
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class SuiteContext extends ParserRuleContext {
		public TerminalNode LeftBrace() { return getToken(MxParser.LeftBrace, 0); }
		public TerminalNode RightBrace() { return getToken(MxParser.RightBrace, 0); }
		public List<StmtContext> stmt() {
			return getRuleContexts(StmtContext.class);
		}
		public StmtContext stmt(int i) {
			return getRuleContext(StmtContext.class,i);
		}
		public SuiteContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_suite; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitSuite(this);
			else return visitor.visitChildren(this);
		}
	}

	public final SuiteContext suite() throws RecognitionException {
		SuiteContext _localctx = new SuiteContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_suite);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(124);
			match(LeftBrace);
			setState(128);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (((_la) & ~0x3f) == 0 && ((1L << _la) & 73394737800747006L) != 0) {
				{
				{
				setState(125);
				stmt();
				}
				}
				setState(130);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(131);
			match(RightBrace);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ConstructordefContext extends ParserRuleContext {
		public TerminalNode Identifier() { return getToken(MxParser.Identifier, 0); }
		public TerminalNode LeftParen() { return getToken(MxParser.LeftParen, 0); }
		public TerminalNode RightParen() { return getToken(MxParser.RightParen, 0); }
		public SuiteContext suite() {
			return getRuleContext(SuiteContext.class,0);
		}
		public ConstructordefContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_constructordef; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitConstructordef(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ConstructordefContext constructordef() throws RecognitionException {
		ConstructordefContext _localctx = new ConstructordefContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_constructordef);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(133);
			match(Identifier);
			setState(134);
			match(LeftParen);
			setState(135);
			match(RightParen);
			setState(136);
			suite();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class StmtContext extends ParserRuleContext {
		public ExprContext Cond;
		public SuiteContext Ifsuite;
		public StmtContext Ifstmt;
		public SuiteContext Elsesuite;
		public StmtContext Elsestmt;
		public VardefContext InitVdf;
		public ExprContext InitCond;
		public ExprContext EndCond;
		public ExprContext Change;
		public SuiteContext LoopSuite;
		public StmtContext LoopStmt;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public List<TerminalNode> Semi() { return getTokens(MxParser.Semi); }
		public TerminalNode Semi(int i) {
			return getToken(MxParser.Semi, i);
		}
		public VardefContext vardef() {
			return getRuleContext(VardefContext.class,0);
		}
		public TerminalNode If() { return getToken(MxParser.If, 0); }
		public TerminalNode LeftParen() { return getToken(MxParser.LeftParen, 0); }
		public TerminalNode RightParen() { return getToken(MxParser.RightParen, 0); }
		public List<SuiteContext> suite() {
			return getRuleContexts(SuiteContext.class);
		}
		public SuiteContext suite(int i) {
			return getRuleContext(SuiteContext.class,i);
		}
		public List<StmtContext> stmt() {
			return getRuleContexts(StmtContext.class);
		}
		public StmtContext stmt(int i) {
			return getRuleContext(StmtContext.class,i);
		}
		public TerminalNode Else() { return getToken(MxParser.Else, 0); }
		public TerminalNode For() { return getToken(MxParser.For, 0); }
		public TerminalNode While() { return getToken(MxParser.While, 0); }
		public TerminalNode Continue() { return getToken(MxParser.Continue, 0); }
		public TerminalNode Break() { return getToken(MxParser.Break, 0); }
		public TerminalNode Return() { return getToken(MxParser.Return, 0); }
		public FuncdefContext funcdef() {
			return getRuleContext(FuncdefContext.class,0);
		}
		public ConstructordefContext constructordef() {
			return getRuleContext(ConstructordefContext.class,0);
		}
		public StmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_stmt; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitStmt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final StmtContext stmt() throws RecognitionException {
		StmtContext _localctx = new StmtContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_stmt);
		int _la;
		try {
			setState(199);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,22,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(138);
				expr(0);
				setState(139);
				match(Semi);
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(141);
				vardef();
				setState(142);
				match(Semi);
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(144);
				match(If);
				setState(145);
				match(LeftParen);
				setState(146);
				((StmtContext)_localctx).Cond = expr(0);
				setState(147);
				match(RightParen);
				setState(150);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,13,_ctx) ) {
				case 1:
					{
					setState(148);
					((StmtContext)_localctx).Ifsuite = suite();
					}
					break;
				case 2:
					{
					setState(149);
					((StmtContext)_localctx).Ifstmt = stmt();
					}
					break;
				}
				setState(157);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,15,_ctx) ) {
				case 1:
					{
					setState(152);
					match(Else);
					setState(155);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,14,_ctx) ) {
					case 1:
						{
						setState(153);
						((StmtContext)_localctx).Elsesuite = suite();
						}
						break;
					case 2:
						{
						setState(154);
						((StmtContext)_localctx).Elsestmt = stmt();
						}
						break;
					}
					}
					break;
				}
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(159);
				match(For);
				setState(160);
				match(LeftParen);
				setState(163);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,16,_ctx) ) {
				case 1:
					{
					setState(161);
					((StmtContext)_localctx).InitVdf = vardef();
					}
					break;
				case 2:
					{
					setState(162);
					((StmtContext)_localctx).InitCond = expr(0);
					}
					break;
				}
				setState(165);
				match(Semi);
				setState(167);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (((_la) & ~0x3f) == 0 && ((1L << _la) & 72268837757714494L) != 0) {
					{
					setState(166);
					((StmtContext)_localctx).EndCond = expr(0);
					}
				}

				setState(169);
				match(Semi);
				setState(171);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (((_la) & ~0x3f) == 0 && ((1L << _la) & 72268837757714494L) != 0) {
					{
					setState(170);
					((StmtContext)_localctx).Change = expr(0);
					}
				}

				setState(173);
				match(RightParen);
				setState(176);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,19,_ctx) ) {
				case 1:
					{
					setState(174);
					((StmtContext)_localctx).LoopSuite = suite();
					}
					break;
				case 2:
					{
					setState(175);
					((StmtContext)_localctx).LoopStmt = stmt();
					}
					break;
				}
				}
				break;
			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(178);
				match(While);
				setState(179);
				match(LeftParen);
				{
				setState(180);
				((StmtContext)_localctx).Cond = expr(0);
				}
				setState(181);
				match(RightParen);
				setState(184);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,20,_ctx) ) {
				case 1:
					{
					setState(182);
					((StmtContext)_localctx).LoopSuite = suite();
					}
					break;
				case 2:
					{
					setState(183);
					((StmtContext)_localctx).LoopStmt = stmt();
					}
					break;
				}
				}
				break;
			case 6:
				enterOuterAlt(_localctx, 6);
				{
				setState(186);
				match(Continue);
				setState(187);
				match(Semi);
				}
				break;
			case 7:
				enterOuterAlt(_localctx, 7);
				{
				setState(188);
				match(Break);
				setState(189);
				match(Semi);
				}
				break;
			case 8:
				enterOuterAlt(_localctx, 8);
				{
				setState(190);
				match(Return);
				setState(192);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (((_la) & ~0x3f) == 0 && ((1L << _la) & 72268837757714494L) != 0) {
					{
					setState(191);
					expr(0);
					}
				}

				setState(194);
				match(Semi);
				}
				break;
			case 9:
				enterOuterAlt(_localctx, 9);
				{
				setState(195);
				suite();
				}
				break;
			case 10:
				enterOuterAlt(_localctx, 10);
				{
				setState(196);
				funcdef();
				}
				break;
			case 11:
				enterOuterAlt(_localctx, 11);
				{
				setState(197);
				constructordef();
				}
				break;
			case 12:
				enterOuterAlt(_localctx, 12);
				{
				setState(198);
				match(Semi);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ExprContext extends ParserRuleContext {
		public ExprContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expr; }
	 
		public ExprContext() { }
		public void copyFrom(ExprContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class Recur_ExprContext extends ExprContext {
		public AtomExprContext atomExpr() {
			return getRuleContext(AtomExprContext.class,0);
		}
		public TerminalNode LeftParen() { return getToken(MxParser.LeftParen, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public TerminalNode RightParen() { return getToken(MxParser.RightParen, 0); }
		public Recur_ExprContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitRecur_Expr(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class Func_call_ExprContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public TerminalNode LeftParen() { return getToken(MxParser.LeftParen, 0); }
		public TerminalNode RightParen() { return getToken(MxParser.RightParen, 0); }
		public ExprListContext exprList() {
			return getRuleContext(ExprListContext.class,0);
		}
		public Func_call_ExprContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitFunc_call_Expr(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class CorrectNewContext extends ExprContext {
		public TerminalNode New() { return getToken(MxParser.New, 0); }
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public TerminalNode LeftParen() { return getToken(MxParser.LeftParen, 0); }
		public TerminalNode RightParen() { return getToken(MxParser.RightParen, 0); }
		public List<TerminalNode> LeftBracket() { return getTokens(MxParser.LeftBracket); }
		public TerminalNode LeftBracket(int i) {
			return getToken(MxParser.LeftBracket, i);
		}
		public List<TerminalNode> RightBracket() { return getTokens(MxParser.RightBracket); }
		public TerminalNode RightBracket(int i) {
			return getToken(MxParser.RightBracket, i);
		}
		public List<ListSufContext> listSuf() {
			return getRuleContexts(ListSufContext.class);
		}
		public ListSufContext listSuf(int i) {
			return getRuleContext(ListSufContext.class,i);
		}
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public CorrectNewContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitCorrectNew(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class WrongnewContext extends ExprContext {
		public TerminalNode New() { return getToken(MxParser.New, 0); }
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public List<TerminalNode> LeftBracket() { return getTokens(MxParser.LeftBracket); }
		public TerminalNode LeftBracket(int i) {
			return getToken(MxParser.LeftBracket, i);
		}
		public List<TerminalNode> RightBracket() { return getTokens(MxParser.RightBracket); }
		public TerminalNode RightBracket(int i) {
			return getToken(MxParser.RightBracket, i);
		}
		public List<ListSufContext> listSuf() {
			return getRuleContexts(ListSufContext.class);
		}
		public ListSufContext listSuf(int i) {
			return getRuleContext(ListSufContext.class,i);
		}
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public WrongnewContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitWrongnew(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class BinaryExprContext extends ExprContext {
		public ExprContext lv;
		public Token op;
		public ExprContext rv;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public TerminalNode Mod() { return getToken(MxParser.Mod, 0); }
		public TerminalNode Mul() { return getToken(MxParser.Mul, 0); }
		public TerminalNode Div() { return getToken(MxParser.Div, 0); }
		public TerminalNode Plus() { return getToken(MxParser.Plus, 0); }
		public TerminalNode Minus() { return getToken(MxParser.Minus, 0); }
		public TerminalNode RightShift() { return getToken(MxParser.RightShift, 0); }
		public TerminalNode LeftShift() { return getToken(MxParser.LeftShift, 0); }
		public TerminalNode Greater() { return getToken(MxParser.Greater, 0); }
		public TerminalNode GreaterEqual() { return getToken(MxParser.GreaterEqual, 0); }
		public TerminalNode Less() { return getToken(MxParser.Less, 0); }
		public TerminalNode LessEqual() { return getToken(MxParser.LessEqual, 0); }
		public TerminalNode Equal() { return getToken(MxParser.Equal, 0); }
		public TerminalNode NotEqual() { return getToken(MxParser.NotEqual, 0); }
		public TerminalNode And() { return getToken(MxParser.And, 0); }
		public TerminalNode Caret() { return getToken(MxParser.Caret, 0); }
		public TerminalNode Or() { return getToken(MxParser.Or, 0); }
		public TerminalNode AndAnd() { return getToken(MxParser.AndAnd, 0); }
		public TerminalNode OrOr() { return getToken(MxParser.OrOr, 0); }
		public BinaryExprContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitBinaryExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class Member_ExprContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public TerminalNode Dot() { return getToken(MxParser.Dot, 0); }
		public TerminalNode Identifier() { return getToken(MxParser.Identifier, 0); }
		public Member_ExprContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitMember_Expr(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class PreExprContext extends ExprContext {
		public Token op;
		public ExprContext rv;
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public TerminalNode Not() { return getToken(MxParser.Not, 0); }
		public TerminalNode Tilde() { return getToken(MxParser.Tilde, 0); }
		public TerminalNode Minus() { return getToken(MxParser.Minus, 0); }
		public PreExprContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitPreExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class SufExprContext extends ExprContext {
		public ExprContext lv;
		public Token op;
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public SufExprContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitSufExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class Lambda_FuncContext extends ExprContext {
		public TerminalNode LeftBracket() { return getToken(MxParser.LeftBracket, 0); }
		public TerminalNode RightBracket() { return getToken(MxParser.RightBracket, 0); }
		public TerminalNode To() { return getToken(MxParser.To, 0); }
		public SuiteContext suite() {
			return getRuleContext(SuiteContext.class,0);
		}
		public TerminalNode And() { return getToken(MxParser.And, 0); }
		public TerminalNode LeftParen() { return getToken(MxParser.LeftParen, 0); }
		public TerminalNode RightParen() { return getToken(MxParser.RightParen, 0); }
		public ParameterListContext parameterList() {
			return getRuleContext(ParameterListContext.class,0);
		}
		public Lambda_FuncContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitLambda_Func(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class AssignExprContext extends ExprContext {
		public ExprContext lv;
		public Token op;
		public ExprContext rv;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public TerminalNode Assign() { return getToken(MxParser.Assign, 0); }
		public AssignExprContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitAssignExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class IndexExprContext extends ExprContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public List<TerminalNode> LeftBracket() { return getTokens(MxParser.LeftBracket); }
		public TerminalNode LeftBracket(int i) {
			return getToken(MxParser.LeftBracket, i);
		}
		public List<TerminalNode> RightBracket() { return getTokens(MxParser.RightBracket); }
		public TerminalNode RightBracket(int i) {
			return getToken(MxParser.RightBracket, i);
		}
		public IndexExprContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitIndexExpr(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ExprContext expr() throws RecognitionException {
		return expr(0);
	}

	private ExprContext expr(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		ExprContext _localctx = new ExprContext(_ctx, _parentState);
		ExprContext _prevctx = _localctx;
		int _startState = 26;
		enterRecursionRule(_localctx, 26, RULE_expr, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(269);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,31,_ctx) ) {
			case 1:
				{
				_localctx = new WrongnewContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(202);
				match(New);
				{
				{
				setState(203);
				type();
				setState(210);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,23,_ctx);
				while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
					if ( _alt==1 ) {
						{
						{
						setState(204);
						match(LeftBracket);
						{
						setState(205);
						expr(0);
						}
						setState(206);
						match(RightBracket);
						}
						} 
					}
					setState(212);
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,23,_ctx);
				}
				setState(214); 
				_errHandler.sync(this);
				_alt = 1;
				do {
					switch (_alt) {
					case 1:
						{
						{
						setState(213);
						listSuf();
						}
						}
						break;
					default:
						throw new NoViableAltException(this);
					}
					setState(216); 
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,24,_ctx);
				} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
				{
				setState(222); 
				_errHandler.sync(this);
				_alt = 1;
				do {
					switch (_alt) {
					case 1:
						{
						{
						setState(218);
						match(LeftBracket);
						{
						setState(219);
						expr(0);
						}
						setState(220);
						match(RightBracket);
						}
						}
						break;
					default:
						throw new NoViableAltException(this);
					}
					setState(224); 
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,25,_ctx);
				} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
				}
				}
				}
				}
				break;
			case 2:
				{
				_localctx = new CorrectNewContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(226);
				match(New);
				setState(227);
				type();
				setState(228);
				match(LeftParen);
				setState(229);
				match(RightParen);
				}
				break;
			case 3:
				{
				_localctx = new CorrectNewContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(231);
				match(New);
				{
				{
				{
				setState(232);
				type();
				setState(239);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,26,_ctx);
				while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
					if ( _alt==1 ) {
						{
						{
						setState(233);
						match(LeftBracket);
						{
						setState(234);
						expr(0);
						}
						setState(235);
						match(RightBracket);
						}
						} 
					}
					setState(241);
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,26,_ctx);
				}
				setState(245);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,27,_ctx);
				while ( _alt!=1 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
					if ( _alt==1+1 ) {
						{
						{
						setState(242);
						listSuf();
						}
						} 
					}
					setState(247);
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,27,_ctx);
				}
				}
				}
				}
				}
				break;
			case 4:
				{
				_localctx = new Lambda_FuncContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(248);
				match(LeftBracket);
				setState(250);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==And) {
					{
					setState(249);
					match(And);
					}
				}

				setState(252);
				match(RightBracket);
				setState(258);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==LeftParen) {
					{
					setState(253);
					match(LeftParen);
					setState(255);
					_errHandler.sync(this);
					_la = _input.LA(1);
					if (((_la) & ~0x3f) == 0 && ((1L << _la) & 72057594037928896L) != 0) {
						{
						setState(254);
						parameterList();
						}
					}

					setState(257);
					match(RightParen);
					}
				}

				setState(260);
				match(To);
				setState(261);
				suite();
				}
				break;
			case 5:
				{
				_localctx = new Recur_ExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(262);
				atomExpr();
				}
				break;
			case 6:
				{
				_localctx = new Recur_ExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(263);
				match(LeftParen);
				setState(264);
				expr(0);
				setState(265);
				match(RightParen);
				}
				break;
			case 7:
				{
				_localctx = new PreExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(267);
				((PreExprContext)_localctx).op = _input.LT(1);
				_la = _input.LA(1);
				if ( !(((_la) & ~0x3f) == 0 && ((1L << _la) & 211243671486470L) != 0) ) {
					((PreExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(268);
				((PreExprContext)_localctx).rv = expr(12);
				}
				break;
			}
			_ctx.stop = _input.LT(-1);
			setState(326);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,35,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(324);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,34,_ctx) ) {
					case 1:
						{
						_localctx = new BinaryExprContext(new ExprContext(_parentctx, _parentState));
						((BinaryExprContext)_localctx).lv = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(271);
						if (!(precpred(_ctx, 11))) throw new FailedPredicateException(this, "precpred(_ctx, 11)");
						setState(272);
						((BinaryExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(((_la) & ~0x3f) == 0 && ((1L << _la) & 1924145348608L) != 0) ) {
							((BinaryExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(273);
						((BinaryExprContext)_localctx).rv = expr(12);
						}
						break;
					case 2:
						{
						_localctx = new BinaryExprContext(new ExprContext(_parentctx, _parentState));
						((BinaryExprContext)_localctx).lv = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(274);
						if (!(precpred(_ctx, 10))) throw new FailedPredicateException(this, "precpred(_ctx, 10)");
						setState(275);
						((BinaryExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==Plus || _la==Minus) ) {
							((BinaryExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(276);
						((BinaryExprContext)_localctx).rv = expr(11);
						}
						break;
					case 3:
						{
						_localctx = new BinaryExprContext(new ExprContext(_parentctx, _parentState));
						((BinaryExprContext)_localctx).lv = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(277);
						if (!(precpred(_ctx, 9))) throw new FailedPredicateException(this, "precpred(_ctx, 9)");
						setState(278);
						((BinaryExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==LeftShift || _la==RightShift) ) {
							((BinaryExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(279);
						((BinaryExprContext)_localctx).rv = expr(10);
						}
						break;
					case 4:
						{
						_localctx = new BinaryExprContext(new ExprContext(_parentctx, _parentState));
						((BinaryExprContext)_localctx).lv = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(280);
						if (!(precpred(_ctx, 8))) throw new FailedPredicateException(this, "precpred(_ctx, 8)");
						setState(281);
						((BinaryExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(((_la) & ~0x3f) == 0 && ((1L << _la) & 16106127360L) != 0) ) {
							((BinaryExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(282);
						((BinaryExprContext)_localctx).rv = expr(9);
						}
						break;
					case 5:
						{
						_localctx = new BinaryExprContext(new ExprContext(_parentctx, _parentState));
						((BinaryExprContext)_localctx).lv = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(283);
						if (!(precpred(_ctx, 7))) throw new FailedPredicateException(this, "precpred(_ctx, 7)");
						setState(284);
						((BinaryExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==Equal || _la==NotEqual) ) {
							((BinaryExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(285);
						((BinaryExprContext)_localctx).rv = expr(8);
						}
						break;
					case 6:
						{
						_localctx = new BinaryExprContext(new ExprContext(_parentctx, _parentState));
						((BinaryExprContext)_localctx).lv = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(286);
						if (!(precpred(_ctx, 6))) throw new FailedPredicateException(this, "precpred(_ctx, 6)");
						setState(287);
						((BinaryExprContext)_localctx).op = match(And);
						setState(288);
						((BinaryExprContext)_localctx).rv = expr(7);
						}
						break;
					case 7:
						{
						_localctx = new BinaryExprContext(new ExprContext(_parentctx, _parentState));
						((BinaryExprContext)_localctx).lv = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(289);
						if (!(precpred(_ctx, 5))) throw new FailedPredicateException(this, "precpred(_ctx, 5)");
						setState(290);
						((BinaryExprContext)_localctx).op = match(Caret);
						setState(291);
						((BinaryExprContext)_localctx).rv = expr(6);
						}
						break;
					case 8:
						{
						_localctx = new BinaryExprContext(new ExprContext(_parentctx, _parentState));
						((BinaryExprContext)_localctx).lv = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(292);
						if (!(precpred(_ctx, 4))) throw new FailedPredicateException(this, "precpred(_ctx, 4)");
						setState(293);
						((BinaryExprContext)_localctx).op = match(Or);
						setState(294);
						((BinaryExprContext)_localctx).rv = expr(5);
						}
						break;
					case 9:
						{
						_localctx = new BinaryExprContext(new ExprContext(_parentctx, _parentState));
						((BinaryExprContext)_localctx).lv = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(295);
						if (!(precpred(_ctx, 3))) throw new FailedPredicateException(this, "precpred(_ctx, 3)");
						setState(296);
						((BinaryExprContext)_localctx).op = match(AndAnd);
						setState(297);
						((BinaryExprContext)_localctx).rv = expr(4);
						}
						break;
					case 10:
						{
						_localctx = new BinaryExprContext(new ExprContext(_parentctx, _parentState));
						((BinaryExprContext)_localctx).lv = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(298);
						if (!(precpred(_ctx, 2))) throw new FailedPredicateException(this, "precpred(_ctx, 2)");
						setState(299);
						((BinaryExprContext)_localctx).op = match(OrOr);
						setState(300);
						((BinaryExprContext)_localctx).rv = expr(3);
						}
						break;
					case 11:
						{
						_localctx = new AssignExprContext(new ExprContext(_parentctx, _parentState));
						((AssignExprContext)_localctx).lv = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(301);
						if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
						setState(302);
						((AssignExprContext)_localctx).op = match(Assign);
						setState(303);
						((AssignExprContext)_localctx).rv = expr(1);
						}
						break;
					case 12:
						{
						_localctx = new Func_call_ExprContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(304);
						if (!(precpred(_ctx, 19))) throw new FailedPredicateException(this, "precpred(_ctx, 19)");
						setState(305);
						match(LeftParen);
						setState(307);
						_errHandler.sync(this);
						_la = _input.LA(1);
						if (((_la) & ~0x3f) == 0 && ((1L << _la) & 72268837757714494L) != 0) {
							{
							setState(306);
							exprList();
							}
						}

						setState(309);
						match(RightParen);
						}
						break;
					case 13:
						{
						_localctx = new Member_ExprContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(310);
						if (!(precpred(_ctx, 18))) throw new FailedPredicateException(this, "precpred(_ctx, 18)");
						setState(311);
						match(Dot);
						setState(312);
						match(Identifier);
						}
						break;
					case 14:
						{
						_localctx = new SufExprContext(new ExprContext(_parentctx, _parentState));
						((SufExprContext)_localctx).lv = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(313);
						if (!(precpred(_ctx, 14))) throw new FailedPredicateException(this, "precpred(_ctx, 14)");
						setState(314);
						((SufExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__0 || _la==T__1) ) {
							((SufExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						}
						break;
					case 15:
						{
						_localctx = new IndexExprContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(315);
						if (!(precpred(_ctx, 13))) throw new FailedPredicateException(this, "precpred(_ctx, 13)");
						setState(320); 
						_errHandler.sync(this);
						_alt = 1;
						do {
							switch (_alt) {
							case 1:
								{
								{
								setState(316);
								match(LeftBracket);
								setState(317);
								expr(0);
								setState(318);
								match(RightBracket);
								}
								}
								break;
							default:
								throw new NoViableAltException(this);
							}
							setState(322); 
							_errHandler.sync(this);
							_alt = getInterpreter().adaptivePredict(_input,33,_ctx);
						} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
						}
						break;
					}
					} 
				}
				setState(328);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,35,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class AtomExprContext extends ParserRuleContext {
		public TerminalNode ConstString() { return getToken(MxParser.ConstString, 0); }
		public TerminalNode Integer() { return getToken(MxParser.Integer, 0); }
		public TerminalNode BoolConst() { return getToken(MxParser.BoolConst, 0); }
		public TerminalNode Identifier() { return getToken(MxParser.Identifier, 0); }
		public TerminalNode This() { return getToken(MxParser.This, 0); }
		public TerminalNode Null() { return getToken(MxParser.Null, 0); }
		public AtomExprContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_atomExpr; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxVisitor ) return ((MxVisitor<? extends T>)visitor).visitAtomExpr(this);
			else return visitor.visitChildren(this);
		}
	}

	public final AtomExprContext atomExpr() throws RecognitionException {
		AtomExprContext _localctx = new AtomExprContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_atomExpr);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(329);
			_la = _input.LA(1);
			if ( !(((_la) & ~0x3f) == 0 && ((1L << _la) & 72057594042187832L) != 0) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 13:
			return expr_sempred((ExprContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean expr_sempred(ExprContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 11);
		case 1:
			return precpred(_ctx, 10);
		case 2:
			return precpred(_ctx, 9);
		case 3:
			return precpred(_ctx, 8);
		case 4:
			return precpred(_ctx, 7);
		case 5:
			return precpred(_ctx, 6);
		case 6:
			return precpred(_ctx, 5);
		case 7:
			return precpred(_ctx, 4);
		case 8:
			return precpred(_ctx, 3);
		case 9:
			return precpred(_ctx, 2);
		case 10:
			return precpred(_ctx, 1);
		case 11:
			return precpred(_ctx, 19);
		case 12:
			return precpred(_ctx, 18);
		case 13:
			return precpred(_ctx, 14);
		case 14:
			return precpred(_ctx, 13);
		}
		return true;
	}

	public static final String _serializedATN =
		"\u0004\u0001<\u014c\u0002\u0000\u0007\u0000\u0002\u0001\u0007\u0001\u0002"+
		"\u0002\u0007\u0002\u0002\u0003\u0007\u0003\u0002\u0004\u0007\u0004\u0002"+
		"\u0005\u0007\u0005\u0002\u0006\u0007\u0006\u0002\u0007\u0007\u0007\u0002"+
		"\b\u0007\b\u0002\t\u0007\t\u0002\n\u0007\n\u0002\u000b\u0007\u000b\u0002"+
		"\f\u0007\f\u0002\r\u0007\r\u0002\u000e\u0007\u000e\u0001\u0000\u0001\u0000"+
		"\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0004\u0000"+
		"&\b\u0000\u000b\u0000\f\u0000\'\u0001\u0000\u0001\u0000\u0001\u0001\u0001"+
		"\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0004\u00012\b"+
		"\u0001\u000b\u0001\f\u00013\u0001\u0001\u0001\u0001\u0004\u00018\b\u0001"+
		"\u000b\u0001\f\u00019\u0001\u0001\u0001\u0001\u0004\u0001>\b\u0001\u000b"+
		"\u0001\f\u0001?\u0001\u0001\u0001\u0001\u0001\u0001\u0004\u0001E\b\u0001"+
		"\u000b\u0001\f\u0001F\u0003\u0001I\b\u0001\u0001\u0002\u0001\u0002\u0001"+
		"\u0002\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0004\u0001"+
		"\u0004\u0001\u0004\u0001\u0004\u0003\u0004V\b\u0004\u0001\u0004\u0001"+
		"\u0004\u0001\u0004\u0001\u0004\u0001\u0005\u0001\u0005\u0001\u0005\u0005"+
		"\u0005_\b\u0005\n\u0005\f\u0005b\t\u0005\u0001\u0006\u0001\u0006\u0001"+
		"\u0006\u0001\u0007\u0001\u0007\u0001\u0007\u0005\u0007j\b\u0007\n\u0007"+
		"\f\u0007m\t\u0007\u0001\b\u0001\b\u0001\b\u0001\b\u0005\bs\b\b\n\b\f\b"+
		"v\t\b\u0001\t\u0001\t\u0001\t\u0003\t{\b\t\u0001\n\u0001\n\u0005\n\u007f"+
		"\b\n\n\n\f\n\u0082\t\n\u0001\n\u0001\n\u0001\u000b\u0001\u000b\u0001\u000b"+
		"\u0001\u000b\u0001\u000b\u0001\f\u0001\f\u0001\f\u0001\f\u0001\f\u0001"+
		"\f\u0001\f\u0001\f\u0001\f\u0001\f\u0001\f\u0001\f\u0003\f\u0097\b\f\u0001"+
		"\f\u0001\f\u0001\f\u0003\f\u009c\b\f\u0003\f\u009e\b\f\u0001\f\u0001\f"+
		"\u0001\f\u0001\f\u0003\f\u00a4\b\f\u0001\f\u0001\f\u0003\f\u00a8\b\f\u0001"+
		"\f\u0001\f\u0003\f\u00ac\b\f\u0001\f\u0001\f\u0001\f\u0003\f\u00b1\b\f"+
		"\u0001\f\u0001\f\u0001\f\u0001\f\u0001\f\u0001\f\u0003\f\u00b9\b\f\u0001"+
		"\f\u0001\f\u0001\f\u0001\f\u0001\f\u0001\f\u0003\f\u00c1\b\f\u0001\f\u0001"+
		"\f\u0001\f\u0001\f\u0001\f\u0003\f\u00c8\b\f\u0001\r\u0001\r\u0001\r\u0001"+
		"\r\u0001\r\u0001\r\u0001\r\u0005\r\u00d1\b\r\n\r\f\r\u00d4\t\r\u0001\r"+
		"\u0004\r\u00d7\b\r\u000b\r\f\r\u00d8\u0001\r\u0001\r\u0001\r\u0001\r\u0004"+
		"\r\u00df\b\r\u000b\r\f\r\u00e0\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r"+
		"\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0005\r\u00ee\b\r\n\r"+
		"\f\r\u00f1\t\r\u0001\r\u0005\r\u00f4\b\r\n\r\f\r\u00f7\t\r\u0001\r\u0001"+
		"\r\u0003\r\u00fb\b\r\u0001\r\u0001\r\u0001\r\u0003\r\u0100\b\r\u0001\r"+
		"\u0003\r\u0103\b\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001"+
		"\r\u0001\r\u0001\r\u0003\r\u010e\b\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001"+
		"\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001"+
		"\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001"+
		"\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001"+
		"\r\u0001\r\u0001\r\u0001\r\u0001\r\u0003\r\u0134\b\r\u0001\r\u0001\r\u0001"+
		"\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0004"+
		"\r\u0141\b\r\u000b\r\f\r\u0142\u0005\r\u0145\b\r\n\r\f\r\u0148\t\r\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0001\u00f5\u0001\u001a\u000f\u0000\u0002"+
		"\u0004\u0006\b\n\f\u000e\u0010\u0012\u0014\u0016\u0018\u001a\u001c\u0000"+
		"\b\u0003\u0000\u0001\u0002%%./\u0001\u0000&(\u0001\u0000$%\u0001\u0000"+
		"\"#\u0001\u0000\u001e!\u0001\u000056\u0001\u0000\u0001\u0002\u0004\u0000"+
		"\u0003\u0005\u0010\u0010\u0016\u001688\u0185\u0000%\u0001\u0000\u0000"+
		"\u0000\u0002H\u0001\u0000\u0000\u0000\u0004J\u0001\u0000\u0000\u0000\u0006"+
		"M\u0001\u0000\u0000\u0000\bQ\u0001\u0000\u0000\u0000\n[\u0001\u0000\u0000"+
		"\u0000\fc\u0001\u0000\u0000\u0000\u000ef\u0001\u0000\u0000\u0000\u0010"+
		"n\u0001\u0000\u0000\u0000\u0012w\u0001\u0000\u0000\u0000\u0014|\u0001"+
		"\u0000\u0000\u0000\u0016\u0085\u0001\u0000\u0000\u0000\u0018\u00c7\u0001"+
		"\u0000\u0000\u0000\u001a\u010d\u0001\u0000\u0000\u0000\u001c\u0149\u0001"+
		"\u0000\u0000\u0000\u001e\u001f\u0003\u0006\u0003\u0000\u001f \u00052\u0000"+
		"\u0000 &\u0001\u0000\u0000\u0000!&\u0003\b\u0004\u0000\"#\u0003\u0010"+
		"\b\u0000#$\u00052\u0000\u0000$&\u0001\u0000\u0000\u0000%\u001e\u0001\u0000"+
		"\u0000\u0000%!\u0001\u0000\u0000\u0000%\"\u0001\u0000\u0000\u0000&\'\u0001"+
		"\u0000\u0000\u0000\'%\u0001\u0000\u0000\u0000\'(\u0001\u0000\u0000\u0000"+
		"()\u0001\u0000\u0000\u0000)*\u0005\u0000\u0000\u0001*\u0001\u0001\u0000"+
		"\u0000\u0000+I\u0005\u0006\u0000\u0000,I\u0005\t\u0000\u0000-I\u0005\u0007"+
		"\u0000\u0000.I\u0005\b\u0000\u0000/1\u0005\u0006\u0000\u000002\u0003\u0004"+
		"\u0002\u000010\u0001\u0000\u0000\u000023\u0001\u0000\u0000\u000031\u0001"+
		"\u0000\u0000\u000034\u0001\u0000\u0000\u00004I\u0001\u0000\u0000\u0000"+
		"57\u0005\u0007\u0000\u000068\u0003\u0004\u0002\u000076\u0001\u0000\u0000"+
		"\u000089\u0001\u0000\u0000\u000097\u0001\u0000\u0000\u00009:\u0001\u0000"+
		"\u0000\u0000:I\u0001\u0000\u0000\u0000;=\u0005\b\u0000\u0000<>\u0003\u0004"+
		"\u0002\u0000=<\u0001\u0000\u0000\u0000>?\u0001\u0000\u0000\u0000?=\u0001"+
		"\u0000\u0000\u0000?@\u0001\u0000\u0000\u0000@I\u0001\u0000\u0000\u0000"+
		"AI\u00058\u0000\u0000BD\u00058\u0000\u0000CE\u0003\u0004\u0002\u0000D"+
		"C\u0001\u0000\u0000\u0000EF\u0001\u0000\u0000\u0000FD\u0001\u0000\u0000"+
		"\u0000FG\u0001\u0000\u0000\u0000GI\u0001\u0000\u0000\u0000H+\u0001\u0000"+
		"\u0000\u0000H,\u0001\u0000\u0000\u0000H-\u0001\u0000\u0000\u0000H.\u0001"+
		"\u0000\u0000\u0000H/\u0001\u0000\u0000\u0000H5\u0001\u0000\u0000\u0000"+
		"H;\u0001\u0000\u0000\u0000HA\u0001\u0000\u0000\u0000HB\u0001\u0000\u0000"+
		"\u0000I\u0003\u0001\u0000\u0000\u0000JK\u0005\u0019\u0000\u0000KL\u0005"+
		"\u001a\u0000\u0000L\u0005\u0001\u0000\u0000\u0000MN\u0005\r\u0000\u0000"+
		"NO\u00058\u0000\u0000OP\u0003\u0014\n\u0000P\u0007\u0001\u0000\u0000\u0000"+
		"QR\u0003\u0002\u0001\u0000RS\u00058\u0000\u0000SU\u0005\u0017\u0000\u0000"+
		"TV\u0003\n\u0005\u0000UT\u0001\u0000\u0000\u0000UV\u0001\u0000\u0000\u0000"+
		"VW\u0001\u0000\u0000\u0000WX\u0005\u0018\u0000\u0000XY\u0001\u0000\u0000"+
		"\u0000YZ\u0003\u0014\n\u0000Z\t\u0001\u0000\u0000\u0000[`\u0003\f\u0006"+
		"\u0000\\]\u00053\u0000\u0000]_\u0003\f\u0006\u0000^\\\u0001\u0000\u0000"+
		"\u0000_b\u0001\u0000\u0000\u0000`^\u0001\u0000\u0000\u0000`a\u0001\u0000"+
		"\u0000\u0000a\u000b\u0001\u0000\u0000\u0000b`\u0001\u0000\u0000\u0000"+
		"cd\u0003\u0002\u0001\u0000de\u00058\u0000\u0000e\r\u0001\u0000\u0000\u0000"+
		"fk\u0003\u001a\r\u0000gh\u00053\u0000\u0000hj\u0003\u001a\r\u0000ig\u0001"+
		"\u0000\u0000\u0000jm\u0001\u0000\u0000\u0000ki\u0001\u0000\u0000\u0000"+
		"kl\u0001\u0000\u0000\u0000l\u000f\u0001\u0000\u0000\u0000mk\u0001\u0000"+
		"\u0000\u0000no\u0003\u0002\u0001\u0000ot\u0003\u0012\t\u0000pq\u00053"+
		"\u0000\u0000qs\u0003\u0012\t\u0000rp\u0001\u0000\u0000\u0000sv\u0001\u0000"+
		"\u0000\u0000tr\u0001\u0000\u0000\u0000tu\u0001\u0000\u0000\u0000u\u0011"+
		"\u0001\u0000\u0000\u0000vt\u0001\u0000\u0000\u0000wz\u00058\u0000\u0000"+
		"xy\u00054\u0000\u0000y{\u0003\u001a\r\u0000zx\u0001\u0000\u0000\u0000"+
		"z{\u0001\u0000\u0000\u0000{\u0013\u0001\u0000\u0000\u0000|\u0080\u0005"+
		"\u001b\u0000\u0000}\u007f\u0003\u0018\f\u0000~}\u0001\u0000\u0000\u0000"+
		"\u007f\u0082\u0001\u0000\u0000\u0000\u0080~\u0001\u0000\u0000\u0000\u0080"+
		"\u0081\u0001\u0000\u0000\u0000\u0081\u0083\u0001\u0000\u0000\u0000\u0082"+
		"\u0080\u0001\u0000\u0000\u0000\u0083\u0084\u0005\u001c\u0000\u0000\u0084"+
		"\u0015\u0001\u0000\u0000\u0000\u0085\u0086\u00058\u0000\u0000\u0086\u0087"+
		"\u0005\u0017\u0000\u0000\u0087\u0088\u0005\u0018\u0000\u0000\u0088\u0089"+
		"\u0003\u0014\n\u0000\u0089\u0017\u0001\u0000\u0000\u0000\u008a\u008b\u0003"+
		"\u001a\r\u0000\u008b\u008c\u00052\u0000\u0000\u008c\u00c8\u0001\u0000"+
		"\u0000\u0000\u008d\u008e\u0003\u0010\b\u0000\u008e\u008f\u00052\u0000"+
		"\u0000\u008f\u00c8\u0001\u0000\u0000\u0000\u0090\u0091\u0005\n\u0000\u0000"+
		"\u0091\u0092\u0005\u0017\u0000\u0000\u0092\u0093\u0003\u001a\r\u0000\u0093"+
		"\u0096\u0005\u0018\u0000\u0000\u0094\u0097\u0003\u0014\n\u0000\u0095\u0097"+
		"\u0003\u0018\f\u0000\u0096\u0094\u0001\u0000\u0000\u0000\u0096\u0095\u0001"+
		"\u0000\u0000\u0000\u0097\u009d\u0001\u0000\u0000\u0000\u0098\u009b\u0005"+
		"\u000b\u0000\u0000\u0099\u009c\u0003\u0014\n\u0000\u009a\u009c\u0003\u0018"+
		"\f\u0000\u009b\u0099\u0001\u0000\u0000\u0000\u009b\u009a\u0001\u0000\u0000"+
		"\u0000\u009c\u009e\u0001\u0000\u0000\u0000\u009d\u0098\u0001\u0000\u0000"+
		"\u0000\u009d\u009e\u0001\u0000\u0000\u0000\u009e\u00c8\u0001\u0000\u0000"+
		"\u0000\u009f\u00a0\u0005\u0011\u0000\u0000\u00a0\u00a3\u0005\u0017\u0000"+
		"\u0000\u00a1\u00a4\u0003\u0010\b\u0000\u00a2\u00a4\u0003\u001a\r\u0000"+
		"\u00a3\u00a1\u0001\u0000\u0000\u0000\u00a3\u00a2\u0001\u0000\u0000\u0000"+
		"\u00a3\u00a4\u0001\u0000\u0000\u0000\u00a4\u00a5\u0001\u0000\u0000\u0000"+
		"\u00a5\u00a7\u00052\u0000\u0000\u00a6\u00a8\u0003\u001a\r\u0000\u00a7"+
		"\u00a6\u0001\u0000\u0000\u0000\u00a7\u00a8\u0001\u0000\u0000\u0000\u00a8"+
		"\u00a9\u0001\u0000\u0000\u0000\u00a9\u00ab\u00052\u0000\u0000\u00aa\u00ac"+
		"\u0003\u001a\r\u0000\u00ab\u00aa\u0001\u0000\u0000\u0000\u00ab\u00ac\u0001"+
		"\u0000\u0000\u0000\u00ac\u00ad\u0001\u0000\u0000\u0000\u00ad\u00b0\u0005"+
		"\u0018\u0000\u0000\u00ae\u00b1\u0003\u0014\n\u0000\u00af\u00b1\u0003\u0018"+
		"\f\u0000\u00b0\u00ae\u0001\u0000\u0000\u0000\u00b0\u00af\u0001\u0000\u0000"+
		"\u0000\u00b1\u00c8\u0001\u0000\u0000\u0000\u00b2\u00b3\u0005\u0012\u0000"+
		"\u0000\u00b3\u00b4\u0005\u0017\u0000\u0000\u00b4\u00b5\u0003\u001a\r\u0000"+
		"\u00b5\u00b8\u0005\u0018\u0000\u0000\u00b6\u00b9\u0003\u0014\n\u0000\u00b7"+
		"\u00b9\u0003\u0018\f\u0000\u00b8\u00b6\u0001\u0000\u0000\u0000\u00b8\u00b7"+
		"\u0001\u0000\u0000\u0000\u00b9\u00c8\u0001\u0000\u0000\u0000\u00ba\u00bb"+
		"\u0005\u0014\u0000\u0000\u00bb\u00c8\u00052\u0000\u0000\u00bc\u00bd\u0005"+
		"\u0013\u0000\u0000\u00bd\u00c8\u00052\u0000\u0000\u00be\u00c0\u0005\f"+
		"\u0000\u0000\u00bf\u00c1\u0003\u001a\r\u0000\u00c0\u00bf\u0001\u0000\u0000"+
		"\u0000\u00c0\u00c1\u0001\u0000\u0000\u0000\u00c1\u00c2\u0001\u0000\u0000"+
		"\u0000\u00c2\u00c8\u00052\u0000\u0000\u00c3\u00c8\u0003\u0014\n\u0000"+
		"\u00c4\u00c8\u0003\b\u0004\u0000\u00c5\u00c8\u0003\u0016\u000b\u0000\u00c6"+
		"\u00c8\u00052\u0000\u0000\u00c7\u008a\u0001\u0000\u0000\u0000\u00c7\u008d"+
		"\u0001\u0000\u0000\u0000\u00c7\u0090\u0001\u0000\u0000\u0000\u00c7\u009f"+
		"\u0001\u0000\u0000\u0000\u00c7\u00b2\u0001\u0000\u0000\u0000\u00c7\u00ba"+
		"\u0001\u0000\u0000\u0000\u00c7\u00bc\u0001\u0000\u0000\u0000\u00c7\u00be"+
		"\u0001\u0000\u0000\u0000\u00c7\u00c3\u0001\u0000\u0000\u0000\u00c7\u00c4"+
		"\u0001\u0000\u0000\u0000\u00c7\u00c5\u0001\u0000\u0000\u0000\u00c7\u00c6"+
		"\u0001\u0000\u0000\u0000\u00c8\u0019\u0001\u0000\u0000\u0000\u00c9\u00ca"+
		"\u0006\r\uffff\uffff\u0000\u00ca\u00cb\u0005\u0015\u0000\u0000\u00cb\u00d2"+
		"\u0003\u0002\u0001\u0000\u00cc\u00cd\u0005\u0019\u0000\u0000\u00cd\u00ce"+
		"\u0003\u001a\r\u0000\u00ce\u00cf\u0005\u001a\u0000\u0000\u00cf\u00d1\u0001"+
		"\u0000\u0000\u0000\u00d0\u00cc\u0001\u0000\u0000\u0000\u00d1\u00d4\u0001"+
		"\u0000\u0000\u0000\u00d2\u00d0\u0001\u0000\u0000\u0000\u00d2\u00d3\u0001"+
		"\u0000\u0000\u0000\u00d3\u00d6\u0001\u0000\u0000\u0000\u00d4\u00d2\u0001"+
		"\u0000\u0000\u0000\u00d5\u00d7\u0003\u0004\u0002\u0000\u00d6\u00d5\u0001"+
		"\u0000\u0000\u0000\u00d7\u00d8\u0001\u0000\u0000\u0000\u00d8\u00d6\u0001"+
		"\u0000\u0000\u0000\u00d8\u00d9\u0001\u0000\u0000\u0000\u00d9\u00de\u0001"+
		"\u0000\u0000\u0000\u00da\u00db\u0005\u0019\u0000\u0000\u00db\u00dc\u0003"+
		"\u001a\r\u0000\u00dc\u00dd\u0005\u001a\u0000\u0000\u00dd\u00df\u0001\u0000"+
		"\u0000\u0000\u00de\u00da\u0001\u0000\u0000\u0000\u00df\u00e0\u0001\u0000"+
		"\u0000\u0000\u00e0\u00de\u0001\u0000\u0000\u0000\u00e0\u00e1\u0001\u0000"+
		"\u0000\u0000\u00e1\u010e\u0001\u0000\u0000\u0000\u00e2\u00e3\u0005\u0015"+
		"\u0000\u0000\u00e3\u00e4\u0003\u0002\u0001\u0000\u00e4\u00e5\u0005\u0017"+
		"\u0000\u0000\u00e5\u00e6\u0005\u0018\u0000\u0000\u00e6\u010e\u0001\u0000"+
		"\u0000\u0000\u00e7\u00e8\u0005\u0015\u0000\u0000\u00e8\u00ef\u0003\u0002"+
		"\u0001\u0000\u00e9\u00ea\u0005\u0019\u0000\u0000\u00ea\u00eb\u0003\u001a"+
		"\r\u0000\u00eb\u00ec\u0005\u001a\u0000\u0000\u00ec\u00ee\u0001\u0000\u0000"+
		"\u0000\u00ed\u00e9\u0001\u0000\u0000\u0000\u00ee\u00f1\u0001\u0000\u0000"+
		"\u0000\u00ef\u00ed\u0001\u0000\u0000\u0000\u00ef\u00f0\u0001\u0000\u0000"+
		"\u0000\u00f0\u00f5\u0001\u0000\u0000\u0000\u00f1\u00ef\u0001\u0000\u0000"+
		"\u0000\u00f2\u00f4\u0003\u0004\u0002\u0000\u00f3\u00f2\u0001\u0000\u0000"+
		"\u0000\u00f4\u00f7\u0001\u0000\u0000\u0000\u00f5\u00f6\u0001\u0000\u0000"+
		"\u0000\u00f5\u00f3\u0001\u0000\u0000\u0000\u00f6\u010e\u0001\u0000\u0000"+
		"\u0000\u00f7\u00f5\u0001\u0000\u0000\u0000\u00f8\u00fa\u0005\u0019\u0000"+
		"\u0000\u00f9\u00fb\u0005,\u0000\u0000\u00fa\u00f9\u0001\u0000\u0000\u0000"+
		"\u00fa\u00fb\u0001\u0000\u0000\u0000\u00fb\u00fc\u0001\u0000\u0000\u0000"+
		"\u00fc\u0102\u0005\u001a\u0000\u0000\u00fd\u00ff\u0005\u0017\u0000\u0000"+
		"\u00fe\u0100\u0003\n\u0005\u0000\u00ff\u00fe\u0001\u0000\u0000\u0000\u00ff"+
		"\u0100\u0001\u0000\u0000\u0000\u0100\u0101\u0001\u0000\u0000\u0000\u0101"+
		"\u0103\u0005\u0018\u0000\u0000\u0102\u00fd\u0001\u0000\u0000\u0000\u0102"+
		"\u0103\u0001\u0000\u0000\u0000\u0103\u0104\u0001\u0000\u0000\u0000\u0104"+
		"\u0105\u0005\u001d\u0000\u0000\u0105\u010e\u0003\u0014\n\u0000\u0106\u010e"+
		"\u0003\u001c\u000e\u0000\u0107\u0108\u0005\u0017\u0000\u0000\u0108\u0109"+
		"\u0003\u001a\r\u0000\u0109\u010a\u0005\u0018\u0000\u0000\u010a\u010e\u0001"+
		"\u0000\u0000\u0000\u010b\u010c\u0007\u0000\u0000\u0000\u010c\u010e\u0003"+
		"\u001a\r\f\u010d\u00c9\u0001\u0000\u0000\u0000\u010d\u00e2\u0001\u0000"+
		"\u0000\u0000\u010d\u00e7\u0001\u0000\u0000\u0000\u010d\u00f8\u0001\u0000"+
		"\u0000\u0000\u010d\u0106\u0001\u0000\u0000\u0000\u010d\u0107\u0001\u0000"+
		"\u0000\u0000\u010d\u010b\u0001\u0000\u0000\u0000\u010e\u0146\u0001\u0000"+
		"\u0000\u0000\u010f\u0110\n\u000b\u0000\u0000\u0110\u0111\u0007\u0001\u0000"+
		"\u0000\u0111\u0145\u0003\u001a\r\f\u0112\u0113\n\n\u0000\u0000\u0113\u0114"+
		"\u0007\u0002\u0000\u0000\u0114\u0145\u0003\u001a\r\u000b\u0115\u0116\n"+
		"\t\u0000\u0000\u0116\u0117\u0007\u0003\u0000\u0000\u0117\u0145\u0003\u001a"+
		"\r\n\u0118\u0119\n\b\u0000\u0000\u0119\u011a\u0007\u0004\u0000\u0000\u011a"+
		"\u0145\u0003\u001a\r\t\u011b\u011c\n\u0007\u0000\u0000\u011c\u011d\u0007"+
		"\u0005\u0000\u0000\u011d\u0145\u0003\u001a\r\b\u011e\u011f\n\u0006\u0000"+
		"\u0000\u011f\u0120\u0005,\u0000\u0000\u0120\u0145\u0003\u001a\r\u0007"+
		"\u0121\u0122\n\u0005\u0000\u0000\u0122\u0123\u0005+\u0000\u0000\u0123"+
		"\u0145\u0003\u001a\r\u0006\u0124\u0125\n\u0004\u0000\u0000\u0125\u0126"+
		"\u0005-\u0000\u0000\u0126\u0145\u0003\u001a\r\u0005\u0127\u0128\n\u0003"+
		"\u0000\u0000\u0128\u0129\u0005)\u0000\u0000\u0129\u0145\u0003\u001a\r"+
		"\u0004\u012a\u012b\n\u0002\u0000\u0000\u012b\u012c\u0005*\u0000\u0000"+
		"\u012c\u0145\u0003\u001a\r\u0003\u012d\u012e\n\u0001\u0000\u0000\u012e"+
		"\u012f\u00054\u0000\u0000\u012f\u0145\u0003\u001a\r\u0001\u0130\u0131"+
		"\n\u0013\u0000\u0000\u0131\u0133\u0005\u0017\u0000\u0000\u0132\u0134\u0003"+
		"\u000e\u0007\u0000\u0133\u0132\u0001\u0000\u0000\u0000\u0133\u0134\u0001"+
		"\u0000\u0000\u0000\u0134\u0135\u0001\u0000\u0000\u0000\u0135\u0145\u0005"+
		"\u0018\u0000\u0000\u0136\u0137\n\u0012\u0000\u0000\u0137\u0138\u00057"+
		"\u0000\u0000\u0138\u0145\u00058\u0000\u0000\u0139\u013a\n\u000e\u0000"+
		"\u0000\u013a\u0145\u0007\u0006\u0000\u0000\u013b\u0140\n\r\u0000\u0000"+
		"\u013c\u013d\u0005\u0019\u0000\u0000\u013d\u013e\u0003\u001a\r\u0000\u013e"+
		"\u013f\u0005\u001a\u0000\u0000\u013f\u0141\u0001\u0000\u0000\u0000\u0140"+
		"\u013c\u0001\u0000\u0000\u0000\u0141\u0142\u0001\u0000\u0000\u0000\u0142"+
		"\u0140\u0001\u0000\u0000\u0000\u0142\u0143\u0001\u0000\u0000\u0000\u0143"+
		"\u0145\u0001\u0000\u0000\u0000\u0144\u010f\u0001\u0000\u0000\u0000\u0144"+
		"\u0112\u0001\u0000\u0000\u0000\u0144\u0115\u0001\u0000\u0000\u0000\u0144"+
		"\u0118\u0001\u0000\u0000\u0000\u0144\u011b\u0001\u0000\u0000\u0000\u0144"+
		"\u011e\u0001\u0000\u0000\u0000\u0144\u0121\u0001\u0000\u0000\u0000\u0144"+
		"\u0124\u0001\u0000\u0000\u0000\u0144\u0127\u0001\u0000\u0000\u0000\u0144"+
		"\u012a\u0001\u0000\u0000\u0000\u0144\u012d\u0001\u0000\u0000\u0000\u0144"+
		"\u0130\u0001\u0000\u0000\u0000\u0144\u0136\u0001\u0000\u0000\u0000\u0144"+
		"\u0139\u0001\u0000\u0000\u0000\u0144\u013b\u0001\u0000\u0000\u0000\u0145"+
		"\u0148\u0001\u0000\u0000\u0000\u0146\u0144\u0001\u0000\u0000\u0000\u0146"+
		"\u0147\u0001\u0000\u0000\u0000\u0147\u001b\u0001\u0000\u0000\u0000\u0148"+
		"\u0146\u0001\u0000\u0000\u0000\u0149\u014a\u0007\u0007\u0000\u0000\u014a"+
		"\u001d\u0001\u0000\u0000\u0000$%\'39?FHU`ktz\u0080\u0096\u009b\u009d\u00a3"+
		"\u00a7\u00ab\u00b0\u00b8\u00c0\u00c7\u00d2\u00d8\u00e0\u00ef\u00f5\u00fa"+
		"\u00ff\u0102\u010d\u0133\u0142\u0144\u0146";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}