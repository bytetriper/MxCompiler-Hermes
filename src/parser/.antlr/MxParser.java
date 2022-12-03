// Generated from /root/MxCompiler-Hermes/src/parser/Mx.g4 by ANTLR 4.9.2
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class MxParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.9.2", RuntimeMetaData.VERSION); }

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
	public String getGrammarFileName() { return "Mx.g4"; }

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
			} while ( (((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Int) | (1L << String) | (1L << Bool) | (1L << Void) | (1L << Class) | (1L << Identifier))) != 0) );
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

	public static class ListSufContext extends ParserRuleContext {
		public TerminalNode LeftBracket() { return getToken(MxParser.LeftBracket, 0); }
		public TerminalNode RightBracket() { return getToken(MxParser.RightBracket, 0); }
		public ListSufContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_listSuf; }
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
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Int) | (1L << String) | (1L << Bool) | (1L << Void) | (1L << Identifier))) != 0)) {
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

	public static class ParameterContext extends ParserRuleContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public TerminalNode Identifier() { return getToken(MxParser.Identifier, 0); }
		public ParameterContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_parameter; }
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
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__1) | (1L << Integer) | (1L << BoolConst) | (1L << ConstString) | (1L << Int) | (1L << String) | (1L << Bool) | (1L << Void) | (1L << If) | (1L << Return) | (1L << This) | (1L << For) | (1L << While) | (1L << Break) | (1L << Continue) | (1L << New) | (1L << Null) | (1L << LeftParen) | (1L << LeftBracket) | (1L << LeftBrace) | (1L << Minus) | (1L << Not) | (1L << Tilde) | (1L << Semi) | (1L << Identifier))) != 0)) {
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
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__1) | (1L << Integer) | (1L << BoolConst) | (1L << ConstString) | (1L << This) | (1L << New) | (1L << Null) | (1L << LeftParen) | (1L << LeftBracket) | (1L << Minus) | (1L << Not) | (1L << Tilde) | (1L << Identifier))) != 0)) {
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
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__1) | (1L << Integer) | (1L << BoolConst) | (1L << ConstString) | (1L << This) | (1L << New) | (1L << Null) | (1L << LeftParen) | (1L << LeftBracket) | (1L << Minus) | (1L << Not) | (1L << Tilde) | (1L << Identifier))) != 0)) {
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
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__1) | (1L << Integer) | (1L << BoolConst) | (1L << ConstString) | (1L << This) | (1L << New) | (1L << Null) | (1L << LeftParen) | (1L << LeftBracket) | (1L << Minus) | (1L << Not) | (1L << Tilde) | (1L << Identifier))) != 0)) {
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
	}
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
	}
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
	}
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
	}
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
	}
	public static class Member_ExprContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public TerminalNode Dot() { return getToken(MxParser.Dot, 0); }
		public TerminalNode Identifier() { return getToken(MxParser.Identifier, 0); }
		public Member_ExprContext(ExprContext ctx) { copyFrom(ctx); }
	}
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
	}
	public static class SufExprContext extends ExprContext {
		public ExprContext lv;
		public Token op;
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public SufExprContext(ExprContext ctx) { copyFrom(ctx); }
	}
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
	}
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
	}
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
					if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Int) | (1L << String) | (1L << Bool) | (1L << Void) | (1L << Identifier))) != 0)) {
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
				if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__1) | (1L << Minus) | (1L << Not) | (1L << Tilde))) != 0)) ) {
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
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Mul) | (1L << Div) | (1L << Mod))) != 0)) ) {
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
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Less) | (1L << LessEqual) | (1L << Greater) | (1L << GreaterEqual))) != 0)) ) {
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
						if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__1) | (1L << Integer) | (1L << BoolConst) | (1L << ConstString) | (1L << This) | (1L << New) | (1L << Null) | (1L << LeftParen) | (1L << LeftBracket) | (1L << Minus) | (1L << Not) | (1L << Tilde) | (1L << Identifier))) != 0)) {
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
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Integer) | (1L << BoolConst) | (1L << ConstString) | (1L << This) | (1L << Null) | (1L << Identifier))) != 0)) ) {
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
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3>\u014e\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t"+
		"\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\3\2\3\2\3\2\3\2\3\2"+
		"\3\2\3\2\6\2(\n\2\r\2\16\2)\3\2\3\2\3\3\3\3\3\3\3\3\3\3\3\3\6\3\64\n\3"+
		"\r\3\16\3\65\3\3\3\3\6\3:\n\3\r\3\16\3;\3\3\3\3\6\3@\n\3\r\3\16\3A\3\3"+
		"\3\3\3\3\6\3G\n\3\r\3\16\3H\5\3K\n\3\3\4\3\4\3\4\3\5\3\5\3\5\3\5\3\6\3"+
		"\6\3\6\3\6\5\6X\n\6\3\6\3\6\3\6\3\6\3\7\3\7\3\7\7\7a\n\7\f\7\16\7d\13"+
		"\7\3\b\3\b\3\b\3\t\3\t\3\t\7\tl\n\t\f\t\16\to\13\t\3\n\3\n\3\n\3\n\7\n"+
		"u\n\n\f\n\16\nx\13\n\3\13\3\13\3\13\5\13}\n\13\3\f\3\f\7\f\u0081\n\f\f"+
		"\f\16\f\u0084\13\f\3\f\3\f\3\r\3\r\3\r\3\r\3\r\3\16\3\16\3\16\3\16\3\16"+
		"\3\16\3\16\3\16\3\16\3\16\3\16\3\16\5\16\u0099\n\16\3\16\3\16\3\16\5\16"+
		"\u009e\n\16\5\16\u00a0\n\16\3\16\3\16\3\16\3\16\5\16\u00a6\n\16\3\16\3"+
		"\16\5\16\u00aa\n\16\3\16\3\16\5\16\u00ae\n\16\3\16\3\16\3\16\5\16\u00b3"+
		"\n\16\3\16\3\16\3\16\3\16\3\16\3\16\5\16\u00bb\n\16\3\16\3\16\3\16\3\16"+
		"\3\16\3\16\5\16\u00c3\n\16\3\16\3\16\3\16\3\16\3\16\5\16\u00ca\n\16\3"+
		"\17\3\17\3\17\3\17\3\17\3\17\3\17\7\17\u00d3\n\17\f\17\16\17\u00d6\13"+
		"\17\3\17\6\17\u00d9\n\17\r\17\16\17\u00da\3\17\3\17\3\17\3\17\6\17\u00e1"+
		"\n\17\r\17\16\17\u00e2\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3"+
		"\17\3\17\7\17\u00f0\n\17\f\17\16\17\u00f3\13\17\3\17\7\17\u00f6\n\17\f"+
		"\17\16\17\u00f9\13\17\3\17\3\17\5\17\u00fd\n\17\3\17\3\17\3\17\5\17\u0102"+
		"\n\17\3\17\5\17\u0105\n\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17"+
		"\5\17\u0110\n\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17"+
		"\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17"+
		"\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\5\17\u0136\n\17"+
		"\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\6\17\u0143\n\17"+
		"\r\17\16\17\u0144\7\17\u0147\n\17\f\17\16\17\u014a\13\17\3\20\3\20\3\20"+
		"\3\u00f7\3\34\21\2\4\6\b\n\f\16\20\22\24\26\30\32\34\36\2\n\5\2\3\4\'"+
		"\'\60\61\3\2(*\3\2&\'\3\2$%\3\2 #\3\2\678\3\2\3\4\6\2\5\7\22\22\30\30"+
		"::\2\u0187\2\'\3\2\2\2\4J\3\2\2\2\6L\3\2\2\2\bO\3\2\2\2\nS\3\2\2\2\f]"+
		"\3\2\2\2\16e\3\2\2\2\20h\3\2\2\2\22p\3\2\2\2\24y\3\2\2\2\26~\3\2\2\2\30"+
		"\u0087\3\2\2\2\32\u00c9\3\2\2\2\34\u010f\3\2\2\2\36\u014b\3\2\2\2 !\5"+
		"\b\5\2!\"\7\64\2\2\"(\3\2\2\2#(\5\n\6\2$%\5\22\n\2%&\7\64\2\2&(\3\2\2"+
		"\2\' \3\2\2\2\'#\3\2\2\2\'$\3\2\2\2()\3\2\2\2)\'\3\2\2\2)*\3\2\2\2*+\3"+
		"\2\2\2+,\7\2\2\3,\3\3\2\2\2-K\7\b\2\2.K\7\13\2\2/K\7\t\2\2\60K\7\n\2\2"+
		"\61\63\7\b\2\2\62\64\5\6\4\2\63\62\3\2\2\2\64\65\3\2\2\2\65\63\3\2\2\2"+
		"\65\66\3\2\2\2\66K\3\2\2\2\679\7\t\2\28:\5\6\4\298\3\2\2\2:;\3\2\2\2;"+
		"9\3\2\2\2;<\3\2\2\2<K\3\2\2\2=?\7\n\2\2>@\5\6\4\2?>\3\2\2\2@A\3\2\2\2"+
		"A?\3\2\2\2AB\3\2\2\2BK\3\2\2\2CK\7:\2\2DF\7:\2\2EG\5\6\4\2FE\3\2\2\2G"+
		"H\3\2\2\2HF\3\2\2\2HI\3\2\2\2IK\3\2\2\2J-\3\2\2\2J.\3\2\2\2J/\3\2\2\2"+
		"J\60\3\2\2\2J\61\3\2\2\2J\67\3\2\2\2J=\3\2\2\2JC\3\2\2\2JD\3\2\2\2K\5"+
		"\3\2\2\2LM\7\33\2\2MN\7\34\2\2N\7\3\2\2\2OP\7\17\2\2PQ\7:\2\2QR\5\26\f"+
		"\2R\t\3\2\2\2ST\5\4\3\2TU\7:\2\2UW\7\31\2\2VX\5\f\7\2WV\3\2\2\2WX\3\2"+
		"\2\2XY\3\2\2\2YZ\7\32\2\2Z[\3\2\2\2[\\\5\26\f\2\\\13\3\2\2\2]b\5\16\b"+
		"\2^_\7\65\2\2_a\5\16\b\2`^\3\2\2\2ad\3\2\2\2b`\3\2\2\2bc\3\2\2\2c\r\3"+
		"\2\2\2db\3\2\2\2ef\5\4\3\2fg\7:\2\2g\17\3\2\2\2hm\5\34\17\2ij\7\65\2\2"+
		"jl\5\34\17\2ki\3\2\2\2lo\3\2\2\2mk\3\2\2\2mn\3\2\2\2n\21\3\2\2\2om\3\2"+
		"\2\2pq\5\4\3\2qv\5\24\13\2rs\7\65\2\2su\5\24\13\2tr\3\2\2\2ux\3\2\2\2"+
		"vt\3\2\2\2vw\3\2\2\2w\23\3\2\2\2xv\3\2\2\2y|\7:\2\2z{\7\66\2\2{}\5\34"+
		"\17\2|z\3\2\2\2|}\3\2\2\2}\25\3\2\2\2~\u0082\7\35\2\2\177\u0081\5\32\16"+
		"\2\u0080\177\3\2\2\2\u0081\u0084\3\2\2\2\u0082\u0080\3\2\2\2\u0082\u0083"+
		"\3\2\2\2\u0083\u0085\3\2\2\2\u0084\u0082\3\2\2\2\u0085\u0086\7\36\2\2"+
		"\u0086\27\3\2\2\2\u0087\u0088\7:\2\2\u0088\u0089\7\31\2\2\u0089\u008a"+
		"\7\32\2\2\u008a\u008b\5\26\f\2\u008b\31\3\2\2\2\u008c\u008d\5\34\17\2"+
		"\u008d\u008e\7\64\2\2\u008e\u00ca\3\2\2\2\u008f\u0090\5\22\n\2\u0090\u0091"+
		"\7\64\2\2\u0091\u00ca\3\2\2\2\u0092\u0093\7\f\2\2\u0093\u0094\7\31\2\2"+
		"\u0094\u0095\5\34\17\2\u0095\u0098\7\32\2\2\u0096\u0099\5\26\f\2\u0097"+
		"\u0099\5\32\16\2\u0098\u0096\3\2\2\2\u0098\u0097\3\2\2\2\u0099\u009f\3"+
		"\2\2\2\u009a\u009d\7\r\2\2\u009b\u009e\5\26\f\2\u009c\u009e\5\32\16\2"+
		"\u009d\u009b\3\2\2\2\u009d\u009c\3\2\2\2\u009e\u00a0\3\2\2\2\u009f\u009a"+
		"\3\2\2\2\u009f\u00a0\3\2\2\2\u00a0\u00ca\3\2\2\2\u00a1\u00a2\7\23\2\2"+
		"\u00a2\u00a5\7\31\2\2\u00a3\u00a6\5\22\n\2\u00a4\u00a6\5\34\17\2\u00a5"+
		"\u00a3\3\2\2\2\u00a5\u00a4\3\2\2\2\u00a5\u00a6\3\2\2\2\u00a6\u00a7\3\2"+
		"\2\2\u00a7\u00a9\7\64\2\2\u00a8\u00aa\5\34\17\2\u00a9\u00a8\3\2\2\2\u00a9"+
		"\u00aa\3\2\2\2\u00aa\u00ab\3\2\2\2\u00ab\u00ad\7\64\2\2\u00ac\u00ae\5"+
		"\34\17\2\u00ad\u00ac\3\2\2\2\u00ad\u00ae\3\2\2\2\u00ae\u00af\3\2\2\2\u00af"+
		"\u00b2\7\32\2\2\u00b0\u00b3\5\26\f\2\u00b1\u00b3\5\32\16\2\u00b2\u00b0"+
		"\3\2\2\2\u00b2\u00b1\3\2\2\2\u00b3\u00ca\3\2\2\2\u00b4\u00b5\7\24\2\2"+
		"\u00b5\u00b6\7\31\2\2\u00b6\u00b7\5\34\17\2\u00b7\u00ba\7\32\2\2\u00b8"+
		"\u00bb\5\26\f\2\u00b9\u00bb\5\32\16\2\u00ba\u00b8\3\2\2\2\u00ba\u00b9"+
		"\3\2\2\2\u00bb\u00ca\3\2\2\2\u00bc\u00bd\7\26\2\2\u00bd\u00ca\7\64\2\2"+
		"\u00be\u00bf\7\25\2\2\u00bf\u00ca\7\64\2\2\u00c0\u00c2\7\16\2\2\u00c1"+
		"\u00c3\5\34\17\2\u00c2\u00c1\3\2\2\2\u00c2\u00c3\3\2\2\2\u00c3\u00c4\3"+
		"\2\2\2\u00c4\u00ca\7\64\2\2\u00c5\u00ca\5\26\f\2\u00c6\u00ca\5\n\6\2\u00c7"+
		"\u00ca\5\30\r\2\u00c8\u00ca\7\64\2\2\u00c9\u008c\3\2\2\2\u00c9\u008f\3"+
		"\2\2\2\u00c9\u0092\3\2\2\2\u00c9\u00a1\3\2\2\2\u00c9\u00b4\3\2\2\2\u00c9"+
		"\u00bc\3\2\2\2\u00c9\u00be\3\2\2\2\u00c9\u00c0\3\2\2\2\u00c9\u00c5\3\2"+
		"\2\2\u00c9\u00c6\3\2\2\2\u00c9\u00c7\3\2\2\2\u00c9\u00c8\3\2\2\2\u00ca"+
		"\33\3\2\2\2\u00cb\u00cc\b\17\1\2\u00cc\u00cd\7\27\2\2\u00cd\u00d4\5\4"+
		"\3\2\u00ce\u00cf\7\33\2\2\u00cf\u00d0\5\34\17\2\u00d0\u00d1\7\34\2\2\u00d1"+
		"\u00d3\3\2\2\2\u00d2\u00ce\3\2\2\2\u00d3\u00d6\3\2\2\2\u00d4\u00d2\3\2"+
		"\2\2\u00d4\u00d5\3\2\2\2\u00d5\u00d8\3\2\2\2\u00d6\u00d4\3\2\2\2\u00d7"+
		"\u00d9\5\6\4\2\u00d8\u00d7\3\2\2\2\u00d9\u00da\3\2\2\2\u00da\u00d8\3\2"+
		"\2\2\u00da\u00db\3\2\2\2\u00db\u00e0\3\2\2\2\u00dc\u00dd\7\33\2\2\u00dd"+
		"\u00de\5\34\17\2\u00de\u00df\7\34\2\2\u00df\u00e1\3\2\2\2\u00e0\u00dc"+
		"\3\2\2\2\u00e1\u00e2\3\2\2\2\u00e2\u00e0\3\2\2\2\u00e2\u00e3\3\2\2\2\u00e3"+
		"\u0110\3\2\2\2\u00e4\u00e5\7\27\2\2\u00e5\u00e6\5\4\3\2\u00e6\u00e7\7"+
		"\31\2\2\u00e7\u00e8\7\32\2\2\u00e8\u0110\3\2\2\2\u00e9\u00ea\7\27\2\2"+
		"\u00ea\u00f1\5\4\3\2\u00eb\u00ec\7\33\2\2\u00ec\u00ed\5\34\17\2\u00ed"+
		"\u00ee\7\34\2\2\u00ee\u00f0\3\2\2\2\u00ef\u00eb\3\2\2\2\u00f0\u00f3\3"+
		"\2\2\2\u00f1\u00ef\3\2\2\2\u00f1\u00f2\3\2\2\2\u00f2\u00f7\3\2\2\2\u00f3"+
		"\u00f1\3\2\2\2\u00f4\u00f6\5\6\4\2\u00f5\u00f4\3\2\2\2\u00f6\u00f9\3\2"+
		"\2\2\u00f7\u00f8\3\2\2\2\u00f7\u00f5\3\2\2\2\u00f8\u0110\3\2\2\2\u00f9"+
		"\u00f7\3\2\2\2\u00fa\u00fc\7\33\2\2\u00fb\u00fd\7.\2\2\u00fc\u00fb\3\2"+
		"\2\2\u00fc\u00fd\3\2\2\2\u00fd\u00fe\3\2\2\2\u00fe\u0104\7\34\2\2\u00ff"+
		"\u0101\7\31\2\2\u0100\u0102\5\f\7\2\u0101\u0100\3\2\2\2\u0101\u0102\3"+
		"\2\2\2\u0102\u0103\3\2\2\2\u0103\u0105\7\32\2\2\u0104\u00ff\3\2\2\2\u0104"+
		"\u0105\3\2\2\2\u0105\u0106\3\2\2\2\u0106\u0107\7\37\2\2\u0107\u0110\5"+
		"\26\f\2\u0108\u0110\5\36\20\2\u0109\u010a\7\31\2\2\u010a\u010b\5\34\17"+
		"\2\u010b\u010c\7\32\2\2\u010c\u0110\3\2\2\2\u010d\u010e\t\2\2\2\u010e"+
		"\u0110\5\34\17\16\u010f\u00cb\3\2\2\2\u010f\u00e4\3\2\2\2\u010f\u00e9"+
		"\3\2\2\2\u010f\u00fa\3\2\2\2\u010f\u0108\3\2\2\2\u010f\u0109\3\2\2\2\u010f"+
		"\u010d\3\2\2\2\u0110\u0148\3\2\2\2\u0111\u0112\f\r\2\2\u0112\u0113\t\3"+
		"\2\2\u0113\u0147\5\34\17\16\u0114\u0115\f\f\2\2\u0115\u0116\t\4\2\2\u0116"+
		"\u0147\5\34\17\r\u0117\u0118\f\13\2\2\u0118\u0119\t\5\2\2\u0119\u0147"+
		"\5\34\17\f\u011a\u011b\f\n\2\2\u011b\u011c\t\6\2\2\u011c\u0147\5\34\17"+
		"\13\u011d\u011e\f\t\2\2\u011e\u011f\t\7\2\2\u011f\u0147\5\34\17\n\u0120"+
		"\u0121\f\b\2\2\u0121\u0122\7.\2\2\u0122\u0147\5\34\17\t\u0123\u0124\f"+
		"\7\2\2\u0124\u0125\7-\2\2\u0125\u0147\5\34\17\b\u0126\u0127\f\6\2\2\u0127"+
		"\u0128\7/\2\2\u0128\u0147\5\34\17\7\u0129\u012a\f\5\2\2\u012a\u012b\7"+
		"+\2\2\u012b\u0147\5\34\17\6\u012c\u012d\f\4\2\2\u012d\u012e\7,\2\2\u012e"+
		"\u0147\5\34\17\5\u012f\u0130\f\3\2\2\u0130\u0131\7\66\2\2\u0131\u0147"+
		"\5\34\17\3\u0132\u0133\f\25\2\2\u0133\u0135\7\31\2\2\u0134\u0136\5\20"+
		"\t\2\u0135\u0134\3\2\2\2\u0135\u0136\3\2\2\2\u0136\u0137\3\2\2\2\u0137"+
		"\u0147\7\32\2\2\u0138\u0139\f\24\2\2\u0139\u013a\79\2\2\u013a\u0147\7"+
		":\2\2\u013b\u013c\f\20\2\2\u013c\u0147\t\b\2\2\u013d\u0142\f\17\2\2\u013e"+
		"\u013f\7\33\2\2\u013f\u0140\5\34\17\2\u0140\u0141\7\34\2\2\u0141\u0143"+
		"\3\2\2\2\u0142\u013e\3\2\2\2\u0143\u0144\3\2\2\2\u0144\u0142\3\2\2\2\u0144"+
		"\u0145\3\2\2\2\u0145\u0147\3\2\2\2\u0146\u0111\3\2\2\2\u0146\u0114\3\2"+
		"\2\2\u0146\u0117\3\2\2\2\u0146\u011a\3\2\2\2\u0146\u011d\3\2\2\2\u0146"+
		"\u0120\3\2\2\2\u0146\u0123\3\2\2\2\u0146\u0126\3\2\2\2\u0146\u0129\3\2"+
		"\2\2\u0146\u012c\3\2\2\2\u0146\u012f\3\2\2\2\u0146\u0132\3\2\2\2\u0146"+
		"\u0138\3\2\2\2\u0146\u013b\3\2\2\2\u0146\u013d\3\2\2\2\u0147\u014a\3\2"+
		"\2\2\u0148\u0146\3\2\2\2\u0148\u0149\3\2\2\2\u0149\35\3\2\2\2\u014a\u0148"+
		"\3\2\2\2\u014b\u014c\t\t\2\2\u014c\37\3\2\2\2&\')\65;AHJWbmv|\u0082\u0098"+
		"\u009d\u009f\u00a5\u00a9\u00ad\u00b2\u00ba\u00c2\u00c9\u00d4\u00da\u00e2"+
		"\u00f1\u00f7\u00fc\u0101\u0104\u010f\u0135\u0144\u0146\u0148";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}