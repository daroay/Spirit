// $ANTLR 3.4 C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g 2012-02-23 18:08:31

import org.antlr.runtime.*;
import java.util.Stack;
import java.util.List;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked"})
public class spiritLexer extends Lexer {
    public static final int EOF=-1;
    public static final int T__19=19;
    public static final int T__20=20;
    public static final int T__21=21;
    public static final int T__22=22;
    public static final int T__23=23;
    public static final int T__24=24;
    public static final int T__25=25;
    public static final int T__26=26;
    public static final int T__27=27;
    public static final int T__28=28;
    public static final int T__29=29;
    public static final int T__30=30;
    public static final int T__31=31;
    public static final int T__32=32;
    public static final int T__33=33;
    public static final int T__34=34;
    public static final int T__35=35;
    public static final int T__36=36;
    public static final int T__37=37;
    public static final int T__38=38;
    public static final int T__39=39;
    public static final int T__40=40;
    public static final int T__41=41;
    public static final int T__42=42;
    public static final int T__43=43;
    public static final int T__44=44;
    public static final int T__45=45;
    public static final int T__46=46;
    public static final int T__47=47;
    public static final int ADDITIONSUBSTRACTIONOPERATORS=4;
    public static final int ARRAYIDENTIFIER=5;
    public static final int BINARYOPERATORS=6;
    public static final int COMPARITIONOPERATORS=7;
    public static final int ESC_SEQ=8;
    public static final int EXPONENT=9;
    public static final int FLOAT=10;
    public static final int HEX_DIGIT=11;
    public static final int IDENTIFIER=12;
    public static final int INTEGER=13;
    public static final int MULTIPLICATIONDIVISIONOPERATORS=14;
    public static final int OCTAL_ESC=15;
    public static final int STRING=16;
    public static final int UNICODE_ESC=17;
    public static final int WS=18;

    // delegates
    // delegators
    public Lexer[] getDelegates() {
        return new Lexer[] {};
    }

    public spiritLexer() {} 
    public spiritLexer(CharStream input) {
        this(input, new RecognizerSharedState());
    }
    public spiritLexer(CharStream input, RecognizerSharedState state) {
        super(input,state);
    }
    public String getGrammarFileName() { return "C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g"; }

    // $ANTLR start "T__19"
    public final void mT__19() throws RecognitionException {
        try {
            int _type = T__19;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:2:7: ( '!' )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:2:9: '!'
            {
            match('!'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "T__19"

    // $ANTLR start "T__20"
    public final void mT__20() throws RecognitionException {
        try {
            int _type = T__20;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:3:7: ( '(' )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:3:9: '('
            {
            match('('); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "T__20"

    // $ANTLR start "T__21"
    public final void mT__21() throws RecognitionException {
        try {
            int _type = T__21;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:4:7: ( ')' )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:4:9: ')'
            {
            match(')'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "T__21"

    // $ANTLR start "T__22"
    public final void mT__22() throws RecognitionException {
        try {
            int _type = T__22;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:5:7: ( ',' )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:5:9: ','
            {
            match(','); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "T__22"

    // $ANTLR start "T__23"
    public final void mT__23() throws RecognitionException {
        try {
            int _type = T__23;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:6:7: ( '.' )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:6:9: '.'
            {
            match('.'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "T__23"

    // $ANTLR start "T__24"
    public final void mT__24() throws RecognitionException {
        try {
            int _type = T__24;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:7:7: ( ';' )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:7:9: ';'
            {
            match(';'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "T__24"

    // $ANTLR start "T__25"
    public final void mT__25() throws RecognitionException {
        try {
            int _type = T__25;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:8:7: ( '=' )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:8:9: '='
            {
            match('='); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "T__25"

    // $ANTLR start "T__26"
    public final void mT__26() throws RecognitionException {
        try {
            int _type = T__26;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:9:7: ( '[' )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:9:9: '['
            {
            match('['); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "T__26"

    // $ANTLR start "T__27"
    public final void mT__27() throws RecognitionException {
        try {
            int _type = T__27;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:10:7: ( ']' )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:10:9: ']'
            {
            match(']'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "T__27"

    // $ANTLR start "T__28"
    public final void mT__28() throws RecognitionException {
        try {
            int _type = T__28;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:11:7: ( 'boolean' )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:11:9: 'boolean'
            {
            match("boolean"); 



            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "T__28"

    // $ANTLR start "T__29"
    public final void mT__29() throws RecognitionException {
        try {
            int _type = T__29;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:12:7: ( 'char' )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:12:9: 'char'
            {
            match("char"); 



            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "T__29"

    // $ANTLR start "T__30"
    public final void mT__30() throws RecognitionException {
        try {
            int _type = T__30;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:13:7: ( 'class' )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:13:9: 'class'
            {
            match("class"); 



            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "T__30"

    // $ANTLR start "T__31"
    public final void mT__31() throws RecognitionException {
        try {
            int _type = T__31;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:14:7: ( 'else' )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:14:9: 'else'
            {
            match("else"); 



            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "T__31"

    // $ANTLR start "T__32"
    public final void mT__32() throws RecognitionException {
        try {
            int _type = T__32;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:15:7: ( 'elsif' )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:15:9: 'elsif'
            {
            match("elsif"); 



            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "T__32"

    // $ANTLR start "T__33"
    public final void mT__33() throws RecognitionException {
        try {
            int _type = T__33;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:16:7: ( 'false' )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:16:9: 'false'
            {
            match("false"); 



            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "T__33"

    // $ANTLR start "T__34"
    public final void mT__34() throws RecognitionException {
        try {
            int _type = T__34;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:17:7: ( 'float' )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:17:9: 'float'
            {
            match("float"); 



            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "T__34"

    // $ANTLR start "T__35"
    public final void mT__35() throws RecognitionException {
        try {
            int _type = T__35;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:18:7: ( 'if' )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:18:9: 'if'
            {
            match("if"); 



            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "T__35"

    // $ANTLR start "T__36"
    public final void mT__36() throws RecognitionException {
        try {
            int _type = T__36;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:19:7: ( 'int' )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:19:9: 'int'
            {
            match("int"); 



            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "T__36"

    // $ANTLR start "T__37"
    public final void mT__37() throws RecognitionException {
        try {
            int _type = T__37;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:20:7: ( 'main' )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:20:9: 'main'
            {
            match("main"); 



            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "T__37"

    // $ANTLR start "T__38"
    public final void mT__38() throws RecognitionException {
        try {
            int _type = T__38;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:21:7: ( 'new' )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:21:9: 'new'
            {
            match("new"); 



            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "T__38"

    // $ANTLR start "T__39"
    public final void mT__39() throws RecognitionException {
        try {
            int _type = T__39;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:22:7: ( 'print' )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:22:9: 'print'
            {
            match("print"); 



            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "T__39"

    // $ANTLR start "T__40"
    public final void mT__40() throws RecognitionException {
        try {
            int _type = T__40;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:23:7: ( 'return' )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:23:9: 'return'
            {
            match("return"); 



            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "T__40"

    // $ANTLR start "T__41"
    public final void mT__41() throws RecognitionException {
        try {
            int _type = T__41;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:24:7: ( 'static' )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:24:9: 'static'
            {
            match("static"); 



            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "T__41"

    // $ANTLR start "T__42"
    public final void mT__42() throws RecognitionException {
        try {
            int _type = T__42;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:25:7: ( 'this' )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:25:9: 'this'
            {
            match("this"); 



            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "T__42"

    // $ANTLR start "T__43"
    public final void mT__43() throws RecognitionException {
        try {
            int _type = T__43;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:26:7: ( 'true' )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:26:9: 'true'
            {
            match("true"); 



            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "T__43"

    // $ANTLR start "T__44"
    public final void mT__44() throws RecognitionException {
        try {
            int _type = T__44;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:27:7: ( 'void' )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:27:9: 'void'
            {
            match("void"); 



            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "T__44"

    // $ANTLR start "T__45"
    public final void mT__45() throws RecognitionException {
        try {
            int _type = T__45;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:28:7: ( 'while' )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:28:9: 'while'
            {
            match("while"); 



            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "T__45"

    // $ANTLR start "T__46"
    public final void mT__46() throws RecognitionException {
        try {
            int _type = T__46;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:29:7: ( '{' )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:29:9: '{'
            {
            match('{'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "T__46"

    // $ANTLR start "T__47"
    public final void mT__47() throws RecognitionException {
        try {
            int _type = T__47;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:30:7: ( '}' )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:30:9: '}'
            {
            match('}'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "T__47"

    // $ANTLR start "MULTIPLICATIONDIVISIONOPERATORS"
    public final void mMULTIPLICATIONDIVISIONOPERATORS() throws RecognitionException {
        try {
            int _type = MULTIPLICATIONDIVISIONOPERATORS;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:66:2: ( '*' | '/' )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:
            {
            if ( input.LA(1)=='*'||input.LA(1)=='/' ) {
                input.consume();
            }
            else {
                MismatchedSetException mse = new MismatchedSetException(null,input);
                recover(mse);
                throw mse;
            }


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "MULTIPLICATIONDIVISIONOPERATORS"

    // $ANTLR start "ADDITIONSUBSTRACTIONOPERATORS"
    public final void mADDITIONSUBSTRACTIONOPERATORS() throws RecognitionException {
        try {
            int _type = ADDITIONSUBSTRACTIONOPERATORS;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:69:2: ( '+' | '-' )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:
            {
            if ( input.LA(1)=='+'||input.LA(1)=='-' ) {
                input.consume();
            }
            else {
                MismatchedSetException mse = new MismatchedSetException(null,input);
                recover(mse);
                throw mse;
            }


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "ADDITIONSUBSTRACTIONOPERATORS"

    // $ANTLR start "BINARYOPERATORS"
    public final void mBINARYOPERATORS() throws RecognitionException {
        try {
            int _type = BINARYOPERATORS;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:72:2: ( '&&' | '||' )
            int alt1=2;
            int LA1_0 = input.LA(1);

            if ( (LA1_0=='&') ) {
                alt1=1;
            }
            else if ( (LA1_0=='|') ) {
                alt1=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 1, 0, input);

                throw nvae;

            }
            switch (alt1) {
                case 1 :
                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:72:6: '&&'
                    {
                    match("&&"); 



                    }
                    break;
                case 2 :
                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:72:13: '||'
                    {
                    match("||"); 



                    }
                    break;

            }
            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "BINARYOPERATORS"

    // $ANTLR start "COMPARITIONOPERATORS"
    public final void mCOMPARITIONOPERATORS() throws RecognitionException {
        try {
            int _type = COMPARITIONOPERATORS;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:75:2: ( '<' | '>' | '<=' | '>=' | '!=' )
            int alt2=5;
            switch ( input.LA(1) ) {
            case '<':
                {
                int LA2_1 = input.LA(2);

                if ( (LA2_1=='=') ) {
                    alt2=3;
                }
                else {
                    alt2=1;
                }
                }
                break;
            case '>':
                {
                int LA2_2 = input.LA(2);

                if ( (LA2_2=='=') ) {
                    alt2=4;
                }
                else {
                    alt2=2;
                }
                }
                break;
            case '!':
                {
                alt2=5;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 2, 0, input);

                throw nvae;

            }

            switch (alt2) {
                case 1 :
                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:75:4: '<'
                    {
                    match('<'); 

                    }
                    break;
                case 2 :
                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:75:10: '>'
                    {
                    match('>'); 

                    }
                    break;
                case 3 :
                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:75:16: '<='
                    {
                    match("<="); 



                    }
                    break;
                case 4 :
                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:75:23: '>='
                    {
                    match(">="); 



                    }
                    break;
                case 5 :
                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:75:30: '!='
                    {
                    match("!="); 



                    }
                    break;

            }
            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "COMPARITIONOPERATORS"

    // $ANTLR start "IDENTIFIER"
    public final void mIDENTIFIER() throws RecognitionException {
        try {
            int _type = IDENTIFIER;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:78:2: ( ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )* )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:78:4: ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )*
            {
            if ( (input.LA(1) >= 'A' && input.LA(1) <= 'Z')||input.LA(1)=='_'||(input.LA(1) >= 'a' && input.LA(1) <= 'z') ) {
                input.consume();
            }
            else {
                MismatchedSetException mse = new MismatchedSetException(null,input);
                recover(mse);
                throw mse;
            }


            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:78:28: ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )*
            loop3:
            do {
                int alt3=2;
                int LA3_0 = input.LA(1);

                if ( ((LA3_0 >= '0' && LA3_0 <= '9')||(LA3_0 >= 'A' && LA3_0 <= 'Z')||LA3_0=='_'||(LA3_0 >= 'a' && LA3_0 <= 'z')) ) {
                    alt3=1;
                }


                switch (alt3) {
            	case 1 :
            	    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:
            	    {
            	    if ( (input.LA(1) >= '0' && input.LA(1) <= '9')||(input.LA(1) >= 'A' && input.LA(1) <= 'Z')||input.LA(1)=='_'||(input.LA(1) >= 'a' && input.LA(1) <= 'z') ) {
            	        input.consume();
            	    }
            	    else {
            	        MismatchedSetException mse = new MismatchedSetException(null,input);
            	        recover(mse);
            	        throw mse;
            	    }


            	    }
            	    break;

            	default :
            	    break loop3;
                }
            } while (true);


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "IDENTIFIER"

    // $ANTLR start "ARRAYIDENTIFIER"
    public final void mARRAYIDENTIFIER() throws RecognitionException {
        try {
            int _type = ARRAYIDENTIFIER;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:81:2: ( ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )* '[' ']' )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:81:4: ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )* '[' ']'
            {
            if ( (input.LA(1) >= 'A' && input.LA(1) <= 'Z')||input.LA(1)=='_'||(input.LA(1) >= 'a' && input.LA(1) <= 'z') ) {
                input.consume();
            }
            else {
                MismatchedSetException mse = new MismatchedSetException(null,input);
                recover(mse);
                throw mse;
            }


            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:81:28: ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )*
            loop4:
            do {
                int alt4=2;
                int LA4_0 = input.LA(1);

                if ( ((LA4_0 >= '0' && LA4_0 <= '9')||(LA4_0 >= 'A' && LA4_0 <= 'Z')||LA4_0=='_'||(LA4_0 >= 'a' && LA4_0 <= 'z')) ) {
                    alt4=1;
                }


                switch (alt4) {
            	case 1 :
            	    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:
            	    {
            	    if ( (input.LA(1) >= '0' && input.LA(1) <= '9')||(input.LA(1) >= 'A' && input.LA(1) <= 'Z')||input.LA(1)=='_'||(input.LA(1) >= 'a' && input.LA(1) <= 'z') ) {
            	        input.consume();
            	    }
            	    else {
            	        MismatchedSetException mse = new MismatchedSetException(null,input);
            	        recover(mse);
            	        throw mse;
            	    }


            	    }
            	    break;

            	default :
            	    break loop4;
                }
            } while (true);


            match('['); 

            match(']'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "ARRAYIDENTIFIER"

    // $ANTLR start "INTEGER"
    public final void mINTEGER() throws RecognitionException {
        try {
            int _type = INTEGER;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:84:2: ( ( '0' .. '9' )+ )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:84:4: ( '0' .. '9' )+
            {
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:84:4: ( '0' .. '9' )+
            int cnt5=0;
            loop5:
            do {
                int alt5=2;
                int LA5_0 = input.LA(1);

                if ( ((LA5_0 >= '0' && LA5_0 <= '9')) ) {
                    alt5=1;
                }


                switch (alt5) {
            	case 1 :
            	    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:
            	    {
            	    if ( (input.LA(1) >= '0' && input.LA(1) <= '9') ) {
            	        input.consume();
            	    }
            	    else {
            	        MismatchedSetException mse = new MismatchedSetException(null,input);
            	        recover(mse);
            	        throw mse;
            	    }


            	    }
            	    break;

            	default :
            	    if ( cnt5 >= 1 ) break loop5;
                        EarlyExitException eee =
                            new EarlyExitException(5, input);
                        throw eee;
                }
                cnt5++;
            } while (true);


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "INTEGER"

    // $ANTLR start "FLOAT"
    public final void mFLOAT() throws RecognitionException {
        try {
            int _type = FLOAT;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:87:5: ( ( '0' .. '9' )+ '.' ( '0' .. '9' )* ( EXPONENT )? | '.' ( '0' .. '9' )+ ( EXPONENT )? | ( '0' .. '9' )+ EXPONENT )
            int alt12=3;
            alt12 = dfa12.predict(input);
            switch (alt12) {
                case 1 :
                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:87:9: ( '0' .. '9' )+ '.' ( '0' .. '9' )* ( EXPONENT )?
                    {
                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:87:9: ( '0' .. '9' )+
                    int cnt6=0;
                    loop6:
                    do {
                        int alt6=2;
                        int LA6_0 = input.LA(1);

                        if ( ((LA6_0 >= '0' && LA6_0 <= '9')) ) {
                            alt6=1;
                        }


                        switch (alt6) {
                    	case 1 :
                    	    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:
                    	    {
                    	    if ( (input.LA(1) >= '0' && input.LA(1) <= '9') ) {
                    	        input.consume();
                    	    }
                    	    else {
                    	        MismatchedSetException mse = new MismatchedSetException(null,input);
                    	        recover(mse);
                    	        throw mse;
                    	    }


                    	    }
                    	    break;

                    	default :
                    	    if ( cnt6 >= 1 ) break loop6;
                                EarlyExitException eee =
                                    new EarlyExitException(6, input);
                                throw eee;
                        }
                        cnt6++;
                    } while (true);


                    match('.'); 

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:87:25: ( '0' .. '9' )*
                    loop7:
                    do {
                        int alt7=2;
                        int LA7_0 = input.LA(1);

                        if ( ((LA7_0 >= '0' && LA7_0 <= '9')) ) {
                            alt7=1;
                        }


                        switch (alt7) {
                    	case 1 :
                    	    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:
                    	    {
                    	    if ( (input.LA(1) >= '0' && input.LA(1) <= '9') ) {
                    	        input.consume();
                    	    }
                    	    else {
                    	        MismatchedSetException mse = new MismatchedSetException(null,input);
                    	        recover(mse);
                    	        throw mse;
                    	    }


                    	    }
                    	    break;

                    	default :
                    	    break loop7;
                        }
                    } while (true);


                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:87:37: ( EXPONENT )?
                    int alt8=2;
                    int LA8_0 = input.LA(1);

                    if ( (LA8_0=='E'||LA8_0=='e') ) {
                        alt8=1;
                    }
                    switch (alt8) {
                        case 1 :
                            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:87:37: EXPONENT
                            {
                            mEXPONENT(); 


                            }
                            break;

                    }


                    }
                    break;
                case 2 :
                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:88:9: '.' ( '0' .. '9' )+ ( EXPONENT )?
                    {
                    match('.'); 

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:88:13: ( '0' .. '9' )+
                    int cnt9=0;
                    loop9:
                    do {
                        int alt9=2;
                        int LA9_0 = input.LA(1);

                        if ( ((LA9_0 >= '0' && LA9_0 <= '9')) ) {
                            alt9=1;
                        }


                        switch (alt9) {
                    	case 1 :
                    	    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:
                    	    {
                    	    if ( (input.LA(1) >= '0' && input.LA(1) <= '9') ) {
                    	        input.consume();
                    	    }
                    	    else {
                    	        MismatchedSetException mse = new MismatchedSetException(null,input);
                    	        recover(mse);
                    	        throw mse;
                    	    }


                    	    }
                    	    break;

                    	default :
                    	    if ( cnt9 >= 1 ) break loop9;
                                EarlyExitException eee =
                                    new EarlyExitException(9, input);
                                throw eee;
                        }
                        cnt9++;
                    } while (true);


                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:88:25: ( EXPONENT )?
                    int alt10=2;
                    int LA10_0 = input.LA(1);

                    if ( (LA10_0=='E'||LA10_0=='e') ) {
                        alt10=1;
                    }
                    switch (alt10) {
                        case 1 :
                            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:88:25: EXPONENT
                            {
                            mEXPONENT(); 


                            }
                            break;

                    }


                    }
                    break;
                case 3 :
                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:89:9: ( '0' .. '9' )+ EXPONENT
                    {
                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:89:9: ( '0' .. '9' )+
                    int cnt11=0;
                    loop11:
                    do {
                        int alt11=2;
                        int LA11_0 = input.LA(1);

                        if ( ((LA11_0 >= '0' && LA11_0 <= '9')) ) {
                            alt11=1;
                        }


                        switch (alt11) {
                    	case 1 :
                    	    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:
                    	    {
                    	    if ( (input.LA(1) >= '0' && input.LA(1) <= '9') ) {
                    	        input.consume();
                    	    }
                    	    else {
                    	        MismatchedSetException mse = new MismatchedSetException(null,input);
                    	        recover(mse);
                    	        throw mse;
                    	    }


                    	    }
                    	    break;

                    	default :
                    	    if ( cnt11 >= 1 ) break loop11;
                                EarlyExitException eee =
                                    new EarlyExitException(11, input);
                                throw eee;
                        }
                        cnt11++;
                    } while (true);


                    mEXPONENT(); 


                    }
                    break;

            }
            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "FLOAT"

    // $ANTLR start "WS"
    public final void mWS() throws RecognitionException {
        try {
            int _type = WS;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:92:5: ( ( ' ' | '\\t' | '\\r' | '\\n' ) )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:92:9: ( ' ' | '\\t' | '\\r' | '\\n' )
            {
            if ( (input.LA(1) >= '\t' && input.LA(1) <= '\n')||input.LA(1)=='\r'||input.LA(1)==' ' ) {
                input.consume();
            }
            else {
                MismatchedSetException mse = new MismatchedSetException(null,input);
                recover(mse);
                throw mse;
            }


            _channel=HIDDEN;

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "WS"

    // $ANTLR start "STRING"
    public final void mSTRING() throws RecognitionException {
        try {
            int _type = STRING;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:100:5: ( '\"' ( ESC_SEQ |~ ( '\\\\' | '\"' ) )* '\"' )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:100:8: '\"' ( ESC_SEQ |~ ( '\\\\' | '\"' ) )* '\"'
            {
            match('\"'); 

            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:100:12: ( ESC_SEQ |~ ( '\\\\' | '\"' ) )*
            loop13:
            do {
                int alt13=3;
                int LA13_0 = input.LA(1);

                if ( (LA13_0=='\\') ) {
                    alt13=1;
                }
                else if ( ((LA13_0 >= '\u0000' && LA13_0 <= '!')||(LA13_0 >= '#' && LA13_0 <= '[')||(LA13_0 >= ']' && LA13_0 <= '\uFFFF')) ) {
                    alt13=2;
                }


                switch (alt13) {
            	case 1 :
            	    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:100:14: ESC_SEQ
            	    {
            	    mESC_SEQ(); 


            	    }
            	    break;
            	case 2 :
            	    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:100:24: ~ ( '\\\\' | '\"' )
            	    {
            	    if ( (input.LA(1) >= '\u0000' && input.LA(1) <= '!')||(input.LA(1) >= '#' && input.LA(1) <= '[')||(input.LA(1) >= ']' && input.LA(1) <= '\uFFFF') ) {
            	        input.consume();
            	    }
            	    else {
            	        MismatchedSetException mse = new MismatchedSetException(null,input);
            	        recover(mse);
            	        throw mse;
            	    }


            	    }
            	    break;

            	default :
            	    break loop13;
                }
            } while (true);


            match('\"'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "STRING"

    // $ANTLR start "EXPONENT"
    public final void mEXPONENT() throws RecognitionException {
        try {
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:105:10: ( ( 'e' | 'E' ) ( '+' | '-' )? ( '0' .. '9' )+ )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:105:12: ( 'e' | 'E' ) ( '+' | '-' )? ( '0' .. '9' )+
            {
            if ( input.LA(1)=='E'||input.LA(1)=='e' ) {
                input.consume();
            }
            else {
                MismatchedSetException mse = new MismatchedSetException(null,input);
                recover(mse);
                throw mse;
            }


            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:105:22: ( '+' | '-' )?
            int alt14=2;
            int LA14_0 = input.LA(1);

            if ( (LA14_0=='+'||LA14_0=='-') ) {
                alt14=1;
            }
            switch (alt14) {
                case 1 :
                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:
                    {
                    if ( input.LA(1)=='+'||input.LA(1)=='-' ) {
                        input.consume();
                    }
                    else {
                        MismatchedSetException mse = new MismatchedSetException(null,input);
                        recover(mse);
                        throw mse;
                    }


                    }
                    break;

            }


            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:105:33: ( '0' .. '9' )+
            int cnt15=0;
            loop15:
            do {
                int alt15=2;
                int LA15_0 = input.LA(1);

                if ( ((LA15_0 >= '0' && LA15_0 <= '9')) ) {
                    alt15=1;
                }


                switch (alt15) {
            	case 1 :
            	    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:
            	    {
            	    if ( (input.LA(1) >= '0' && input.LA(1) <= '9') ) {
            	        input.consume();
            	    }
            	    else {
            	        MismatchedSetException mse = new MismatchedSetException(null,input);
            	        recover(mse);
            	        throw mse;
            	    }


            	    }
            	    break;

            	default :
            	    if ( cnt15 >= 1 ) break loop15;
                        EarlyExitException eee =
                            new EarlyExitException(15, input);
                        throw eee;
                }
                cnt15++;
            } while (true);


            }


        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "EXPONENT"

    // $ANTLR start "HEX_DIGIT"
    public final void mHEX_DIGIT() throws RecognitionException {
        try {
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:108:11: ( ( '0' .. '9' | 'a' .. 'f' | 'A' .. 'F' ) )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:
            {
            if ( (input.LA(1) >= '0' && input.LA(1) <= '9')||(input.LA(1) >= 'A' && input.LA(1) <= 'F')||(input.LA(1) >= 'a' && input.LA(1) <= 'f') ) {
                input.consume();
            }
            else {
                MismatchedSetException mse = new MismatchedSetException(null,input);
                recover(mse);
                throw mse;
            }


            }


        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "HEX_DIGIT"

    // $ANTLR start "ESC_SEQ"
    public final void mESC_SEQ() throws RecognitionException {
        try {
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:112:5: ( '\\\\' ( 'b' | 't' | 'n' | 'f' | 'r' | '\\\"' | '\\'' | '\\\\' ) | UNICODE_ESC | OCTAL_ESC )
            int alt16=3;
            int LA16_0 = input.LA(1);

            if ( (LA16_0=='\\') ) {
                switch ( input.LA(2) ) {
                case '\"':
                case '\'':
                case '\\':
                case 'b':
                case 'f':
                case 'n':
                case 'r':
                case 't':
                    {
                    alt16=1;
                    }
                    break;
                case 'u':
                    {
                    alt16=2;
                    }
                    break;
                case '0':
                case '1':
                case '2':
                case '3':
                case '4':
                case '5':
                case '6':
                case '7':
                    {
                    alt16=3;
                    }
                    break;
                default:
                    NoViableAltException nvae =
                        new NoViableAltException("", 16, 1, input);

                    throw nvae;

                }

            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 16, 0, input);

                throw nvae;

            }
            switch (alt16) {
                case 1 :
                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:112:9: '\\\\' ( 'b' | 't' | 'n' | 'f' | 'r' | '\\\"' | '\\'' | '\\\\' )
                    {
                    match('\\'); 

                    if ( input.LA(1)=='\"'||input.LA(1)=='\''||input.LA(1)=='\\'||input.LA(1)=='b'||input.LA(1)=='f'||input.LA(1)=='n'||input.LA(1)=='r'||input.LA(1)=='t' ) {
                        input.consume();
                    }
                    else {
                        MismatchedSetException mse = new MismatchedSetException(null,input);
                        recover(mse);
                        throw mse;
                    }


                    }
                    break;
                case 2 :
                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:113:9: UNICODE_ESC
                    {
                    mUNICODE_ESC(); 


                    }
                    break;
                case 3 :
                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:114:9: OCTAL_ESC
                    {
                    mOCTAL_ESC(); 


                    }
                    break;

            }

        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "ESC_SEQ"

    // $ANTLR start "OCTAL_ESC"
    public final void mOCTAL_ESC() throws RecognitionException {
        try {
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:119:5: ( '\\\\' ( '0' .. '3' ) ( '0' .. '7' ) ( '0' .. '7' ) | '\\\\' ( '0' .. '7' ) ( '0' .. '7' ) | '\\\\' ( '0' .. '7' ) )
            int alt17=3;
            int LA17_0 = input.LA(1);

            if ( (LA17_0=='\\') ) {
                int LA17_1 = input.LA(2);

                if ( ((LA17_1 >= '0' && LA17_1 <= '3')) ) {
                    int LA17_2 = input.LA(3);

                    if ( ((LA17_2 >= '0' && LA17_2 <= '7')) ) {
                        int LA17_4 = input.LA(4);

                        if ( ((LA17_4 >= '0' && LA17_4 <= '7')) ) {
                            alt17=1;
                        }
                        else {
                            alt17=2;
                        }
                    }
                    else {
                        alt17=3;
                    }
                }
                else if ( ((LA17_1 >= '4' && LA17_1 <= '7')) ) {
                    int LA17_3 = input.LA(3);

                    if ( ((LA17_3 >= '0' && LA17_3 <= '7')) ) {
                        alt17=2;
                    }
                    else {
                        alt17=3;
                    }
                }
                else {
                    NoViableAltException nvae =
                        new NoViableAltException("", 17, 1, input);

                    throw nvae;

                }
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 17, 0, input);

                throw nvae;

            }
            switch (alt17) {
                case 1 :
                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:119:9: '\\\\' ( '0' .. '3' ) ( '0' .. '7' ) ( '0' .. '7' )
                    {
                    match('\\'); 

                    if ( (input.LA(1) >= '0' && input.LA(1) <= '3') ) {
                        input.consume();
                    }
                    else {
                        MismatchedSetException mse = new MismatchedSetException(null,input);
                        recover(mse);
                        throw mse;
                    }


                    if ( (input.LA(1) >= '0' && input.LA(1) <= '7') ) {
                        input.consume();
                    }
                    else {
                        MismatchedSetException mse = new MismatchedSetException(null,input);
                        recover(mse);
                        throw mse;
                    }


                    if ( (input.LA(1) >= '0' && input.LA(1) <= '7') ) {
                        input.consume();
                    }
                    else {
                        MismatchedSetException mse = new MismatchedSetException(null,input);
                        recover(mse);
                        throw mse;
                    }


                    }
                    break;
                case 2 :
                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:120:9: '\\\\' ( '0' .. '7' ) ( '0' .. '7' )
                    {
                    match('\\'); 

                    if ( (input.LA(1) >= '0' && input.LA(1) <= '7') ) {
                        input.consume();
                    }
                    else {
                        MismatchedSetException mse = new MismatchedSetException(null,input);
                        recover(mse);
                        throw mse;
                    }


                    if ( (input.LA(1) >= '0' && input.LA(1) <= '7') ) {
                        input.consume();
                    }
                    else {
                        MismatchedSetException mse = new MismatchedSetException(null,input);
                        recover(mse);
                        throw mse;
                    }


                    }
                    break;
                case 3 :
                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:121:9: '\\\\' ( '0' .. '7' )
                    {
                    match('\\'); 

                    if ( (input.LA(1) >= '0' && input.LA(1) <= '7') ) {
                        input.consume();
                    }
                    else {
                        MismatchedSetException mse = new MismatchedSetException(null,input);
                        recover(mse);
                        throw mse;
                    }


                    }
                    break;

            }

        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "OCTAL_ESC"

    // $ANTLR start "UNICODE_ESC"
    public final void mUNICODE_ESC() throws RecognitionException {
        try {
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:126:5: ( '\\\\' 'u' HEX_DIGIT HEX_DIGIT HEX_DIGIT HEX_DIGIT )
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:126:9: '\\\\' 'u' HEX_DIGIT HEX_DIGIT HEX_DIGIT HEX_DIGIT
            {
            match('\\'); 

            match('u'); 

            mHEX_DIGIT(); 


            mHEX_DIGIT(); 


            mHEX_DIGIT(); 


            mHEX_DIGIT(); 


            }


        }
        finally {
        	// do for sure before leaving
        }
    }
    // $ANTLR end "UNICODE_ESC"

    public void mTokens() throws RecognitionException {
        // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:8: ( T__19 | T__20 | T__21 | T__22 | T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | T__45 | T__46 | T__47 | MULTIPLICATIONDIVISIONOPERATORS | ADDITIONSUBSTRACTIONOPERATORS | BINARYOPERATORS | COMPARITIONOPERATORS | IDENTIFIER | ARRAYIDENTIFIER | INTEGER | FLOAT | WS | STRING )
        int alt18=39;
        alt18 = dfa18.predict(input);
        switch (alt18) {
            case 1 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:10: T__19
                {
                mT__19(); 


                }
                break;
            case 2 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:16: T__20
                {
                mT__20(); 


                }
                break;
            case 3 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:22: T__21
                {
                mT__21(); 


                }
                break;
            case 4 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:28: T__22
                {
                mT__22(); 


                }
                break;
            case 5 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:34: T__23
                {
                mT__23(); 


                }
                break;
            case 6 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:40: T__24
                {
                mT__24(); 


                }
                break;
            case 7 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:46: T__25
                {
                mT__25(); 


                }
                break;
            case 8 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:52: T__26
                {
                mT__26(); 


                }
                break;
            case 9 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:58: T__27
                {
                mT__27(); 


                }
                break;
            case 10 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:64: T__28
                {
                mT__28(); 


                }
                break;
            case 11 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:70: T__29
                {
                mT__29(); 


                }
                break;
            case 12 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:76: T__30
                {
                mT__30(); 


                }
                break;
            case 13 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:82: T__31
                {
                mT__31(); 


                }
                break;
            case 14 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:88: T__32
                {
                mT__32(); 


                }
                break;
            case 15 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:94: T__33
                {
                mT__33(); 


                }
                break;
            case 16 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:100: T__34
                {
                mT__34(); 


                }
                break;
            case 17 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:106: T__35
                {
                mT__35(); 


                }
                break;
            case 18 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:112: T__36
                {
                mT__36(); 


                }
                break;
            case 19 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:118: T__37
                {
                mT__37(); 


                }
                break;
            case 20 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:124: T__38
                {
                mT__38(); 


                }
                break;
            case 21 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:130: T__39
                {
                mT__39(); 


                }
                break;
            case 22 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:136: T__40
                {
                mT__40(); 


                }
                break;
            case 23 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:142: T__41
                {
                mT__41(); 


                }
                break;
            case 24 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:148: T__42
                {
                mT__42(); 


                }
                break;
            case 25 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:154: T__43
                {
                mT__43(); 


                }
                break;
            case 26 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:160: T__44
                {
                mT__44(); 


                }
                break;
            case 27 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:166: T__45
                {
                mT__45(); 


                }
                break;
            case 28 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:172: T__46
                {
                mT__46(); 


                }
                break;
            case 29 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:178: T__47
                {
                mT__47(); 


                }
                break;
            case 30 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:184: MULTIPLICATIONDIVISIONOPERATORS
                {
                mMULTIPLICATIONDIVISIONOPERATORS(); 


                }
                break;
            case 31 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:216: ADDITIONSUBSTRACTIONOPERATORS
                {
                mADDITIONSUBSTRACTIONOPERATORS(); 


                }
                break;
            case 32 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:246: BINARYOPERATORS
                {
                mBINARYOPERATORS(); 


                }
                break;
            case 33 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:262: COMPARITIONOPERATORS
                {
                mCOMPARITIONOPERATORS(); 


                }
                break;
            case 34 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:283: IDENTIFIER
                {
                mIDENTIFIER(); 


                }
                break;
            case 35 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:294: ARRAYIDENTIFIER
                {
                mARRAYIDENTIFIER(); 


                }
                break;
            case 36 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:310: INTEGER
                {
                mINTEGER(); 


                }
                break;
            case 37 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:318: FLOAT
                {
                mFLOAT(); 


                }
                break;
            case 38 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:324: WS
                {
                mWS(); 


                }
                break;
            case 39 :
                // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:1:327: STRING
                {
                mSTRING(); 


                }
                break;

        }

    }


    protected DFA12 dfa12 = new DFA12(this);
    protected DFA18 dfa18 = new DFA18(this);
    static final String DFA12_eotS =
        "\5\uffff";
    static final String DFA12_eofS =
        "\5\uffff";
    static final String DFA12_minS =
        "\2\56\3\uffff";
    static final String DFA12_maxS =
        "\1\71\1\145\3\uffff";
    static final String DFA12_acceptS =
        "\2\uffff\1\2\1\1\1\3";
    static final String DFA12_specialS =
        "\5\uffff}>";
    static final String[] DFA12_transitionS = {
            "\1\2\1\uffff\12\1",
            "\1\3\1\uffff\12\1\13\uffff\1\4\37\uffff\1\4",
            "",
            "",
            ""
    };

    static final short[] DFA12_eot = DFA.unpackEncodedString(DFA12_eotS);
    static final short[] DFA12_eof = DFA.unpackEncodedString(DFA12_eofS);
    static final char[] DFA12_min = DFA.unpackEncodedStringToUnsignedChars(DFA12_minS);
    static final char[] DFA12_max = DFA.unpackEncodedStringToUnsignedChars(DFA12_maxS);
    static final short[] DFA12_accept = DFA.unpackEncodedString(DFA12_acceptS);
    static final short[] DFA12_special = DFA.unpackEncodedString(DFA12_specialS);
    static final short[][] DFA12_transition;

    static {
        int numStates = DFA12_transitionS.length;
        DFA12_transition = new short[numStates][];
        for (int i=0; i<numStates; i++) {
            DFA12_transition[i] = DFA.unpackEncodedString(DFA12_transitionS[i]);
        }
    }

    class DFA12 extends DFA {

        public DFA12(BaseRecognizer recognizer) {
            this.recognizer = recognizer;
            this.decisionNumber = 12;
            this.eot = DFA12_eot;
            this.eof = DFA12_eof;
            this.min = DFA12_min;
            this.max = DFA12_max;
            this.accept = DFA12_accept;
            this.special = DFA12_special;
            this.transition = DFA12_transition;
        }
        public String getDescription() {
            return "86:1: FLOAT : ( ( '0' .. '9' )+ '.' ( '0' .. '9' )* ( EXPONENT )? | '.' ( '0' .. '9' )+ ( EXPONENT )? | ( '0' .. '9' )+ EXPONENT );";
        }
    }
    static final String DFA18_eotS =
        "\1\uffff\1\41\3\uffff\1\42\4\uffff\15\46\6\uffff\1\46\1\70\5\uffff"+
        "\2\46\2\uffff\5\46\1\77\12\46\1\uffff\6\46\1\uffff\1\121\1\46\1"+
        "\123\10\46\1\134\1\46\1\136\3\46\1\uffff\1\142\1\uffff\3\46\1\146"+
        "\1\147\1\150\2\46\1\uffff\1\153\1\uffff\1\154\1\155\1\156\1\uffff"+
        "\1\157\2\46\3\uffff\1\162\1\46\5\uffff\1\164\1\165\1\uffff\1\166"+
        "\3\uffff";
    static final String DFA18_eofS =
        "\167\uffff";
    static final String DFA18_minS =
        "\1\11\1\75\3\uffff\1\60\4\uffff\15\60\6\uffff\1\60\1\56\5\uffff"+
        "\2\60\2\uffff\20\60\1\uffff\6\60\1\uffff\21\60\1\uffff\1\60\1\uffff"+
        "\10\60\1\uffff\1\60\1\uffff\3\60\1\uffff\3\60\3\uffff\2\60\5\uffff"+
        "\2\60\1\uffff\1\60\3\uffff";
    static final String DFA18_maxS =
        "\1\175\1\75\3\uffff\1\71\4\uffff\15\172\6\uffff\1\172\1\145\5\uffff"+
        "\2\172\2\uffff\20\172\1\uffff\6\172\1\uffff\21\172\1\uffff\1\172"+
        "\1\uffff\10\172\1\uffff\1\172\1\uffff\3\172\1\uffff\3\172\3\uffff"+
        "\2\172\5\uffff\2\172\1\uffff\1\172\3\uffff";
    static final String DFA18_acceptS =
        "\2\uffff\1\2\1\3\1\4\1\uffff\1\6\1\7\1\10\1\11\15\uffff\1\34\1\35"+
        "\1\36\1\37\1\40\1\41\2\uffff\1\46\1\47\1\1\1\5\1\45\2\uffff\1\42"+
        "\1\43\20\uffff\1\44\6\uffff\1\21\21\uffff\1\22\1\uffff\1\24\10\uffff"+
        "\1\13\1\uffff\1\15\3\uffff\1\23\3\uffff\1\30\1\31\1\32\2\uffff\1"+
        "\14\1\16\1\17\1\20\1\25\2\uffff\1\33\1\uffff\1\26\1\27\1\12";
    static final String DFA18_specialS =
        "\167\uffff}>";
    static final String[] DFA18_transitionS = {
            "\2\37\2\uffff\1\37\22\uffff\1\37\1\1\1\40\3\uffff\1\33\1\uffff"+
            "\1\2\1\3\1\31\1\32\1\4\1\32\1\5\1\31\12\36\1\uffff\1\6\1\34"+
            "\1\7\1\34\2\uffff\32\35\1\10\1\uffff\1\11\1\uffff\1\35\1\uffff"+
            "\1\35\1\12\1\13\1\35\1\14\1\15\2\35\1\16\3\35\1\17\1\20\1\35"+
            "\1\21\1\35\1\22\1\23\1\24\1\35\1\25\1\26\3\35\1\27\1\33\1\30",
            "\1\34",
            "",
            "",
            "",
            "\12\43",
            "",
            "",
            "",
            "",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\16\45\1\44\13"+
            "\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\7\45\1\50\3"+
            "\45\1\51\16\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\13\45\1\52\16"+
            "\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\1\53\12\45\1"+
            "\54\16\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\5\45\1\55\7"+
            "\45\1\56\14\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\1\57\31\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\4\45\1\60\25"+
            "\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\21\45\1\61\10"+
            "\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\4\45\1\62\25"+
            "\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\23\45\1\63\6"+
            "\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\7\45\1\64\11"+
            "\45\1\65\10\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\16\45\1\66\13"+
            "\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\7\45\1\67\22"+
            "\45",
            "",
            "",
            "",
            "",
            "",
            "",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\32\45",
            "\1\43\1\uffff\12\36\13\uffff\1\43\37\uffff\1\43",
            "",
            "",
            "",
            "",
            "",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\16\45\1\71\13"+
            "\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\32\45",
            "",
            "",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\1\72\31\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\1\73\31\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\22\45\1\74\7"+
            "\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\13\45\1\75\16"+
            "\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\16\45\1\76\13"+
            "\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\32\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\23\45\1\100"+
            "\6\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\10\45\1\101"+
            "\21\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\26\45\1\102"+
            "\3\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\10\45\1\103"+
            "\21\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\23\45\1\104"+
            "\6\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\1\105\31\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\10\45\1\106"+
            "\21\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\24\45\1\107"+
            "\5\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\10\45\1\110"+
            "\21\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\10\45\1\111"+
            "\21\45",
            "",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\13\45\1\112"+
            "\16\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\21\45\1\113"+
            "\10\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\22\45\1\114"+
            "\7\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\4\45\1\115\3"+
            "\45\1\116\21\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\22\45\1\117"+
            "\7\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\1\120\31\45",
            "",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\32\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\15\45\1\122"+
            "\14\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\32\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\15\45\1\124"+
            "\14\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\24\45\1\125"+
            "\5\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\23\45\1\126"+
            "\6\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\22\45\1\127"+
            "\7\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\4\45\1\130\25"+
            "\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\3\45\1\131\26"+
            "\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\13\45\1\132"+
            "\16\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\4\45\1\133\25"+
            "\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\32\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\22\45\1\135"+
            "\7\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\32\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\5\45\1\137\24"+
            "\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\4\45\1\140\25"+
            "\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\23\45\1\141"+
            "\6\45",
            "",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\32\45",
            "",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\23\45\1\143"+
            "\6\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\21\45\1\144"+
            "\10\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\10\45\1\145"+
            "\21\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\32\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\32\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\32\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\4\45\1\151\25"+
            "\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\1\152\31\45",
            "",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\32\45",
            "",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\32\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\32\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\32\45",
            "",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\32\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\15\45\1\160"+
            "\14\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\2\45\1\161\27"+
            "\45",
            "",
            "",
            "",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\32\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\15\45\1\163"+
            "\14\45",
            "",
            "",
            "",
            "",
            "",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\32\45",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\32\45",
            "",
            "\12\45\7\uffff\32\45\1\47\3\uffff\1\45\1\uffff\32\45",
            "",
            "",
            ""
    };

    static final short[] DFA18_eot = DFA.unpackEncodedString(DFA18_eotS);
    static final short[] DFA18_eof = DFA.unpackEncodedString(DFA18_eofS);
    static final char[] DFA18_min = DFA.unpackEncodedStringToUnsignedChars(DFA18_minS);
    static final char[] DFA18_max = DFA.unpackEncodedStringToUnsignedChars(DFA18_maxS);
    static final short[] DFA18_accept = DFA.unpackEncodedString(DFA18_acceptS);
    static final short[] DFA18_special = DFA.unpackEncodedString(DFA18_specialS);
    static final short[][] DFA18_transition;

    static {
        int numStates = DFA18_transitionS.length;
        DFA18_transition = new short[numStates][];
        for (int i=0; i<numStates; i++) {
            DFA18_transition[i] = DFA.unpackEncodedString(DFA18_transitionS[i]);
        }
    }

    class DFA18 extends DFA {

        public DFA18(BaseRecognizer recognizer) {
            this.recognizer = recognizer;
            this.decisionNumber = 18;
            this.eot = DFA18_eot;
            this.eof = DFA18_eof;
            this.min = DFA18_min;
            this.max = DFA18_max;
            this.accept = DFA18_accept;
            this.special = DFA18_special;
            this.transition = DFA18_transition;
        }
        public String getDescription() {
            return "1:1: Tokens : ( T__19 | T__20 | T__21 | T__22 | T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | T__45 | T__46 | T__47 | MULTIPLICATIONDIVISIONOPERATORS | ADDITIONSUBSTRACTIONOPERATORS | BINARYOPERATORS | COMPARITIONOPERATORS | IDENTIFIER | ARRAYIDENTIFIER | INTEGER | FLOAT | WS | STRING );";
        }
    }
 

}