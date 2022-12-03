// Generated from /root/MxCompiler-Hermes/src/parser/Mx.g4 by ANTLR 4.9.2
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class MxLexer extends Lexer {
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
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	private static String[] makeRuleNames() {
		return new String[] {
			"T__0", "T__1", "Integer", "DecimalInteger", "BoolConst", "ConstString", 
			"ESC", "Int", "String", "Bool", "Void", "If", "Else", "Return", "Class", 
			"Tru", "Fals", "This", "For", "While", "Break", "Continue", "New", "Null", 
			"LeftParen", "RightParen", "LeftBracket", "RightBracket", "LeftBrace", 
			"RightBrace", "To", "Less", "LessEqual", "Greater", "GreaterEqual", "LeftShift", 
			"RightShift", "Plus", "Minus", "Mul", "Div", "Mod", "AndAnd", "OrOr", 
			"Caret", "And", "Or", "Not", "Tilde", "Question", "Colon", "Semi", "Comma", 
			"Assign", "Equal", "NotEqual", "Dot", "Identifier", "Whitespace", "Newline", 
			"BlockComment", "LineComment"
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


	public MxLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "Mx.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getChannelNames() { return channelNames; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2>\u017e\b\1\4\2\t"+
		"\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13"+
		"\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31\t\31"+
		"\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36\t\36\4\37\t\37\4 \t \4!"+
		"\t!\4\"\t\"\4#\t#\4$\t$\4%\t%\4&\t&\4\'\t\'\4(\t(\4)\t)\4*\t*\4+\t+\4"+
		",\t,\4-\t-\4.\t.\4/\t/\4\60\t\60\4\61\t\61\4\62\t\62\4\63\t\63\4\64\t"+
		"\64\4\65\t\65\4\66\t\66\4\67\t\67\48\t8\49\t9\4:\t:\4;\t;\4<\t<\4=\t="+
		"\4>\t>\4?\t?\3\2\3\2\3\2\3\3\3\3\3\3\3\4\3\4\3\5\3\5\7\5\u008a\n\5\f\5"+
		"\16\5\u008d\13\5\3\5\5\5\u0090\n\5\3\6\3\6\5\6\u0094\n\6\3\7\3\7\3\7\7"+
		"\7\u0099\n\7\f\7\16\7\u009c\13\7\3\7\3\7\3\b\3\b\3\b\3\b\3\b\3\b\5\b\u00a6"+
		"\n\b\3\t\3\t\3\t\3\t\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3\13\3\13\3\13\3\13\3"+
		"\13\3\f\3\f\3\f\3\f\3\f\3\r\3\r\3\r\3\16\3\16\3\16\3\16\3\16\3\17\3\17"+
		"\3\17\3\17\3\17\3\17\3\17\3\20\3\20\3\20\3\20\3\20\3\20\3\21\3\21\3\21"+
		"\3\21\3\21\3\22\3\22\3\22\3\22\3\22\3\22\3\23\3\23\3\23\3\23\3\23\3\24"+
		"\3\24\3\24\3\24\3\25\3\25\3\25\3\25\3\25\3\25\3\26\3\26\3\26\3\26\3\26"+
		"\3\26\3\27\3\27\3\27\3\27\3\27\3\27\3\27\3\27\3\27\3\30\3\30\3\30\3\30"+
		"\3\31\3\31\3\31\3\31\3\31\3\32\3\32\3\33\3\33\3\34\3\34\3\35\3\35\3\36"+
		"\3\36\3\37\3\37\3 \3 \3 \3!\3!\3\"\3\"\3\"\3#\3#\3$\3$\3$\3%\3%\3%\3&"+
		"\3&\3&\3\'\3\'\3(\3(\3)\3)\3*\3*\3+\3+\3,\3,\3,\3-\3-\3-\3.\3.\3/\3/\3"+
		"\60\3\60\3\61\3\61\3\62\3\62\3\63\3\63\3\64\3\64\3\65\3\65\3\66\3\66\3"+
		"\67\3\67\38\38\38\39\39\39\3:\3:\3;\3;\7;\u0151\n;\f;\16;\u0154\13;\3"+
		"<\6<\u0157\n<\r<\16<\u0158\3<\3<\3=\3=\5=\u015f\n=\3=\5=\u0162\n=\3=\3"+
		"=\3>\3>\3>\3>\7>\u016a\n>\f>\16>\u016d\13>\3>\3>\3>\3>\3>\3?\3?\3?\3?"+
		"\7?\u0178\n?\f?\16?\u017b\13?\3?\3?\4\u009a\u016b\2@\3\3\5\4\7\5\t\2\13"+
		"\6\r\7\17\2\21\b\23\t\25\n\27\13\31\f\33\r\35\16\37\17!\20#\21%\22\'\23"+
		")\24+\25-\26/\27\61\30\63\31\65\32\67\339\34;\35=\36?\37A C!E\"G#I$K%"+
		"M&O\'Q(S)U*W+Y,[-]._/a\60c\61e\62g\63i\64k\65m\66o\67q8s9u:w;y<{=}>\3"+
		"\2\t\3\2\63;\3\2\62;\3\2^^\4\2C\\c|\6\2\62;C\\aac|\5\2\13\f\17\17\"\""+
		"\4\2\f\f\17\17\2\u0188\2\3\3\2\2\2\2\5\3\2\2\2\2\7\3\2\2\2\2\13\3\2\2"+
		"\2\2\r\3\2\2\2\2\21\3\2\2\2\2\23\3\2\2\2\2\25\3\2\2\2\2\27\3\2\2\2\2\31"+
		"\3\2\2\2\2\33\3\2\2\2\2\35\3\2\2\2\2\37\3\2\2\2\2!\3\2\2\2\2#\3\2\2\2"+
		"\2%\3\2\2\2\2\'\3\2\2\2\2)\3\2\2\2\2+\3\2\2\2\2-\3\2\2\2\2/\3\2\2\2\2"+
		"\61\3\2\2\2\2\63\3\2\2\2\2\65\3\2\2\2\2\67\3\2\2\2\29\3\2\2\2\2;\3\2\2"+
		"\2\2=\3\2\2\2\2?\3\2\2\2\2A\3\2\2\2\2C\3\2\2\2\2E\3\2\2\2\2G\3\2\2\2\2"+
		"I\3\2\2\2\2K\3\2\2\2\2M\3\2\2\2\2O\3\2\2\2\2Q\3\2\2\2\2S\3\2\2\2\2U\3"+
		"\2\2\2\2W\3\2\2\2\2Y\3\2\2\2\2[\3\2\2\2\2]\3\2\2\2\2_\3\2\2\2\2a\3\2\2"+
		"\2\2c\3\2\2\2\2e\3\2\2\2\2g\3\2\2\2\2i\3\2\2\2\2k\3\2\2\2\2m\3\2\2\2\2"+
		"o\3\2\2\2\2q\3\2\2\2\2s\3\2\2\2\2u\3\2\2\2\2w\3\2\2\2\2y\3\2\2\2\2{\3"+
		"\2\2\2\2}\3\2\2\2\3\177\3\2\2\2\5\u0082\3\2\2\2\7\u0085\3\2\2\2\t\u008f"+
		"\3\2\2\2\13\u0093\3\2\2\2\r\u0095\3\2\2\2\17\u00a5\3\2\2\2\21\u00a7\3"+
		"\2\2\2\23\u00ab\3\2\2\2\25\u00b2\3\2\2\2\27\u00b7\3\2\2\2\31\u00bc\3\2"+
		"\2\2\33\u00bf\3\2\2\2\35\u00c4\3\2\2\2\37\u00cb\3\2\2\2!\u00d1\3\2\2\2"+
		"#\u00d6\3\2\2\2%\u00dc\3\2\2\2\'\u00e1\3\2\2\2)\u00e5\3\2\2\2+\u00eb\3"+
		"\2\2\2-\u00f1\3\2\2\2/\u00fa\3\2\2\2\61\u00fe\3\2\2\2\63\u0103\3\2\2\2"+
		"\65\u0105\3\2\2\2\67\u0107\3\2\2\29\u0109\3\2\2\2;\u010b\3\2\2\2=\u010d"+
		"\3\2\2\2?\u010f\3\2\2\2A\u0112\3\2\2\2C\u0114\3\2\2\2E\u0117\3\2\2\2G"+
		"\u0119\3\2\2\2I\u011c\3\2\2\2K\u011f\3\2\2\2M\u0122\3\2\2\2O\u0124\3\2"+
		"\2\2Q\u0126\3\2\2\2S\u0128\3\2\2\2U\u012a\3\2\2\2W\u012c\3\2\2\2Y\u012f"+
		"\3\2\2\2[\u0132\3\2\2\2]\u0134\3\2\2\2_\u0136\3\2\2\2a\u0138\3\2\2\2c"+
		"\u013a\3\2\2\2e\u013c\3\2\2\2g\u013e\3\2\2\2i\u0140\3\2\2\2k\u0142\3\2"+
		"\2\2m\u0144\3\2\2\2o\u0146\3\2\2\2q\u0149\3\2\2\2s\u014c\3\2\2\2u\u014e"+
		"\3\2\2\2w\u0156\3\2\2\2y\u0161\3\2\2\2{\u0165\3\2\2\2}\u0173\3\2\2\2\177"+
		"\u0080\7-\2\2\u0080\u0081\7-\2\2\u0081\4\3\2\2\2\u0082\u0083\7/\2\2\u0083"+
		"\u0084\7/\2\2\u0084\6\3\2\2\2\u0085\u0086\5\t\5\2\u0086\b\3\2\2\2\u0087"+
		"\u008b\t\2\2\2\u0088\u008a\t\3\2\2\u0089\u0088\3\2\2\2\u008a\u008d\3\2"+
		"\2\2\u008b\u0089\3\2\2\2\u008b\u008c\3\2\2\2\u008c\u0090\3\2\2\2\u008d"+
		"\u008b\3\2\2\2\u008e\u0090\7\62\2\2\u008f\u0087\3\2\2\2\u008f\u008e\3"+
		"\2\2\2\u0090\n\3\2\2\2\u0091\u0094\5!\21\2\u0092\u0094\5#\22\2\u0093\u0091"+
		"\3\2\2\2\u0093\u0092\3\2\2\2\u0094\f\3\2\2\2\u0095\u009a\7$\2\2\u0096"+
		"\u0099\n\4\2\2\u0097\u0099\5\17\b\2\u0098\u0096\3\2\2\2\u0098\u0097\3"+
		"\2\2\2\u0099\u009c\3\2\2\2\u009a\u009b\3\2\2\2\u009a\u0098\3\2\2\2\u009b"+
		"\u009d\3\2\2\2\u009c\u009a\3\2\2\2\u009d\u009e\7$\2\2\u009e\16\3\2\2\2"+
		"\u009f\u00a0\7^\2\2\u00a0\u00a6\7^\2\2\u00a1\u00a2\7^\2\2\u00a2\u00a6"+
		"\7p\2\2\u00a3\u00a4\7^\2\2\u00a4\u00a6\7$\2\2\u00a5\u009f\3\2\2\2\u00a5"+
		"\u00a1\3\2\2\2\u00a5\u00a3\3\2\2\2\u00a6\20\3\2\2\2\u00a7\u00a8\7k\2\2"+
		"\u00a8\u00a9\7p\2\2\u00a9\u00aa\7v\2\2\u00aa\22\3\2\2\2\u00ab\u00ac\7"+
		"u\2\2\u00ac\u00ad\7v\2\2\u00ad\u00ae\7t\2\2\u00ae\u00af\7k\2\2\u00af\u00b0"+
		"\7p\2\2\u00b0\u00b1\7i\2\2\u00b1\24\3\2\2\2\u00b2\u00b3\7d\2\2\u00b3\u00b4"+
		"\7q\2\2\u00b4\u00b5\7q\2\2\u00b5\u00b6\7n\2\2\u00b6\26\3\2\2\2\u00b7\u00b8"+
		"\7x\2\2\u00b8\u00b9\7q\2\2\u00b9\u00ba\7k\2\2\u00ba\u00bb\7f\2\2\u00bb"+
		"\30\3\2\2\2\u00bc\u00bd\7k\2\2\u00bd\u00be\7h\2\2\u00be\32\3\2\2\2\u00bf"+
		"\u00c0\7g\2\2\u00c0\u00c1\7n\2\2\u00c1\u00c2\7u\2\2\u00c2\u00c3\7g\2\2"+
		"\u00c3\34\3\2\2\2\u00c4\u00c5\7t\2\2\u00c5\u00c6\7g\2\2\u00c6\u00c7\7"+
		"v\2\2\u00c7\u00c8\7w\2\2\u00c8\u00c9\7t\2\2\u00c9\u00ca\7p\2\2\u00ca\36"+
		"\3\2\2\2\u00cb\u00cc\7e\2\2\u00cc\u00cd\7n\2\2\u00cd\u00ce\7c\2\2\u00ce"+
		"\u00cf\7u\2\2\u00cf\u00d0\7u\2\2\u00d0 \3\2\2\2\u00d1\u00d2\7v\2\2\u00d2"+
		"\u00d3\7t\2\2\u00d3\u00d4\7w\2\2\u00d4\u00d5\7g\2\2\u00d5\"\3\2\2\2\u00d6"+
		"\u00d7\7h\2\2\u00d7\u00d8\7c\2\2\u00d8\u00d9\7n\2\2\u00d9\u00da\7u\2\2"+
		"\u00da\u00db\7g\2\2\u00db$\3\2\2\2\u00dc\u00dd\7v\2\2\u00dd\u00de\7j\2"+
		"\2\u00de\u00df\7k\2\2\u00df\u00e0\7u\2\2\u00e0&\3\2\2\2\u00e1\u00e2\7"+
		"h\2\2\u00e2\u00e3\7q\2\2\u00e3\u00e4\7t\2\2\u00e4(\3\2\2\2\u00e5\u00e6"+
		"\7y\2\2\u00e6\u00e7\7j\2\2\u00e7\u00e8\7k\2\2\u00e8\u00e9\7n\2\2\u00e9"+
		"\u00ea\7g\2\2\u00ea*\3\2\2\2\u00eb\u00ec\7d\2\2\u00ec\u00ed\7t\2\2\u00ed"+
		"\u00ee\7g\2\2\u00ee\u00ef\7c\2\2\u00ef\u00f0\7m\2\2\u00f0,\3\2\2\2\u00f1"+
		"\u00f2\7e\2\2\u00f2\u00f3\7q\2\2\u00f3\u00f4\7p\2\2\u00f4\u00f5\7v\2\2"+
		"\u00f5\u00f6\7k\2\2\u00f6\u00f7\7p\2\2\u00f7\u00f8\7w\2\2\u00f8\u00f9"+
		"\7g\2\2\u00f9.\3\2\2\2\u00fa\u00fb\7p\2\2\u00fb\u00fc\7g\2\2\u00fc\u00fd"+
		"\7y\2\2\u00fd\60\3\2\2\2\u00fe\u00ff\7p\2\2\u00ff\u0100\7w\2\2\u0100\u0101"+
		"\7n\2\2\u0101\u0102\7n\2\2\u0102\62\3\2\2\2\u0103\u0104\7*\2\2\u0104\64"+
		"\3\2\2\2\u0105\u0106\7+\2\2\u0106\66\3\2\2\2\u0107\u0108\7]\2\2\u0108"+
		"8\3\2\2\2\u0109\u010a\7_\2\2\u010a:\3\2\2\2\u010b\u010c\7}\2\2\u010c<"+
		"\3\2\2\2\u010d\u010e\7\177\2\2\u010e>\3\2\2\2\u010f\u0110\7/\2\2\u0110"+
		"\u0111\7@\2\2\u0111@\3\2\2\2\u0112\u0113\7>\2\2\u0113B\3\2\2\2\u0114\u0115"+
		"\7>\2\2\u0115\u0116\7?\2\2\u0116D\3\2\2\2\u0117\u0118\7@\2\2\u0118F\3"+
		"\2\2\2\u0119\u011a\7@\2\2\u011a\u011b\7?\2\2\u011bH\3\2\2\2\u011c\u011d"+
		"\7>\2\2\u011d\u011e\7>\2\2\u011eJ\3\2\2\2\u011f\u0120\7@\2\2\u0120\u0121"+
		"\7@\2\2\u0121L\3\2\2\2\u0122\u0123\7-\2\2\u0123N\3\2\2\2\u0124\u0125\7"+
		"/\2\2\u0125P\3\2\2\2\u0126\u0127\7,\2\2\u0127R\3\2\2\2\u0128\u0129\7\61"+
		"\2\2\u0129T\3\2\2\2\u012a\u012b\7\'\2\2\u012bV\3\2\2\2\u012c\u012d\7("+
		"\2\2\u012d\u012e\7(\2\2\u012eX\3\2\2\2\u012f\u0130\7~\2\2\u0130\u0131"+
		"\7~\2\2\u0131Z\3\2\2\2\u0132\u0133\7`\2\2\u0133\\\3\2\2\2\u0134\u0135"+
		"\7(\2\2\u0135^\3\2\2\2\u0136\u0137\7~\2\2\u0137`\3\2\2\2\u0138\u0139\7"+
		"#\2\2\u0139b\3\2\2\2\u013a\u013b\7\u0080\2\2\u013bd\3\2\2\2\u013c\u013d"+
		"\7A\2\2\u013df\3\2\2\2\u013e\u013f\7<\2\2\u013fh\3\2\2\2\u0140\u0141\7"+
		"=\2\2\u0141j\3\2\2\2\u0142\u0143\7.\2\2\u0143l\3\2\2\2\u0144\u0145\7?"+
		"\2\2\u0145n\3\2\2\2\u0146\u0147\7?\2\2\u0147\u0148\7?\2\2\u0148p\3\2\2"+
		"\2\u0149\u014a\7#\2\2\u014a\u014b\7?\2\2\u014br\3\2\2\2\u014c\u014d\7"+
		"\60\2\2\u014dt\3\2\2\2\u014e\u0152\t\5\2\2\u014f\u0151\t\6\2\2\u0150\u014f"+
		"\3\2\2\2\u0151\u0154\3\2\2\2\u0152\u0150\3\2\2\2\u0152\u0153\3\2\2\2\u0153"+
		"v\3\2\2\2\u0154\u0152\3\2\2\2\u0155\u0157\t\7\2\2\u0156\u0155\3\2\2\2"+
		"\u0157\u0158\3\2\2\2\u0158\u0156\3\2\2\2\u0158\u0159\3\2\2\2\u0159\u015a"+
		"\3\2\2\2\u015a\u015b\b<\2\2\u015bx\3\2\2\2\u015c\u015e\7\17\2\2\u015d"+
		"\u015f\7\f\2\2\u015e\u015d\3\2\2\2\u015e\u015f\3\2\2\2\u015f\u0162\3\2"+
		"\2\2\u0160\u0162\7\f\2\2\u0161\u015c\3\2\2\2\u0161\u0160\3\2\2\2\u0162"+
		"\u0163\3\2\2\2\u0163\u0164\b=\2\2\u0164z\3\2\2\2\u0165\u0166\7\61\2\2"+
		"\u0166\u0167\7,\2\2\u0167\u016b\3\2\2\2\u0168\u016a\13\2\2\2\u0169\u0168"+
		"\3\2\2\2\u016a\u016d\3\2\2\2\u016b\u016c\3\2\2\2\u016b\u0169\3\2\2\2\u016c"+
		"\u016e\3\2\2\2\u016d\u016b\3\2\2\2\u016e\u016f\7,\2\2\u016f\u0170\7\61"+
		"\2\2\u0170\u0171\3\2\2\2\u0171\u0172\b>\2\2\u0172|\3\2\2\2\u0173\u0174"+
		"\7\61\2\2\u0174\u0175\7\61\2\2\u0175\u0179\3\2\2\2\u0176\u0178\n\b\2\2"+
		"\u0177\u0176\3\2\2\2\u0178\u017b\3\2\2\2\u0179\u0177\3\2\2\2\u0179\u017a"+
		"\3\2\2\2\u017a\u017c\3\2\2\2\u017b\u0179\3\2\2\2\u017c\u017d\b?\2\2\u017d"+
		"~\3\2\2\2\17\2\u008b\u008f\u0093\u0098\u009a\u00a5\u0152\u0158\u015e\u0161"+
		"\u016b\u0179\3\b\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}