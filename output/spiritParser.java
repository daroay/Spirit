// $ANTLR 3.4 /home/mamsaac/Desktop/David/spirit.g 2012-03-08 16:16:18

import org.antlr.runtime.*;
import java.util.Stack;
import java.util.List;
import java.util.ArrayList;

import org.antlr.runtime.debug.*;
import java.io.IOException;
@SuppressWarnings({"all", "warnings", "unchecked"})
public class spiritParser extends DebugParser {
    public static final String[] tokenNames = new String[] {
        "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ADDITIONSUBSTRACTIONOPERATORS", "ARRAYIDENTIFIER", "BINARYOPERATORS", "CHAR", "COMPARITIONOPERATORS", "ESC_SEQ", "EXPONENT", "FLOAT", "HEX_DIGIT", "IDENTIFIER", "INTEGER", "MULTIPLICATIONDIVISIONOPERATORS", "OCTAL_ESC", "STRING", "UNICODE_ESC", "WS", "'('", "')'", "','", "'.'", "';'", "'='", "'Main'", "'['", "']'", "'boolean'", "'char'", "'class'", "'else'", "'elsif'", "'extends'", "'float'", "'if'", "'int'", "'main'", "'method'", "'new'", "'print'", "'readchar'", "'readdouble'", "'readint'", "'return'", "'this'", "'void'", "'while'", "'{'", "'}'"
    };

    public static final int EOF=-1;
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
    public static final int T__48=48;
    public static final int T__49=49;
    public static final int T__50=50;
    public static final int ADDITIONSUBSTRACTIONOPERATORS=4;
    public static final int ARRAYIDENTIFIER=5;
    public static final int BINARYOPERATORS=6;
    public static final int CHAR=7;
    public static final int COMPARITIONOPERATORS=8;
    public static final int ESC_SEQ=9;
    public static final int EXPONENT=10;
    public static final int FLOAT=11;
    public static final int HEX_DIGIT=12;
    public static final int IDENTIFIER=13;
    public static final int INTEGER=14;
    public static final int MULTIPLICATIONDIVISIONOPERATORS=15;
    public static final int OCTAL_ESC=16;
    public static final int STRING=17;
    public static final int UNICODE_ESC=18;
    public static final int WS=19;

    // delegates
    public Parser[] getDelegates() {
        return new Parser[] {};
    }

    // delegators


public static final String[] ruleNames = new String[] {
    "invalidRule", "parameters", "arrayaccess", "goal", "conditional", "statement", 
    "rhsassignment", "term", "assignment", "returnstmt", "mainclass", "classdeclaration", 
    "arraytype", "loop", "inherits", "print", "lhsassignment", "invocation", 
    "read", "methoddeclaration", "arguments", "expression", "exp", "classtype", 
    "factor", "vardeclaration", "type", "primitivetype", "methodmain"
};

public static final boolean[] decisionCanBacktrack = new boolean[] {
    false, // invalid decision
    false, false, false, false, false, false, false, false, false, false, 
        false, false, false, false, false, false, false, false, false, false, 
        false, false, false, false, false, false, false, false, false, false
};

 
    public int ruleLevel = 0;
    public int getRuleLevel() { return ruleLevel; }
    public void incRuleLevel() { ruleLevel++; }
    public void decRuleLevel() { ruleLevel--; }
    public spiritParser(TokenStream input) {
        this(input, DebugEventSocketProxy.DEFAULT_DEBUGGER_PORT, new RecognizerSharedState());
    }
    public spiritParser(TokenStream input, int port, RecognizerSharedState state) {
        super(input, state);
        DebugEventSocketProxy proxy =
            new DebugEventSocketProxy(this, port, null);

        setDebugListener(proxy);
        try {
            proxy.handshake();
        }
        catch (IOException ioe) {
            reportError(ioe);
        }
    }

public spiritParser(TokenStream input, DebugEventListener dbg) {
    super(input, dbg, new RecognizerSharedState());
}

protected boolean evalPredicate(boolean result, String predicate) {
    dbg.semanticPredicate(result, predicate);
    return result;
}

    public String[] getTokenNames() { return spiritParser.tokenNames; }
    public String getGrammarFileName() { return "/home/mamsaac/Desktop/David/spirit.g"; }



    // $ANTLR start "goal"
    // /home/mamsaac/Desktop/David/spirit.g:3:1: goal : ( classdeclaration )* mainclass ;
    public final void goal() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "goal");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(3, 0);

        try {
            // /home/mamsaac/Desktop/David/spirit.g:4:2: ( ( classdeclaration )* mainclass )
            dbg.enterAlt(1);

            // /home/mamsaac/Desktop/David/spirit.g:4:4: ( classdeclaration )* mainclass
            {
            dbg.location(4,4);
            // /home/mamsaac/Desktop/David/spirit.g:4:4: ( classdeclaration )*
            try { dbg.enterSubRule(1);

            loop1:
            do {
                int alt1=2;
                try { dbg.enterDecision(1, decisionCanBacktrack[1]);

                int LA1_0 = input.LA(1);

                if ( (LA1_0==31) ) {
                    int LA1_1 = input.LA(2);

                    if ( (LA1_1==IDENTIFIER) ) {
                        alt1=1;
                    }


                }


                } finally {dbg.exitDecision(1);}

                switch (alt1) {
            	case 1 :
            	    dbg.enterAlt(1);

            	    // /home/mamsaac/Desktop/David/spirit.g:4:4: classdeclaration
            	    {
            	    dbg.location(4,4);
            	    pushFollow(FOLLOW_classdeclaration_in_goal26);
            	    classdeclaration();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop1;
                }
            } while (true);
            } finally {dbg.exitSubRule(1);}

            dbg.location(4,22);
            pushFollow(FOLLOW_mainclass_in_goal29);
            mainclass();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(4, 30);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "goal");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "goal"



    // $ANTLR start "mainclass"
    // /home/mamsaac/Desktop/David/spirit.g:6:1: mainclass : 'class' 'Main' '{' ( vardeclaration )* ( methoddeclaration )* methodmain '}' ;
    public final void mainclass() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "mainclass");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(6, 0);

        try {
            // /home/mamsaac/Desktop/David/spirit.g:7:2: ( 'class' 'Main' '{' ( vardeclaration )* ( methoddeclaration )* methodmain '}' )
            dbg.enterAlt(1);

            // /home/mamsaac/Desktop/David/spirit.g:7:4: 'class' 'Main' '{' ( vardeclaration )* ( methoddeclaration )* methodmain '}'
            {
            dbg.location(7,4);
            match(input,31,FOLLOW_31_in_mainclass39); 
            dbg.location(7,12);
            match(input,26,FOLLOW_26_in_mainclass41); 
            dbg.location(7,19);
            match(input,49,FOLLOW_49_in_mainclass43); 
            dbg.location(7,23);
            // /home/mamsaac/Desktop/David/spirit.g:7:23: ( vardeclaration )*
            try { dbg.enterSubRule(2);

            loop2:
            do {
                int alt2=2;
                try { dbg.enterDecision(2, decisionCanBacktrack[2]);

                int LA2_0 = input.LA(1);

                if ( (LA2_0==IDENTIFIER||(LA2_0 >= 29 && LA2_0 <= 30)||LA2_0==35||LA2_0==37) ) {
                    alt2=1;
                }


                } finally {dbg.exitDecision(2);}

                switch (alt2) {
            	case 1 :
            	    dbg.enterAlt(1);

            	    // /home/mamsaac/Desktop/David/spirit.g:7:23: vardeclaration
            	    {
            	    dbg.location(7,23);
            	    pushFollow(FOLLOW_vardeclaration_in_mainclass45);
            	    vardeclaration();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop2;
                }
            } while (true);
            } finally {dbg.exitSubRule(2);}

            dbg.location(7,39);
            // /home/mamsaac/Desktop/David/spirit.g:7:39: ( methoddeclaration )*
            try { dbg.enterSubRule(3);

            loop3:
            do {
                int alt3=2;
                try { dbg.enterDecision(3, decisionCanBacktrack[3]);

                int LA3_0 = input.LA(1);

                if ( (LA3_0==39) ) {
                    int LA3_1 = input.LA(2);

                    if ( (LA3_1==47) ) {
                        int LA3_2 = input.LA(3);

                        if ( (LA3_2==IDENTIFIER) ) {
                            alt3=1;
                        }


                    }
                    else if ( (LA3_1==IDENTIFIER||(LA3_1 >= 29 && LA3_1 <= 30)||LA3_1==35||LA3_1==37) ) {
                        alt3=1;
                    }


                }


                } finally {dbg.exitDecision(3);}

                switch (alt3) {
            	case 1 :
            	    dbg.enterAlt(1);

            	    // /home/mamsaac/Desktop/David/spirit.g:7:39: methoddeclaration
            	    {
            	    dbg.location(7,39);
            	    pushFollow(FOLLOW_methoddeclaration_in_mainclass48);
            	    methoddeclaration();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop3;
                }
            } while (true);
            } finally {dbg.exitSubRule(3);}

            dbg.location(7,58);
            pushFollow(FOLLOW_methodmain_in_mainclass51);
            methodmain();

            state._fsp--;

            dbg.location(7,69);
            match(input,50,FOLLOW_50_in_mainclass53); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(7, 71);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "mainclass");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "mainclass"



    // $ANTLR start "methodmain"
    // /home/mamsaac/Desktop/David/spirit.g:9:1: methodmain : 'method' 'void' 'main' '(' ')' '{' ( vardeclaration )* ( statement )* '}' ;
    public final void methodmain() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "methodmain");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(9, 0);

        try {
            // /home/mamsaac/Desktop/David/spirit.g:10:2: ( 'method' 'void' 'main' '(' ')' '{' ( vardeclaration )* ( statement )* '}' )
            dbg.enterAlt(1);

            // /home/mamsaac/Desktop/David/spirit.g:10:4: 'method' 'void' 'main' '(' ')' '{' ( vardeclaration )* ( statement )* '}'
            {
            dbg.location(10,4);
            match(input,39,FOLLOW_39_in_methodmain63); 
            dbg.location(10,13);
            match(input,47,FOLLOW_47_in_methodmain65); 
            dbg.location(10,20);
            match(input,38,FOLLOW_38_in_methodmain67); 
            dbg.location(10,27);
            match(input,20,FOLLOW_20_in_methodmain69); 
            dbg.location(10,31);
            match(input,21,FOLLOW_21_in_methodmain71); 
            dbg.location(10,35);
            match(input,49,FOLLOW_49_in_methodmain73); 
            dbg.location(10,39);
            // /home/mamsaac/Desktop/David/spirit.g:10:39: ( vardeclaration )*
            try { dbg.enterSubRule(4);

            loop4:
            do {
                int alt4=2;
                try { dbg.enterDecision(4, decisionCanBacktrack[4]);

                int LA4_0 = input.LA(1);

                if ( (LA4_0==IDENTIFIER) ) {
                    int LA4_1 = input.LA(2);

                    if ( (LA4_1==IDENTIFIER) ) {
                        alt4=1;
                    }


                }
                else if ( ((LA4_0 >= 29 && LA4_0 <= 30)||LA4_0==35||LA4_0==37) ) {
                    alt4=1;
                }


                } finally {dbg.exitDecision(4);}

                switch (alt4) {
            	case 1 :
            	    dbg.enterAlt(1);

            	    // /home/mamsaac/Desktop/David/spirit.g:10:39: vardeclaration
            	    {
            	    dbg.location(10,39);
            	    pushFollow(FOLLOW_vardeclaration_in_methodmain75);
            	    vardeclaration();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop4;
                }
            } while (true);
            } finally {dbg.exitSubRule(4);}

            dbg.location(10,55);
            // /home/mamsaac/Desktop/David/spirit.g:10:55: ( statement )*
            try { dbg.enterSubRule(5);

            loop5:
            do {
                int alt5=2;
                try { dbg.enterDecision(5, decisionCanBacktrack[5]);

                int LA5_0 = input.LA(1);

                if ( (LA5_0==IDENTIFIER||LA5_0==24||LA5_0==36||LA5_0==41||(LA5_0 >= 45 && LA5_0 <= 46)||LA5_0==48) ) {
                    alt5=1;
                }


                } finally {dbg.exitDecision(5);}

                switch (alt5) {
            	case 1 :
            	    dbg.enterAlt(1);

            	    // /home/mamsaac/Desktop/David/spirit.g:10:55: statement
            	    {
            	    dbg.location(10,55);
            	    pushFollow(FOLLOW_statement_in_methodmain78);
            	    statement();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop5;
                }
            } while (true);
            } finally {dbg.exitSubRule(5);}

            dbg.location(10,66);
            match(input,50,FOLLOW_50_in_methodmain81); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(10, 68);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "methodmain");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "methodmain"



    // $ANTLR start "classdeclaration"
    // /home/mamsaac/Desktop/David/spirit.g:12:1: classdeclaration : 'class' IDENTIFIER ( inherits )? '{' ( vardeclaration )* ( methoddeclaration )* '}' ;
    public final void classdeclaration() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "classdeclaration");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(12, 0);

        try {
            // /home/mamsaac/Desktop/David/spirit.g:13:2: ( 'class' IDENTIFIER ( inherits )? '{' ( vardeclaration )* ( methoddeclaration )* '}' )
            dbg.enterAlt(1);

            // /home/mamsaac/Desktop/David/spirit.g:13:5: 'class' IDENTIFIER ( inherits )? '{' ( vardeclaration )* ( methoddeclaration )* '}'
            {
            dbg.location(13,5);
            match(input,31,FOLLOW_31_in_classdeclaration93); 
            dbg.location(13,13);
            match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_classdeclaration95); 
            dbg.location(13,24);
            // /home/mamsaac/Desktop/David/spirit.g:13:24: ( inherits )?
            int alt6=2;
            try { dbg.enterSubRule(6);
            try { dbg.enterDecision(6, decisionCanBacktrack[6]);

            int LA6_0 = input.LA(1);

            if ( (LA6_0==34) ) {
                alt6=1;
            }
            } finally {dbg.exitDecision(6);}

            switch (alt6) {
                case 1 :
                    dbg.enterAlt(1);

                    // /home/mamsaac/Desktop/David/spirit.g:13:24: inherits
                    {
                    dbg.location(13,24);
                    pushFollow(FOLLOW_inherits_in_classdeclaration97);
                    inherits();

                    state._fsp--;


                    }
                    break;

            }
            } finally {dbg.exitSubRule(6);}

            dbg.location(13,35);
            match(input,49,FOLLOW_49_in_classdeclaration101); 
            dbg.location(13,39);
            // /home/mamsaac/Desktop/David/spirit.g:13:39: ( vardeclaration )*
            try { dbg.enterSubRule(7);

            loop7:
            do {
                int alt7=2;
                try { dbg.enterDecision(7, decisionCanBacktrack[7]);

                int LA7_0 = input.LA(1);

                if ( (LA7_0==IDENTIFIER||(LA7_0 >= 29 && LA7_0 <= 30)||LA7_0==35||LA7_0==37) ) {
                    alt7=1;
                }


                } finally {dbg.exitDecision(7);}

                switch (alt7) {
            	case 1 :
            	    dbg.enterAlt(1);

            	    // /home/mamsaac/Desktop/David/spirit.g:13:39: vardeclaration
            	    {
            	    dbg.location(13,39);
            	    pushFollow(FOLLOW_vardeclaration_in_classdeclaration103);
            	    vardeclaration();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop7;
                }
            } while (true);
            } finally {dbg.exitSubRule(7);}

            dbg.location(13,55);
            // /home/mamsaac/Desktop/David/spirit.g:13:55: ( methoddeclaration )*
            try { dbg.enterSubRule(8);

            loop8:
            do {
                int alt8=2;
                try { dbg.enterDecision(8, decisionCanBacktrack[8]);

                int LA8_0 = input.LA(1);

                if ( (LA8_0==39) ) {
                    alt8=1;
                }


                } finally {dbg.exitDecision(8);}

                switch (alt8) {
            	case 1 :
            	    dbg.enterAlt(1);

            	    // /home/mamsaac/Desktop/David/spirit.g:13:55: methoddeclaration
            	    {
            	    dbg.location(13,55);
            	    pushFollow(FOLLOW_methoddeclaration_in_classdeclaration106);
            	    methoddeclaration();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop8;
                }
            } while (true);
            } finally {dbg.exitSubRule(8);}

            dbg.location(13,74);
            match(input,50,FOLLOW_50_in_classdeclaration109); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(13, 76);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "classdeclaration");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "classdeclaration"



    // $ANTLR start "inherits"
    // /home/mamsaac/Desktop/David/spirit.g:15:1: inherits : 'extends' IDENTIFIER ;
    public final void inherits() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "inherits");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(15, 0);

        try {
            // /home/mamsaac/Desktop/David/spirit.g:16:2: ( 'extends' IDENTIFIER )
            dbg.enterAlt(1);

            // /home/mamsaac/Desktop/David/spirit.g:16:4: 'extends' IDENTIFIER
            {
            dbg.location(16,4);
            match(input,34,FOLLOW_34_in_inherits119); 
            dbg.location(16,14);
            match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_inherits121); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(16, 23);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "inherits");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "inherits"



    // $ANTLR start "vardeclaration"
    // /home/mamsaac/Desktop/David/spirit.g:18:1: vardeclaration : type IDENTIFIER ';' ;
    public final void vardeclaration() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "vardeclaration");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(18, 0);

        try {
            // /home/mamsaac/Desktop/David/spirit.g:19:2: ( type IDENTIFIER ';' )
            dbg.enterAlt(1);

            // /home/mamsaac/Desktop/David/spirit.g:19:4: type IDENTIFIER ';'
            {
            dbg.location(19,4);
            pushFollow(FOLLOW_type_in_vardeclaration130);
            type();

            state._fsp--;

            dbg.location(19,9);
            match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_vardeclaration132); 
            dbg.location(19,20);
            match(input,24,FOLLOW_24_in_vardeclaration134); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(19, 23);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "vardeclaration");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "vardeclaration"



    // $ANTLR start "methoddeclaration"
    // /home/mamsaac/Desktop/David/spirit.g:21:1: methoddeclaration : 'method' ( primitivetype | classtype | 'void' ) IDENTIFIER '(' ( parameters )? ')' '{' ( vardeclaration )* ( statement )* '}' ;
    public final void methoddeclaration() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "methoddeclaration");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(21, 0);

        try {
            // /home/mamsaac/Desktop/David/spirit.g:22:2: ( 'method' ( primitivetype | classtype | 'void' ) IDENTIFIER '(' ( parameters )? ')' '{' ( vardeclaration )* ( statement )* '}' )
            dbg.enterAlt(1);

            // /home/mamsaac/Desktop/David/spirit.g:22:5: 'method' ( primitivetype | classtype | 'void' ) IDENTIFIER '(' ( parameters )? ')' '{' ( vardeclaration )* ( statement )* '}'
            {
            dbg.location(22,5);
            match(input,39,FOLLOW_39_in_methoddeclaration147); 
            dbg.location(22,14);
            // /home/mamsaac/Desktop/David/spirit.g:22:14: ( primitivetype | classtype | 'void' )
            int alt9=3;
            try { dbg.enterSubRule(9);
            try { dbg.enterDecision(9, decisionCanBacktrack[9]);

            switch ( input.LA(1) ) {
            case 29:
            case 30:
            case 35:
            case 37:
                {
                alt9=1;
                }
                break;
            case IDENTIFIER:
                {
                alt9=2;
                }
                break;
            case 47:
                {
                alt9=3;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 9, 0, input);

                dbg.recognitionException(nvae);
                throw nvae;

            }

            } finally {dbg.exitDecision(9);}

            switch (alt9) {
                case 1 :
                    dbg.enterAlt(1);

                    // /home/mamsaac/Desktop/David/spirit.g:22:15: primitivetype
                    {
                    dbg.location(22,15);
                    pushFollow(FOLLOW_primitivetype_in_methoddeclaration150);
                    primitivetype();

                    state._fsp--;


                    }
                    break;
                case 2 :
                    dbg.enterAlt(2);

                    // /home/mamsaac/Desktop/David/spirit.g:22:31: classtype
                    {
                    dbg.location(22,31);
                    pushFollow(FOLLOW_classtype_in_methoddeclaration154);
                    classtype();

                    state._fsp--;


                    }
                    break;
                case 3 :
                    dbg.enterAlt(3);

                    // /home/mamsaac/Desktop/David/spirit.g:22:43: 'void'
                    {
                    dbg.location(22,43);
                    match(input,47,FOLLOW_47_in_methoddeclaration158); 

                    }
                    break;

            }
            } finally {dbg.exitSubRule(9);}

            dbg.location(22,51);
            match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_methoddeclaration161); 
            dbg.location(22,62);
            match(input,20,FOLLOW_20_in_methoddeclaration163); 
            dbg.location(22,66);
            // /home/mamsaac/Desktop/David/spirit.g:22:66: ( parameters )?
            int alt10=2;
            try { dbg.enterSubRule(10);
            try { dbg.enterDecision(10, decisionCanBacktrack[10]);

            int LA10_0 = input.LA(1);

            if ( (LA10_0==IDENTIFIER||(LA10_0 >= 29 && LA10_0 <= 30)||LA10_0==35||LA10_0==37) ) {
                alt10=1;
            }
            } finally {dbg.exitDecision(10);}

            switch (alt10) {
                case 1 :
                    dbg.enterAlt(1);

                    // /home/mamsaac/Desktop/David/spirit.g:22:66: parameters
                    {
                    dbg.location(22,66);
                    pushFollow(FOLLOW_parameters_in_methoddeclaration165);
                    parameters();

                    state._fsp--;


                    }
                    break;

            }
            } finally {dbg.exitSubRule(10);}

            dbg.location(22,78);
            match(input,21,FOLLOW_21_in_methoddeclaration168); 
            dbg.location(22,82);
            match(input,49,FOLLOW_49_in_methoddeclaration170); 
            dbg.location(22,86);
            // /home/mamsaac/Desktop/David/spirit.g:22:86: ( vardeclaration )*
            try { dbg.enterSubRule(11);

            loop11:
            do {
                int alt11=2;
                try { dbg.enterDecision(11, decisionCanBacktrack[11]);

                int LA11_0 = input.LA(1);

                if ( (LA11_0==IDENTIFIER) ) {
                    int LA11_1 = input.LA(2);

                    if ( (LA11_1==IDENTIFIER) ) {
                        alt11=1;
                    }


                }
                else if ( ((LA11_0 >= 29 && LA11_0 <= 30)||LA11_0==35||LA11_0==37) ) {
                    alt11=1;
                }


                } finally {dbg.exitDecision(11);}

                switch (alt11) {
            	case 1 :
            	    dbg.enterAlt(1);

            	    // /home/mamsaac/Desktop/David/spirit.g:22:86: vardeclaration
            	    {
            	    dbg.location(22,86);
            	    pushFollow(FOLLOW_vardeclaration_in_methoddeclaration172);
            	    vardeclaration();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop11;
                }
            } while (true);
            } finally {dbg.exitSubRule(11);}

            dbg.location(22,102);
            // /home/mamsaac/Desktop/David/spirit.g:22:102: ( statement )*
            try { dbg.enterSubRule(12);

            loop12:
            do {
                int alt12=2;
                try { dbg.enterDecision(12, decisionCanBacktrack[12]);

                int LA12_0 = input.LA(1);

                if ( (LA12_0==IDENTIFIER||LA12_0==24||LA12_0==36||LA12_0==41||(LA12_0 >= 45 && LA12_0 <= 46)||LA12_0==48) ) {
                    alt12=1;
                }


                } finally {dbg.exitDecision(12);}

                switch (alt12) {
            	case 1 :
            	    dbg.enterAlt(1);

            	    // /home/mamsaac/Desktop/David/spirit.g:22:102: statement
            	    {
            	    dbg.location(22,102);
            	    pushFollow(FOLLOW_statement_in_methoddeclaration175);
            	    statement();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop12;
                }
            } while (true);
            } finally {dbg.exitSubRule(12);}

            dbg.location(22,113);
            match(input,50,FOLLOW_50_in_methoddeclaration178); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(22, 115);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "methoddeclaration");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "methoddeclaration"



    // $ANTLR start "parameters"
    // /home/mamsaac/Desktop/David/spirit.g:24:1: parameters : type IDENTIFIER ( ',' type IDENTIFIER )* ;
    public final void parameters() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "parameters");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(24, 0);

        try {
            // /home/mamsaac/Desktop/David/spirit.g:25:2: ( type IDENTIFIER ( ',' type IDENTIFIER )* )
            dbg.enterAlt(1);

            // /home/mamsaac/Desktop/David/spirit.g:25:4: type IDENTIFIER ( ',' type IDENTIFIER )*
            {
            dbg.location(25,4);
            pushFollow(FOLLOW_type_in_parameters188);
            type();

            state._fsp--;

            dbg.location(25,9);
            match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_parameters190); 
            dbg.location(25,20);
            // /home/mamsaac/Desktop/David/spirit.g:25:20: ( ',' type IDENTIFIER )*
            try { dbg.enterSubRule(13);

            loop13:
            do {
                int alt13=2;
                try { dbg.enterDecision(13, decisionCanBacktrack[13]);

                int LA13_0 = input.LA(1);

                if ( (LA13_0==22) ) {
                    alt13=1;
                }


                } finally {dbg.exitDecision(13);}

                switch (alt13) {
            	case 1 :
            	    dbg.enterAlt(1);

            	    // /home/mamsaac/Desktop/David/spirit.g:25:21: ',' type IDENTIFIER
            	    {
            	    dbg.location(25,21);
            	    match(input,22,FOLLOW_22_in_parameters193); 
            	    dbg.location(25,25);
            	    pushFollow(FOLLOW_type_in_parameters195);
            	    type();

            	    state._fsp--;

            	    dbg.location(25,30);
            	    match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_parameters197); 

            	    }
            	    break;

            	default :
            	    break loop13;
                }
            } while (true);
            } finally {dbg.exitSubRule(13);}


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(25, 41);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "parameters");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "parameters"



    // $ANTLR start "primitivetype"
    // /home/mamsaac/Desktop/David/spirit.g:27:1: primitivetype : ( 'int' | 'char' | 'float' | 'boolean' );
    public final void primitivetype() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "primitivetype");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(27, 0);

        try {
            // /home/mamsaac/Desktop/David/spirit.g:28:2: ( 'int' | 'char' | 'float' | 'boolean' )
            dbg.enterAlt(1);

            // /home/mamsaac/Desktop/David/spirit.g:
            {
            dbg.location(28,2);
            if ( (input.LA(1) >= 29 && input.LA(1) <= 30)||input.LA(1)==35||input.LA(1)==37 ) {
                input.consume();
                state.errorRecovery=false;
            }
            else {
                MismatchedSetException mse = new MismatchedSetException(null,input);
                dbg.recognitionException(mse);
                throw mse;
            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(28, 39);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "primitivetype");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "primitivetype"



    // $ANTLR start "arraytype"
    // /home/mamsaac/Desktop/David/spirit.g:30:1: arraytype : primitivetype '[' INTEGER ']' ;
    public final void arraytype() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "arraytype");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(30, 0);

        try {
            // /home/mamsaac/Desktop/David/spirit.g:31:2: ( primitivetype '[' INTEGER ']' )
            dbg.enterAlt(1);

            // /home/mamsaac/Desktop/David/spirit.g:31:4: primitivetype '[' INTEGER ']'
            {
            dbg.location(31,4);
            pushFollow(FOLLOW_primitivetype_in_arraytype230);
            primitivetype();

            state._fsp--;

            dbg.location(31,17);
            match(input,27,FOLLOW_27_in_arraytype231); 
            dbg.location(31,21);
            match(input,INTEGER,FOLLOW_INTEGER_in_arraytype233); 
            dbg.location(31,29);
            match(input,28,FOLLOW_28_in_arraytype235); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(31, 31);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "arraytype");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "arraytype"



    // $ANTLR start "classtype"
    // /home/mamsaac/Desktop/David/spirit.g:33:1: classtype : IDENTIFIER ;
    public final void classtype() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "classtype");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(33, 0);

        try {
            // /home/mamsaac/Desktop/David/spirit.g:34:2: ( IDENTIFIER )
            dbg.enterAlt(1);

            // /home/mamsaac/Desktop/David/spirit.g:34:4: IDENTIFIER
            {
            dbg.location(34,4);
            match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_classtype245); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(34, 13);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "classtype");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "classtype"



    // $ANTLR start "type"
    // /home/mamsaac/Desktop/David/spirit.g:36:1: type : ( primitivetype | arraytype | classtype );
    public final void type() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "type");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(36, 0);

        try {
            // /home/mamsaac/Desktop/David/spirit.g:37:2: ( primitivetype | arraytype | classtype )
            int alt14=3;
            try { dbg.enterDecision(14, decisionCanBacktrack[14]);

            int LA14_0 = input.LA(1);

            if ( ((LA14_0 >= 29 && LA14_0 <= 30)||LA14_0==35||LA14_0==37) ) {
                int LA14_1 = input.LA(2);

                if ( (LA14_1==IDENTIFIER) ) {
                    alt14=1;
                }
                else if ( (LA14_1==27) ) {
                    alt14=2;
                }
                else {
                    NoViableAltException nvae =
                        new NoViableAltException("", 14, 1, input);

                    dbg.recognitionException(nvae);
                    throw nvae;

                }
            }
            else if ( (LA14_0==IDENTIFIER) ) {
                alt14=3;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 14, 0, input);

                dbg.recognitionException(nvae);
                throw nvae;

            }
            } finally {dbg.exitDecision(14);}

            switch (alt14) {
                case 1 :
                    dbg.enterAlt(1);

                    // /home/mamsaac/Desktop/David/spirit.g:37:5: primitivetype
                    {
                    dbg.location(37,5);
                    pushFollow(FOLLOW_primitivetype_in_type256);
                    primitivetype();

                    state._fsp--;


                    }
                    break;
                case 2 :
                    dbg.enterAlt(2);

                    // /home/mamsaac/Desktop/David/spirit.g:37:21: arraytype
                    {
                    dbg.location(37,21);
                    pushFollow(FOLLOW_arraytype_in_type260);
                    arraytype();

                    state._fsp--;


                    }
                    break;
                case 3 :
                    dbg.enterAlt(3);

                    // /home/mamsaac/Desktop/David/spirit.g:37:33: classtype
                    {
                    dbg.location(37,33);
                    pushFollow(FOLLOW_classtype_in_type264);
                    classtype();

                    state._fsp--;


                    }
                    break;

            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(37, 41);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "type");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "type"



    // $ANTLR start "statement"
    // /home/mamsaac/Desktop/David/spirit.g:39:1: statement : ( assignment | conditional | invocation ';' | loop | print | returnstmt | ';' );
    public final void statement() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "statement");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(39, 0);

        try {
            // /home/mamsaac/Desktop/David/spirit.g:40:2: ( assignment | conditional | invocation ';' | loop | print | returnstmt | ';' )
            int alt15=7;
            try { dbg.enterDecision(15, decisionCanBacktrack[15]);

            switch ( input.LA(1) ) {
            case IDENTIFIER:
                {
                int LA15_1 = input.LA(2);

                if ( (LA15_1==25||LA15_1==27) ) {
                    alt15=1;
                }
                else if ( (LA15_1==23) ) {
                    int LA15_9 = input.LA(3);

                    if ( (LA15_9==IDENTIFIER) ) {
                        int LA15_11 = input.LA(4);

                        if ( (LA15_11==20) ) {
                            alt15=3;
                        }
                        else if ( (LA15_11==25) ) {
                            alt15=1;
                        }
                        else {
                            NoViableAltException nvae =
                                new NoViableAltException("", 15, 11, input);

                            dbg.recognitionException(nvae);
                            throw nvae;

                        }
                    }
                    else {
                        NoViableAltException nvae =
                            new NoViableAltException("", 15, 9, input);

                        dbg.recognitionException(nvae);
                        throw nvae;

                    }
                }
                else {
                    NoViableAltException nvae =
                        new NoViableAltException("", 15, 1, input);

                    dbg.recognitionException(nvae);
                    throw nvae;

                }
                }
                break;
            case 46:
                {
                int LA15_2 = input.LA(2);

                if ( (LA15_2==23) ) {
                    int LA15_10 = input.LA(3);

                    if ( (LA15_10==IDENTIFIER) ) {
                        int LA15_12 = input.LA(4);

                        if ( (LA15_12==20) ) {
                            alt15=3;
                        }
                        else if ( (LA15_12==25) ) {
                            alt15=1;
                        }
                        else {
                            NoViableAltException nvae =
                                new NoViableAltException("", 15, 12, input);

                            dbg.recognitionException(nvae);
                            throw nvae;

                        }
                    }
                    else {
                        NoViableAltException nvae =
                            new NoViableAltException("", 15, 10, input);

                        dbg.recognitionException(nvae);
                        throw nvae;

                    }
                }
                else {
                    NoViableAltException nvae =
                        new NoViableAltException("", 15, 2, input);

                    dbg.recognitionException(nvae);
                    throw nvae;

                }
                }
                break;
            case 36:
                {
                alt15=2;
                }
                break;
            case 48:
                {
                alt15=4;
                }
                break;
            case 41:
                {
                alt15=5;
                }
                break;
            case 45:
                {
                alt15=6;
                }
                break;
            case 24:
                {
                alt15=7;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 15, 0, input);

                dbg.recognitionException(nvae);
                throw nvae;

            }

            } finally {dbg.exitDecision(15);}

            switch (alt15) {
                case 1 :
                    dbg.enterAlt(1);

                    // /home/mamsaac/Desktop/David/spirit.g:40:4: assignment
                    {
                    dbg.location(40,4);
                    pushFollow(FOLLOW_assignment_in_statement273);
                    assignment();

                    state._fsp--;


                    }
                    break;
                case 2 :
                    dbg.enterAlt(2);

                    // /home/mamsaac/Desktop/David/spirit.g:40:18: conditional
                    {
                    dbg.location(40,18);
                    pushFollow(FOLLOW_conditional_in_statement278);
                    conditional();

                    state._fsp--;


                    }
                    break;
                case 3 :
                    dbg.enterAlt(3);

                    // /home/mamsaac/Desktop/David/spirit.g:40:32: invocation ';'
                    {
                    dbg.location(40,32);
                    pushFollow(FOLLOW_invocation_in_statement282);
                    invocation();

                    state._fsp--;

                    dbg.location(40,43);
                    match(input,24,FOLLOW_24_in_statement284); 

                    }
                    break;
                case 4 :
                    dbg.enterAlt(4);

                    // /home/mamsaac/Desktop/David/spirit.g:40:49: loop
                    {
                    dbg.location(40,49);
                    pushFollow(FOLLOW_loop_in_statement288);
                    loop();

                    state._fsp--;


                    }
                    break;
                case 5 :
                    dbg.enterAlt(5);

                    // /home/mamsaac/Desktop/David/spirit.g:40:56: print
                    {
                    dbg.location(40,56);
                    pushFollow(FOLLOW_print_in_statement292);
                    print();

                    state._fsp--;


                    }
                    break;
                case 6 :
                    dbg.enterAlt(6);

                    // /home/mamsaac/Desktop/David/spirit.g:40:64: returnstmt
                    {
                    dbg.location(40,64);
                    pushFollow(FOLLOW_returnstmt_in_statement296);
                    returnstmt();

                    state._fsp--;


                    }
                    break;
                case 7 :
                    dbg.enterAlt(7);

                    // /home/mamsaac/Desktop/David/spirit.g:40:77: ';'
                    {
                    dbg.location(40,77);
                    match(input,24,FOLLOW_24_in_statement300); 

                    }
                    break;

            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(40, 79);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "statement");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "statement"



    // $ANTLR start "assignment"
    // /home/mamsaac/Desktop/David/spirit.g:42:1: assignment : lhsassignment '=' rhsassignment ';' ;
    public final void assignment() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "assignment");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(42, 0);

        try {
            // /home/mamsaac/Desktop/David/spirit.g:43:2: ( lhsassignment '=' rhsassignment ';' )
            dbg.enterAlt(1);

            // /home/mamsaac/Desktop/David/spirit.g:43:4: lhsassignment '=' rhsassignment ';'
            {
            dbg.location(43,4);
            pushFollow(FOLLOW_lhsassignment_in_assignment311);
            lhsassignment();

            state._fsp--;

            dbg.location(43,18);
            match(input,25,FOLLOW_25_in_assignment313); 
            dbg.location(43,22);
            pushFollow(FOLLOW_rhsassignment_in_assignment315);
            rhsassignment();

            state._fsp--;

            dbg.location(43,36);
            match(input,24,FOLLOW_24_in_assignment317); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(43, 38);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "assignment");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "assignment"



    // $ANTLR start "lhsassignment"
    // /home/mamsaac/Desktop/David/spirit.g:45:1: lhsassignment : ( arrayaccess | IDENTIFIER '.' IDENTIFIER | 'this' '.' IDENTIFIER | IDENTIFIER );
    public final void lhsassignment() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "lhsassignment");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(45, 0);

        try {
            // /home/mamsaac/Desktop/David/spirit.g:46:2: ( arrayaccess | IDENTIFIER '.' IDENTIFIER | 'this' '.' IDENTIFIER | IDENTIFIER )
            int alt16=4;
            try { dbg.enterDecision(16, decisionCanBacktrack[16]);

            int LA16_0 = input.LA(1);

            if ( (LA16_0==IDENTIFIER) ) {
                switch ( input.LA(2) ) {
                case 27:
                    {
                    alt16=1;
                    }
                    break;
                case 23:
                    {
                    alt16=2;
                    }
                    break;
                case 25:
                    {
                    alt16=4;
                    }
                    break;
                default:
                    NoViableAltException nvae =
                        new NoViableAltException("", 16, 1, input);

                    dbg.recognitionException(nvae);
                    throw nvae;

                }

            }
            else if ( (LA16_0==46) ) {
                alt16=3;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 16, 0, input);

                dbg.recognitionException(nvae);
                throw nvae;

            }
            } finally {dbg.exitDecision(16);}

            switch (alt16) {
                case 1 :
                    dbg.enterAlt(1);

                    // /home/mamsaac/Desktop/David/spirit.g:46:5: arrayaccess
                    {
                    dbg.location(46,5);
                    pushFollow(FOLLOW_arrayaccess_in_lhsassignment328);
                    arrayaccess();

                    state._fsp--;


                    }
                    break;
                case 2 :
                    dbg.enterAlt(2);

                    // /home/mamsaac/Desktop/David/spirit.g:47:5: IDENTIFIER '.' IDENTIFIER
                    {
                    dbg.location(47,5);
                    match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_lhsassignment334); 
                    dbg.location(47,16);
                    match(input,23,FOLLOW_23_in_lhsassignment336); 
                    dbg.location(47,20);
                    match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_lhsassignment338); 

                    }
                    break;
                case 3 :
                    dbg.enterAlt(3);

                    // /home/mamsaac/Desktop/David/spirit.g:48:5: 'this' '.' IDENTIFIER
                    {
                    dbg.location(48,5);
                    match(input,46,FOLLOW_46_in_lhsassignment345); 
                    dbg.location(48,12);
                    match(input,23,FOLLOW_23_in_lhsassignment347); 
                    dbg.location(48,16);
                    match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_lhsassignment349); 

                    }
                    break;
                case 4 :
                    dbg.enterAlt(4);

                    // /home/mamsaac/Desktop/David/spirit.g:49:5: IDENTIFIER
                    {
                    dbg.location(49,5);
                    match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_lhsassignment357); 

                    }
                    break;

            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(50, 2);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "lhsassignment");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "lhsassignment"



    // $ANTLR start "rhsassignment"
    // /home/mamsaac/Desktop/David/spirit.g:52:1: rhsassignment : ( expression | 'new' IDENTIFIER '(' ')' ) ;
    public final void rhsassignment() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "rhsassignment");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(52, 0);

        try {
            // /home/mamsaac/Desktop/David/spirit.g:53:2: ( ( expression | 'new' IDENTIFIER '(' ')' ) )
            dbg.enterAlt(1);

            // /home/mamsaac/Desktop/David/spirit.g:53:4: ( expression | 'new' IDENTIFIER '(' ')' )
            {
            dbg.location(53,4);
            // /home/mamsaac/Desktop/David/spirit.g:53:4: ( expression | 'new' IDENTIFIER '(' ')' )
            int alt17=2;
            try { dbg.enterSubRule(17);
            try { dbg.enterDecision(17, decisionCanBacktrack[17]);

            int LA17_0 = input.LA(1);

            if ( (LA17_0==CHAR||LA17_0==FLOAT||(LA17_0 >= IDENTIFIER && LA17_0 <= INTEGER)||LA17_0==20||(LA17_0 >= 42 && LA17_0 <= 44)||LA17_0==46) ) {
                alt17=1;
            }
            else if ( (LA17_0==40) ) {
                alt17=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 17, 0, input);

                dbg.recognitionException(nvae);
                throw nvae;

            }
            } finally {dbg.exitDecision(17);}

            switch (alt17) {
                case 1 :
                    dbg.enterAlt(1);

                    // /home/mamsaac/Desktop/David/spirit.g:53:5: expression
                    {
                    dbg.location(53,5);
                    pushFollow(FOLLOW_expression_in_rhsassignment372);
                    expression();

                    state._fsp--;


                    }
                    break;
                case 2 :
                    dbg.enterAlt(2);

                    // /home/mamsaac/Desktop/David/spirit.g:53:18: 'new' IDENTIFIER '(' ')'
                    {
                    dbg.location(53,18);
                    match(input,40,FOLLOW_40_in_rhsassignment376); 
                    dbg.location(53,24);
                    match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_rhsassignment378); 
                    dbg.location(53,35);
                    match(input,20,FOLLOW_20_in_rhsassignment380); 
                    dbg.location(53,39);
                    match(input,21,FOLLOW_21_in_rhsassignment382); 

                    }
                    break;

            }
            } finally {dbg.exitSubRule(17);}


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(53, 42);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "rhsassignment");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "rhsassignment"



    // $ANTLR start "returnstmt"
    // /home/mamsaac/Desktop/David/spirit.g:55:1: returnstmt : 'return' ( expression )? ';' ;
    public final void returnstmt() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "returnstmt");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(55, 0);

        try {
            // /home/mamsaac/Desktop/David/spirit.g:56:2: ( 'return' ( expression )? ';' )
            dbg.enterAlt(1);

            // /home/mamsaac/Desktop/David/spirit.g:56:4: 'return' ( expression )? ';'
            {
            dbg.location(56,4);
            match(input,45,FOLLOW_45_in_returnstmt393); 
            dbg.location(56,13);
            // /home/mamsaac/Desktop/David/spirit.g:56:13: ( expression )?
            int alt18=2;
            try { dbg.enterSubRule(18);
            try { dbg.enterDecision(18, decisionCanBacktrack[18]);

            int LA18_0 = input.LA(1);

            if ( (LA18_0==CHAR||LA18_0==FLOAT||(LA18_0 >= IDENTIFIER && LA18_0 <= INTEGER)||LA18_0==20||(LA18_0 >= 42 && LA18_0 <= 44)||LA18_0==46) ) {
                alt18=1;
            }
            } finally {dbg.exitDecision(18);}

            switch (alt18) {
                case 1 :
                    dbg.enterAlt(1);

                    // /home/mamsaac/Desktop/David/spirit.g:56:13: expression
                    {
                    dbg.location(56,13);
                    pushFollow(FOLLOW_expression_in_returnstmt395);
                    expression();

                    state._fsp--;


                    }
                    break;

            }
            } finally {dbg.exitSubRule(18);}

            dbg.location(56,25);
            match(input,24,FOLLOW_24_in_returnstmt398); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(56, 27);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "returnstmt");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "returnstmt"



    // $ANTLR start "conditional"
    // /home/mamsaac/Desktop/David/spirit.g:58:1: conditional : 'if' '(' expression ')' '{' ( statement )* '}' ( 'elsif' '(' expression ')' '{' ( statement )* '}' )* ( 'else' '{' ( statement )* '}' )? ;
    public final void conditional() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "conditional");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(58, 0);

        try {
            // /home/mamsaac/Desktop/David/spirit.g:59:2: ( 'if' '(' expression ')' '{' ( statement )* '}' ( 'elsif' '(' expression ')' '{' ( statement )* '}' )* ( 'else' '{' ( statement )* '}' )? )
            dbg.enterAlt(1);

            // /home/mamsaac/Desktop/David/spirit.g:59:5: 'if' '(' expression ')' '{' ( statement )* '}' ( 'elsif' '(' expression ')' '{' ( statement )* '}' )* ( 'else' '{' ( statement )* '}' )?
            {
            dbg.location(59,5);
            match(input,36,FOLLOW_36_in_conditional410); 
            dbg.location(59,10);
            match(input,20,FOLLOW_20_in_conditional412); 
            dbg.location(59,14);
            pushFollow(FOLLOW_expression_in_conditional414);
            expression();

            state._fsp--;

            dbg.location(59,25);
            match(input,21,FOLLOW_21_in_conditional416); 
            dbg.location(59,29);
            match(input,49,FOLLOW_49_in_conditional418); 
            dbg.location(59,33);
            // /home/mamsaac/Desktop/David/spirit.g:59:33: ( statement )*
            try { dbg.enterSubRule(19);

            loop19:
            do {
                int alt19=2;
                try { dbg.enterDecision(19, decisionCanBacktrack[19]);

                int LA19_0 = input.LA(1);

                if ( (LA19_0==IDENTIFIER||LA19_0==24||LA19_0==36||LA19_0==41||(LA19_0 >= 45 && LA19_0 <= 46)||LA19_0==48) ) {
                    alt19=1;
                }


                } finally {dbg.exitDecision(19);}

                switch (alt19) {
            	case 1 :
            	    dbg.enterAlt(1);

            	    // /home/mamsaac/Desktop/David/spirit.g:59:33: statement
            	    {
            	    dbg.location(59,33);
            	    pushFollow(FOLLOW_statement_in_conditional420);
            	    statement();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop19;
                }
            } while (true);
            } finally {dbg.exitSubRule(19);}

            dbg.location(59,44);
            match(input,50,FOLLOW_50_in_conditional423); 
            dbg.location(59,48);
            // /home/mamsaac/Desktop/David/spirit.g:59:48: ( 'elsif' '(' expression ')' '{' ( statement )* '}' )*
            try { dbg.enterSubRule(21);

            loop21:
            do {
                int alt21=2;
                try { dbg.enterDecision(21, decisionCanBacktrack[21]);

                int LA21_0 = input.LA(1);

                if ( (LA21_0==33) ) {
                    alt21=1;
                }


                } finally {dbg.exitDecision(21);}

                switch (alt21) {
            	case 1 :
            	    dbg.enterAlt(1);

            	    // /home/mamsaac/Desktop/David/spirit.g:59:49: 'elsif' '(' expression ')' '{' ( statement )* '}'
            	    {
            	    dbg.location(59,49);
            	    match(input,33,FOLLOW_33_in_conditional426); 
            	    dbg.location(59,57);
            	    match(input,20,FOLLOW_20_in_conditional428); 
            	    dbg.location(59,61);
            	    pushFollow(FOLLOW_expression_in_conditional430);
            	    expression();

            	    state._fsp--;

            	    dbg.location(59,72);
            	    match(input,21,FOLLOW_21_in_conditional432); 
            	    dbg.location(59,76);
            	    match(input,49,FOLLOW_49_in_conditional434); 
            	    dbg.location(59,80);
            	    // /home/mamsaac/Desktop/David/spirit.g:59:80: ( statement )*
            	    try { dbg.enterSubRule(20);

            	    loop20:
            	    do {
            	        int alt20=2;
            	        try { dbg.enterDecision(20, decisionCanBacktrack[20]);

            	        int LA20_0 = input.LA(1);

            	        if ( (LA20_0==IDENTIFIER||LA20_0==24||LA20_0==36||LA20_0==41||(LA20_0 >= 45 && LA20_0 <= 46)||LA20_0==48) ) {
            	            alt20=1;
            	        }


            	        } finally {dbg.exitDecision(20);}

            	        switch (alt20) {
            	    	case 1 :
            	    	    dbg.enterAlt(1);

            	    	    // /home/mamsaac/Desktop/David/spirit.g:59:80: statement
            	    	    {
            	    	    dbg.location(59,80);
            	    	    pushFollow(FOLLOW_statement_in_conditional436);
            	    	    statement();

            	    	    state._fsp--;


            	    	    }
            	    	    break;

            	    	default :
            	    	    break loop20;
            	        }
            	    } while (true);
            	    } finally {dbg.exitSubRule(20);}

            	    dbg.location(59,91);
            	    match(input,50,FOLLOW_50_in_conditional439); 

            	    }
            	    break;

            	default :
            	    break loop21;
                }
            } while (true);
            } finally {dbg.exitSubRule(21);}

            dbg.location(59,98);
            // /home/mamsaac/Desktop/David/spirit.g:59:98: ( 'else' '{' ( statement )* '}' )?
            int alt23=2;
            try { dbg.enterSubRule(23);
            try { dbg.enterDecision(23, decisionCanBacktrack[23]);

            int LA23_0 = input.LA(1);

            if ( (LA23_0==32) ) {
                alt23=1;
            }
            } finally {dbg.exitDecision(23);}

            switch (alt23) {
                case 1 :
                    dbg.enterAlt(1);

                    // /home/mamsaac/Desktop/David/spirit.g:59:99: 'else' '{' ( statement )* '}'
                    {
                    dbg.location(59,99);
                    match(input,32,FOLLOW_32_in_conditional445); 
                    dbg.location(59,106);
                    match(input,49,FOLLOW_49_in_conditional447); 
                    dbg.location(59,110);
                    // /home/mamsaac/Desktop/David/spirit.g:59:110: ( statement )*
                    try { dbg.enterSubRule(22);

                    loop22:
                    do {
                        int alt22=2;
                        try { dbg.enterDecision(22, decisionCanBacktrack[22]);

                        int LA22_0 = input.LA(1);

                        if ( (LA22_0==IDENTIFIER||LA22_0==24||LA22_0==36||LA22_0==41||(LA22_0 >= 45 && LA22_0 <= 46)||LA22_0==48) ) {
                            alt22=1;
                        }


                        } finally {dbg.exitDecision(22);}

                        switch (alt22) {
                    	case 1 :
                    	    dbg.enterAlt(1);

                    	    // /home/mamsaac/Desktop/David/spirit.g:59:110: statement
                    	    {
                    	    dbg.location(59,110);
                    	    pushFollow(FOLLOW_statement_in_conditional449);
                    	    statement();

                    	    state._fsp--;


                    	    }
                    	    break;

                    	default :
                    	    break loop22;
                        }
                    } while (true);
                    } finally {dbg.exitSubRule(22);}

                    dbg.location(59,121);
                    match(input,50,FOLLOW_50_in_conditional452); 

                    }
                    break;

            }
            } finally {dbg.exitSubRule(23);}


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(59, 126);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "conditional");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "conditional"



    // $ANTLR start "loop"
    // /home/mamsaac/Desktop/David/spirit.g:61:1: loop : 'while' '(' expression ')' '{' ( statement )* '}' ;
    public final void loop() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "loop");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(61, 0);

        try {
            // /home/mamsaac/Desktop/David/spirit.g:62:2: ( 'while' '(' expression ')' '{' ( statement )* '}' )
            dbg.enterAlt(1);

            // /home/mamsaac/Desktop/David/spirit.g:62:5: 'while' '(' expression ')' '{' ( statement )* '}'
            {
            dbg.location(62,5);
            match(input,48,FOLLOW_48_in_loop467); 
            dbg.location(62,13);
            match(input,20,FOLLOW_20_in_loop469); 
            dbg.location(62,17);
            pushFollow(FOLLOW_expression_in_loop471);
            expression();

            state._fsp--;

            dbg.location(62,28);
            match(input,21,FOLLOW_21_in_loop473); 
            dbg.location(62,32);
            match(input,49,FOLLOW_49_in_loop475); 
            dbg.location(62,36);
            // /home/mamsaac/Desktop/David/spirit.g:62:36: ( statement )*
            try { dbg.enterSubRule(24);

            loop24:
            do {
                int alt24=2;
                try { dbg.enterDecision(24, decisionCanBacktrack[24]);

                int LA24_0 = input.LA(1);

                if ( (LA24_0==IDENTIFIER||LA24_0==24||LA24_0==36||LA24_0==41||(LA24_0 >= 45 && LA24_0 <= 46)||LA24_0==48) ) {
                    alt24=1;
                }


                } finally {dbg.exitDecision(24);}

                switch (alt24) {
            	case 1 :
            	    dbg.enterAlt(1);

            	    // /home/mamsaac/Desktop/David/spirit.g:62:36: statement
            	    {
            	    dbg.location(62,36);
            	    pushFollow(FOLLOW_statement_in_loop477);
            	    statement();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop24;
                }
            } while (true);
            } finally {dbg.exitSubRule(24);}

            dbg.location(62,47);
            match(input,50,FOLLOW_50_in_loop480); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(62, 49);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "loop");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "loop"



    // $ANTLR start "print"
    // /home/mamsaac/Desktop/David/spirit.g:64:1: print : 'print' '(' expression ')' ';' ;
    public final void print() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "print");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(64, 0);

        try {
            // /home/mamsaac/Desktop/David/spirit.g:65:2: ( 'print' '(' expression ')' ';' )
            dbg.enterAlt(1);

            // /home/mamsaac/Desktop/David/spirit.g:65:5: 'print' '(' expression ')' ';'
            {
            dbg.location(65,5);
            match(input,41,FOLLOW_41_in_print492); 
            dbg.location(65,13);
            match(input,20,FOLLOW_20_in_print494); 
            dbg.location(65,17);
            pushFollow(FOLLOW_expression_in_print496);
            expression();

            state._fsp--;

            dbg.location(65,28);
            match(input,21,FOLLOW_21_in_print498); 
            dbg.location(65,32);
            match(input,24,FOLLOW_24_in_print500); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(65, 34);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "print");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "print"



    // $ANTLR start "expression"
    // /home/mamsaac/Desktop/David/spirit.g:67:1: expression : exp ( COMPARITIONOPERATORS exp )? ;
    public final void expression() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "expression");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(67, 0);

        try {
            // /home/mamsaac/Desktop/David/spirit.g:68:2: ( exp ( COMPARITIONOPERATORS exp )? )
            dbg.enterAlt(1);

            // /home/mamsaac/Desktop/David/spirit.g:68:5: exp ( COMPARITIONOPERATORS exp )?
            {
            dbg.location(68,5);
            pushFollow(FOLLOW_exp_in_expression511);
            exp();

            state._fsp--;

            dbg.location(68,9);
            // /home/mamsaac/Desktop/David/spirit.g:68:9: ( COMPARITIONOPERATORS exp )?
            int alt25=2;
            try { dbg.enterSubRule(25);
            try { dbg.enterDecision(25, decisionCanBacktrack[25]);

            int LA25_0 = input.LA(1);

            if ( (LA25_0==COMPARITIONOPERATORS) ) {
                alt25=1;
            }
            } finally {dbg.exitDecision(25);}

            switch (alt25) {
                case 1 :
                    dbg.enterAlt(1);

                    // /home/mamsaac/Desktop/David/spirit.g:68:10: COMPARITIONOPERATORS exp
                    {
                    dbg.location(68,10);
                    match(input,COMPARITIONOPERATORS,FOLLOW_COMPARITIONOPERATORS_in_expression514); 
                    dbg.location(68,31);
                    pushFollow(FOLLOW_exp_in_expression516);
                    exp();

                    state._fsp--;


                    }
                    break;

            }
            } finally {dbg.exitSubRule(25);}


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(68, 35);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "expression");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "expression"



    // $ANTLR start "exp"
    // /home/mamsaac/Desktop/David/spirit.g:70:1: exp : term ( ADDITIONSUBSTRACTIONOPERATORS term )* ;
    public final void exp() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "exp");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(70, 0);

        try {
            // /home/mamsaac/Desktop/David/spirit.g:71:2: ( term ( ADDITIONSUBSTRACTIONOPERATORS term )* )
            dbg.enterAlt(1);

            // /home/mamsaac/Desktop/David/spirit.g:71:5: term ( ADDITIONSUBSTRACTIONOPERATORS term )*
            {
            dbg.location(71,5);
            pushFollow(FOLLOW_term_in_exp529);
            term();

            state._fsp--;

            dbg.location(71,10);
            // /home/mamsaac/Desktop/David/spirit.g:71:10: ( ADDITIONSUBSTRACTIONOPERATORS term )*
            try { dbg.enterSubRule(26);

            loop26:
            do {
                int alt26=2;
                try { dbg.enterDecision(26, decisionCanBacktrack[26]);

                int LA26_0 = input.LA(1);

                if ( (LA26_0==ADDITIONSUBSTRACTIONOPERATORS) ) {
                    alt26=1;
                }


                } finally {dbg.exitDecision(26);}

                switch (alt26) {
            	case 1 :
            	    dbg.enterAlt(1);

            	    // /home/mamsaac/Desktop/David/spirit.g:71:11: ADDITIONSUBSTRACTIONOPERATORS term
            	    {
            	    dbg.location(71,11);
            	    match(input,ADDITIONSUBSTRACTIONOPERATORS,FOLLOW_ADDITIONSUBSTRACTIONOPERATORS_in_exp532); 
            	    dbg.location(71,41);
            	    pushFollow(FOLLOW_term_in_exp534);
            	    term();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop26;
                }
            } while (true);
            } finally {dbg.exitSubRule(26);}


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(71, 46);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "exp");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "exp"



    // $ANTLR start "term"
    // /home/mamsaac/Desktop/David/spirit.g:73:1: term : factor ( MULTIPLICATIONDIVISIONOPERATORS factor )* ;
    public final void term() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "term");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(73, 0);

        try {
            // /home/mamsaac/Desktop/David/spirit.g:74:2: ( factor ( MULTIPLICATIONDIVISIONOPERATORS factor )* )
            dbg.enterAlt(1);

            // /home/mamsaac/Desktop/David/spirit.g:74:5: factor ( MULTIPLICATIONDIVISIONOPERATORS factor )*
            {
            dbg.location(74,5);
            pushFollow(FOLLOW_factor_in_term547);
            factor();

            state._fsp--;

            dbg.location(74,12);
            // /home/mamsaac/Desktop/David/spirit.g:74:12: ( MULTIPLICATIONDIVISIONOPERATORS factor )*
            try { dbg.enterSubRule(27);

            loop27:
            do {
                int alt27=2;
                try { dbg.enterDecision(27, decisionCanBacktrack[27]);

                int LA27_0 = input.LA(1);

                if ( (LA27_0==MULTIPLICATIONDIVISIONOPERATORS) ) {
                    alt27=1;
                }


                } finally {dbg.exitDecision(27);}

                switch (alt27) {
            	case 1 :
            	    dbg.enterAlt(1);

            	    // /home/mamsaac/Desktop/David/spirit.g:74:13: MULTIPLICATIONDIVISIONOPERATORS factor
            	    {
            	    dbg.location(74,13);
            	    match(input,MULTIPLICATIONDIVISIONOPERATORS,FOLLOW_MULTIPLICATIONDIVISIONOPERATORS_in_term550); 
            	    dbg.location(74,45);
            	    pushFollow(FOLLOW_factor_in_term552);
            	    factor();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop27;
                }
            } while (true);
            } finally {dbg.exitSubRule(27);}


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(74, 52);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "term");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "term"



    // $ANTLR start "factor"
    // /home/mamsaac/Desktop/David/spirit.g:76:1: factor : ( IDENTIFIER '.' IDENTIFIER | 'this' '.' IDENTIFIER | IDENTIFIER | INTEGER | FLOAT | CHAR | read | invocation | arrayaccess | '(' expression ')' );
    public final void factor() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "factor");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(76, 0);

        try {
            // /home/mamsaac/Desktop/David/spirit.g:77:2: ( IDENTIFIER '.' IDENTIFIER | 'this' '.' IDENTIFIER | IDENTIFIER | INTEGER | FLOAT | CHAR | read | invocation | arrayaccess | '(' expression ')' )
            int alt28=10;
            try { dbg.enterDecision(28, decisionCanBacktrack[28]);

            switch ( input.LA(1) ) {
            case IDENTIFIER:
                {
                switch ( input.LA(2) ) {
                case 23:
                    {
                    int LA28_8 = input.LA(3);

                    if ( (LA28_8==IDENTIFIER) ) {
                        int LA28_12 = input.LA(4);

                        if ( (LA28_12==20) ) {
                            alt28=8;
                        }
                        else if ( (LA28_12==ADDITIONSUBSTRACTIONOPERATORS||LA28_12==COMPARITIONOPERATORS||LA28_12==MULTIPLICATIONDIVISIONOPERATORS||(LA28_12 >= 21 && LA28_12 <= 22)||LA28_12==24||LA28_12==28) ) {
                            alt28=1;
                        }
                        else {
                            NoViableAltException nvae =
                                new NoViableAltException("", 28, 12, input);

                            dbg.recognitionException(nvae);
                            throw nvae;

                        }
                    }
                    else {
                        NoViableAltException nvae =
                            new NoViableAltException("", 28, 8, input);

                        dbg.recognitionException(nvae);
                        throw nvae;

                    }
                    }
                    break;
                case 27:
                    {
                    alt28=9;
                    }
                    break;
                case ADDITIONSUBSTRACTIONOPERATORS:
                case COMPARITIONOPERATORS:
                case MULTIPLICATIONDIVISIONOPERATORS:
                case 21:
                case 22:
                case 24:
                case 28:
                    {
                    alt28=3;
                    }
                    break;
                default:
                    NoViableAltException nvae =
                        new NoViableAltException("", 28, 1, input);

                    dbg.recognitionException(nvae);
                    throw nvae;

                }

                }
                break;
            case 46:
                {
                int LA28_2 = input.LA(2);

                if ( (LA28_2==23) ) {
                    int LA28_11 = input.LA(3);

                    if ( (LA28_11==IDENTIFIER) ) {
                        int LA28_13 = input.LA(4);

                        if ( (LA28_13==20) ) {
                            alt28=8;
                        }
                        else if ( (LA28_13==ADDITIONSUBSTRACTIONOPERATORS||LA28_13==COMPARITIONOPERATORS||LA28_13==MULTIPLICATIONDIVISIONOPERATORS||(LA28_13 >= 21 && LA28_13 <= 22)||LA28_13==24||LA28_13==28) ) {
                            alt28=2;
                        }
                        else {
                            NoViableAltException nvae =
                                new NoViableAltException("", 28, 13, input);

                            dbg.recognitionException(nvae);
                            throw nvae;

                        }
                    }
                    else {
                        NoViableAltException nvae =
                            new NoViableAltException("", 28, 11, input);

                        dbg.recognitionException(nvae);
                        throw nvae;

                    }
                }
                else {
                    NoViableAltException nvae =
                        new NoViableAltException("", 28, 2, input);

                    dbg.recognitionException(nvae);
                    throw nvae;

                }
                }
                break;
            case INTEGER:
                {
                alt28=4;
                }
                break;
            case FLOAT:
                {
                alt28=5;
                }
                break;
            case CHAR:
                {
                alt28=6;
                }
                break;
            case 42:
            case 43:
            case 44:
                {
                alt28=7;
                }
                break;
            case 20:
                {
                alt28=10;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 28, 0, input);

                dbg.recognitionException(nvae);
                throw nvae;

            }

            } finally {dbg.exitDecision(28);}

            switch (alt28) {
                case 1 :
                    dbg.enterAlt(1);

                    // /home/mamsaac/Desktop/David/spirit.g:78:3: IDENTIFIER '.' IDENTIFIER
                    {
                    dbg.location(78,3);
                    match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_factor566); 
                    dbg.location(78,14);
                    match(input,23,FOLLOW_23_in_factor568); 
                    dbg.location(78,18);
                    match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_factor570); 

                    }
                    break;
                case 2 :
                    dbg.enterAlt(2);

                    // /home/mamsaac/Desktop/David/spirit.g:79:5: 'this' '.' IDENTIFIER
                    {
                    dbg.location(79,5);
                    match(input,46,FOLLOW_46_in_factor577); 
                    dbg.location(79,12);
                    match(input,23,FOLLOW_23_in_factor579); 
                    dbg.location(79,16);
                    match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_factor581); 

                    }
                    break;
                case 3 :
                    dbg.enterAlt(3);

                    // /home/mamsaac/Desktop/David/spirit.g:80:5: IDENTIFIER
                    {
                    dbg.location(80,5);
                    match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_factor589); 

                    }
                    break;
                case 4 :
                    dbg.enterAlt(4);

                    // /home/mamsaac/Desktop/David/spirit.g:81:5: INTEGER
                    {
                    dbg.location(81,5);
                    match(input,INTEGER,FOLLOW_INTEGER_in_factor595); 

                    }
                    break;
                case 5 :
                    dbg.enterAlt(5);

                    // /home/mamsaac/Desktop/David/spirit.g:82:5: FLOAT
                    {
                    dbg.location(82,5);
                    match(input,FLOAT,FOLLOW_FLOAT_in_factor601); 

                    }
                    break;
                case 6 :
                    dbg.enterAlt(6);

                    // /home/mamsaac/Desktop/David/spirit.g:83:5: CHAR
                    {
                    dbg.location(83,5);
                    match(input,CHAR,FOLLOW_CHAR_in_factor607); 

                    }
                    break;
                case 7 :
                    dbg.enterAlt(7);

                    // /home/mamsaac/Desktop/David/spirit.g:84:5: read
                    {
                    dbg.location(84,5);
                    pushFollow(FOLLOW_read_in_factor613);
                    read();

                    state._fsp--;


                    }
                    break;
                case 8 :
                    dbg.enterAlt(8);

                    // /home/mamsaac/Desktop/David/spirit.g:85:5: invocation
                    {
                    dbg.location(85,5);
                    pushFollow(FOLLOW_invocation_in_factor619);
                    invocation();

                    state._fsp--;


                    }
                    break;
                case 9 :
                    dbg.enterAlt(9);

                    // /home/mamsaac/Desktop/David/spirit.g:86:5: arrayaccess
                    {
                    dbg.location(86,5);
                    pushFollow(FOLLOW_arrayaccess_in_factor625);
                    arrayaccess();

                    state._fsp--;


                    }
                    break;
                case 10 :
                    dbg.enterAlt(10);

                    // /home/mamsaac/Desktop/David/spirit.g:87:5: '(' expression ')'
                    {
                    dbg.location(87,5);
                    match(input,20,FOLLOW_20_in_factor634); 
                    dbg.location(87,9);
                    pushFollow(FOLLOW_expression_in_factor636);
                    expression();

                    state._fsp--;

                    dbg.location(87,20);
                    match(input,21,FOLLOW_21_in_factor638); 

                    }
                    break;

            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(88, 1);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "factor");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "factor"



    // $ANTLR start "arrayaccess"
    // /home/mamsaac/Desktop/David/spirit.g:90:1: arrayaccess : IDENTIFIER '[' expression ']' ;
    public final void arrayaccess() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "arrayaccess");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(90, 0);

        try {
            // /home/mamsaac/Desktop/David/spirit.g:91:2: ( IDENTIFIER '[' expression ']' )
            dbg.enterAlt(1);

            // /home/mamsaac/Desktop/David/spirit.g:91:4: IDENTIFIER '[' expression ']'
            {
            dbg.location(91,4);
            match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_arrayaccess649); 
            dbg.location(91,14);
            match(input,27,FOLLOW_27_in_arrayaccess650); 
            dbg.location(91,18);
            pushFollow(FOLLOW_expression_in_arrayaccess652);
            expression();

            state._fsp--;

            dbg.location(91,29);
            match(input,28,FOLLOW_28_in_arrayaccess654); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(91, 31);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "arrayaccess");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "arrayaccess"



    // $ANTLR start "read"
    // /home/mamsaac/Desktop/David/spirit.g:93:1: read : ( 'readint' | 'readdouble' | 'readchar' ) '(' ')' ;
    public final void read() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "read");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(93, 0);

        try {
            // /home/mamsaac/Desktop/David/spirit.g:93:6: ( ( 'readint' | 'readdouble' | 'readchar' ) '(' ')' )
            dbg.enterAlt(1);

            // /home/mamsaac/Desktop/David/spirit.g:93:8: ( 'readint' | 'readdouble' | 'readchar' ) '(' ')'
            {
            dbg.location(93,8);
            if ( (input.LA(1) >= 42 && input.LA(1) <= 44) ) {
                input.consume();
                state.errorRecovery=false;
            }
            else {
                MismatchedSetException mse = new MismatchedSetException(null,input);
                dbg.recognitionException(mse);
                throw mse;
            }

            dbg.location(93,48);
            match(input,20,FOLLOW_20_in_read675); 
            dbg.location(93,52);
            match(input,21,FOLLOW_21_in_read677); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(93, 54);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "read");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "read"



    // $ANTLR start "invocation"
    // /home/mamsaac/Desktop/David/spirit.g:95:1: invocation : ( IDENTIFIER | 'this' ) '.' IDENTIFIER '(' ( arguments )? ')' ;
    public final void invocation() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "invocation");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(95, 0);

        try {
            // /home/mamsaac/Desktop/David/spirit.g:96:2: ( ( IDENTIFIER | 'this' ) '.' IDENTIFIER '(' ( arguments )? ')' )
            dbg.enterAlt(1);

            // /home/mamsaac/Desktop/David/spirit.g:96:5: ( IDENTIFIER | 'this' ) '.' IDENTIFIER '(' ( arguments )? ')'
            {
            dbg.location(96,5);
            if ( input.LA(1)==IDENTIFIER||input.LA(1)==46 ) {
                input.consume();
                state.errorRecovery=false;
            }
            else {
                MismatchedSetException mse = new MismatchedSetException(null,input);
                dbg.recognitionException(mse);
                throw mse;
            }

            dbg.location(96,27);
            match(input,23,FOLLOW_23_in_invocation695); 
            dbg.location(96,31);
            match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_invocation697); 
            dbg.location(96,42);
            match(input,20,FOLLOW_20_in_invocation699); 
            dbg.location(96,46);
            // /home/mamsaac/Desktop/David/spirit.g:96:46: ( arguments )?
            int alt29=2;
            try { dbg.enterSubRule(29);
            try { dbg.enterDecision(29, decisionCanBacktrack[29]);

            int LA29_0 = input.LA(1);

            if ( (LA29_0==CHAR||LA29_0==FLOAT||(LA29_0 >= IDENTIFIER && LA29_0 <= INTEGER)||LA29_0==20||(LA29_0 >= 42 && LA29_0 <= 44)||LA29_0==46) ) {
                alt29=1;
            }
            } finally {dbg.exitDecision(29);}

            switch (alt29) {
                case 1 :
                    dbg.enterAlt(1);

                    // /home/mamsaac/Desktop/David/spirit.g:96:46: arguments
                    {
                    dbg.location(96,46);
                    pushFollow(FOLLOW_arguments_in_invocation701);
                    arguments();

                    state._fsp--;


                    }
                    break;

            }
            } finally {dbg.exitSubRule(29);}

            dbg.location(96,57);
            match(input,21,FOLLOW_21_in_invocation704); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(96, 59);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "invocation");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "invocation"



    // $ANTLR start "arguments"
    // /home/mamsaac/Desktop/David/spirit.g:98:1: arguments : expression ( ',' expression )* ;
    public final void arguments() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "arguments");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(98, 0);

        try {
            // /home/mamsaac/Desktop/David/spirit.g:99:2: ( expression ( ',' expression )* )
            dbg.enterAlt(1);

            // /home/mamsaac/Desktop/David/spirit.g:99:4: expression ( ',' expression )*
            {
            dbg.location(99,4);
            pushFollow(FOLLOW_expression_in_arguments714);
            expression();

            state._fsp--;

            dbg.location(99,15);
            // /home/mamsaac/Desktop/David/spirit.g:99:15: ( ',' expression )*
            try { dbg.enterSubRule(30);

            loop30:
            do {
                int alt30=2;
                try { dbg.enterDecision(30, decisionCanBacktrack[30]);

                int LA30_0 = input.LA(1);

                if ( (LA30_0==22) ) {
                    alt30=1;
                }


                } finally {dbg.exitDecision(30);}

                switch (alt30) {
            	case 1 :
            	    dbg.enterAlt(1);

            	    // /home/mamsaac/Desktop/David/spirit.g:99:16: ',' expression
            	    {
            	    dbg.location(99,16);
            	    match(input,22,FOLLOW_22_in_arguments717); 
            	    dbg.location(99,20);
            	    pushFollow(FOLLOW_expression_in_arguments719);
            	    expression();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop30;
                }
            } while (true);
            } finally {dbg.exitSubRule(30);}


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(99, 31);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "arguments");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "arguments"

    // Delegated rules


 

    public static final BitSet FOLLOW_classdeclaration_in_goal26 = new BitSet(new long[]{0x0000000080000000L});
    public static final BitSet FOLLOW_mainclass_in_goal29 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_31_in_mainclass39 = new BitSet(new long[]{0x0000000004000000L});
    public static final BitSet FOLLOW_26_in_mainclass41 = new BitSet(new long[]{0x0002000000000000L});
    public static final BitSet FOLLOW_49_in_mainclass43 = new BitSet(new long[]{0x000000A860002000L});
    public static final BitSet FOLLOW_vardeclaration_in_mainclass45 = new BitSet(new long[]{0x000000A860002000L});
    public static final BitSet FOLLOW_methoddeclaration_in_mainclass48 = new BitSet(new long[]{0x0000008000000000L});
    public static final BitSet FOLLOW_methodmain_in_mainclass51 = new BitSet(new long[]{0x0004000000000000L});
    public static final BitSet FOLLOW_50_in_mainclass53 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_39_in_methodmain63 = new BitSet(new long[]{0x0000800000000000L});
    public static final BitSet FOLLOW_47_in_methodmain65 = new BitSet(new long[]{0x0000004000000000L});
    public static final BitSet FOLLOW_38_in_methodmain67 = new BitSet(new long[]{0x0000000000100000L});
    public static final BitSet FOLLOW_20_in_methodmain69 = new BitSet(new long[]{0x0000000000200000L});
    public static final BitSet FOLLOW_21_in_methodmain71 = new BitSet(new long[]{0x0002000000000000L});
    public static final BitSet FOLLOW_49_in_methodmain73 = new BitSet(new long[]{0x0005623861002000L});
    public static final BitSet FOLLOW_vardeclaration_in_methodmain75 = new BitSet(new long[]{0x0005623861002000L});
    public static final BitSet FOLLOW_statement_in_methodmain78 = new BitSet(new long[]{0x0005621001002000L});
    public static final BitSet FOLLOW_50_in_methodmain81 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_31_in_classdeclaration93 = new BitSet(new long[]{0x0000000000002000L});
    public static final BitSet FOLLOW_IDENTIFIER_in_classdeclaration95 = new BitSet(new long[]{0x0002000400000000L});
    public static final BitSet FOLLOW_inherits_in_classdeclaration97 = new BitSet(new long[]{0x0002000000000000L});
    public static final BitSet FOLLOW_49_in_classdeclaration101 = new BitSet(new long[]{0x000400A860002000L});
    public static final BitSet FOLLOW_vardeclaration_in_classdeclaration103 = new BitSet(new long[]{0x000400A860002000L});
    public static final BitSet FOLLOW_methoddeclaration_in_classdeclaration106 = new BitSet(new long[]{0x0004008000000000L});
    public static final BitSet FOLLOW_50_in_classdeclaration109 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_34_in_inherits119 = new BitSet(new long[]{0x0000000000002000L});
    public static final BitSet FOLLOW_IDENTIFIER_in_inherits121 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_type_in_vardeclaration130 = new BitSet(new long[]{0x0000000000002000L});
    public static final BitSet FOLLOW_IDENTIFIER_in_vardeclaration132 = new BitSet(new long[]{0x0000000001000000L});
    public static final BitSet FOLLOW_24_in_vardeclaration134 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_39_in_methoddeclaration147 = new BitSet(new long[]{0x0000802860002000L});
    public static final BitSet FOLLOW_primitivetype_in_methoddeclaration150 = new BitSet(new long[]{0x0000000000002000L});
    public static final BitSet FOLLOW_classtype_in_methoddeclaration154 = new BitSet(new long[]{0x0000000000002000L});
    public static final BitSet FOLLOW_47_in_methoddeclaration158 = new BitSet(new long[]{0x0000000000002000L});
    public static final BitSet FOLLOW_IDENTIFIER_in_methoddeclaration161 = new BitSet(new long[]{0x0000000000100000L});
    public static final BitSet FOLLOW_20_in_methoddeclaration163 = new BitSet(new long[]{0x0000002860202000L});
    public static final BitSet FOLLOW_parameters_in_methoddeclaration165 = new BitSet(new long[]{0x0000000000200000L});
    public static final BitSet FOLLOW_21_in_methoddeclaration168 = new BitSet(new long[]{0x0002000000000000L});
    public static final BitSet FOLLOW_49_in_methoddeclaration170 = new BitSet(new long[]{0x0005623861002000L});
    public static final BitSet FOLLOW_vardeclaration_in_methoddeclaration172 = new BitSet(new long[]{0x0005623861002000L});
    public static final BitSet FOLLOW_statement_in_methoddeclaration175 = new BitSet(new long[]{0x0005621001002000L});
    public static final BitSet FOLLOW_50_in_methoddeclaration178 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_type_in_parameters188 = new BitSet(new long[]{0x0000000000002000L});
    public static final BitSet FOLLOW_IDENTIFIER_in_parameters190 = new BitSet(new long[]{0x0000000000400002L});
    public static final BitSet FOLLOW_22_in_parameters193 = new BitSet(new long[]{0x0000002860002000L});
    public static final BitSet FOLLOW_type_in_parameters195 = new BitSet(new long[]{0x0000000000002000L});
    public static final BitSet FOLLOW_IDENTIFIER_in_parameters197 = new BitSet(new long[]{0x0000000000400002L});
    public static final BitSet FOLLOW_primitivetype_in_arraytype230 = new BitSet(new long[]{0x0000000008000000L});
    public static final BitSet FOLLOW_27_in_arraytype231 = new BitSet(new long[]{0x0000000000004000L});
    public static final BitSet FOLLOW_INTEGER_in_arraytype233 = new BitSet(new long[]{0x0000000010000000L});
    public static final BitSet FOLLOW_28_in_arraytype235 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_IDENTIFIER_in_classtype245 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_primitivetype_in_type256 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_arraytype_in_type260 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_classtype_in_type264 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_assignment_in_statement273 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_conditional_in_statement278 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_invocation_in_statement282 = new BitSet(new long[]{0x0000000001000000L});
    public static final BitSet FOLLOW_24_in_statement284 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_loop_in_statement288 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_print_in_statement292 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_returnstmt_in_statement296 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_24_in_statement300 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_lhsassignment_in_assignment311 = new BitSet(new long[]{0x0000000002000000L});
    public static final BitSet FOLLOW_25_in_assignment313 = new BitSet(new long[]{0x00005D0000106880L});
    public static final BitSet FOLLOW_rhsassignment_in_assignment315 = new BitSet(new long[]{0x0000000001000000L});
    public static final BitSet FOLLOW_24_in_assignment317 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_arrayaccess_in_lhsassignment328 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_IDENTIFIER_in_lhsassignment334 = new BitSet(new long[]{0x0000000000800000L});
    public static final BitSet FOLLOW_23_in_lhsassignment336 = new BitSet(new long[]{0x0000000000002000L});
    public static final BitSet FOLLOW_IDENTIFIER_in_lhsassignment338 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_46_in_lhsassignment345 = new BitSet(new long[]{0x0000000000800000L});
    public static final BitSet FOLLOW_23_in_lhsassignment347 = new BitSet(new long[]{0x0000000000002000L});
    public static final BitSet FOLLOW_IDENTIFIER_in_lhsassignment349 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_IDENTIFIER_in_lhsassignment357 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_expression_in_rhsassignment372 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_40_in_rhsassignment376 = new BitSet(new long[]{0x0000000000002000L});
    public static final BitSet FOLLOW_IDENTIFIER_in_rhsassignment378 = new BitSet(new long[]{0x0000000000100000L});
    public static final BitSet FOLLOW_20_in_rhsassignment380 = new BitSet(new long[]{0x0000000000200000L});
    public static final BitSet FOLLOW_21_in_rhsassignment382 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_45_in_returnstmt393 = new BitSet(new long[]{0x00005C0001106880L});
    public static final BitSet FOLLOW_expression_in_returnstmt395 = new BitSet(new long[]{0x0000000001000000L});
    public static final BitSet FOLLOW_24_in_returnstmt398 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_36_in_conditional410 = new BitSet(new long[]{0x0000000000100000L});
    public static final BitSet FOLLOW_20_in_conditional412 = new BitSet(new long[]{0x00005C0000106880L});
    public static final BitSet FOLLOW_expression_in_conditional414 = new BitSet(new long[]{0x0000000000200000L});
    public static final BitSet FOLLOW_21_in_conditional416 = new BitSet(new long[]{0x0002000000000000L});
    public static final BitSet FOLLOW_49_in_conditional418 = new BitSet(new long[]{0x0005621001002000L});
    public static final BitSet FOLLOW_statement_in_conditional420 = new BitSet(new long[]{0x0005621001002000L});
    public static final BitSet FOLLOW_50_in_conditional423 = new BitSet(new long[]{0x0000000300000002L});
    public static final BitSet FOLLOW_33_in_conditional426 = new BitSet(new long[]{0x0000000000100000L});
    public static final BitSet FOLLOW_20_in_conditional428 = new BitSet(new long[]{0x00005C0000106880L});
    public static final BitSet FOLLOW_expression_in_conditional430 = new BitSet(new long[]{0x0000000000200000L});
    public static final BitSet FOLLOW_21_in_conditional432 = new BitSet(new long[]{0x0002000000000000L});
    public static final BitSet FOLLOW_49_in_conditional434 = new BitSet(new long[]{0x0005621001002000L});
    public static final BitSet FOLLOW_statement_in_conditional436 = new BitSet(new long[]{0x0005621001002000L});
    public static final BitSet FOLLOW_50_in_conditional439 = new BitSet(new long[]{0x0000000300000002L});
    public static final BitSet FOLLOW_32_in_conditional445 = new BitSet(new long[]{0x0002000000000000L});
    public static final BitSet FOLLOW_49_in_conditional447 = new BitSet(new long[]{0x0005621001002000L});
    public static final BitSet FOLLOW_statement_in_conditional449 = new BitSet(new long[]{0x0005621001002000L});
    public static final BitSet FOLLOW_50_in_conditional452 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_48_in_loop467 = new BitSet(new long[]{0x0000000000100000L});
    public static final BitSet FOLLOW_20_in_loop469 = new BitSet(new long[]{0x00005C0000106880L});
    public static final BitSet FOLLOW_expression_in_loop471 = new BitSet(new long[]{0x0000000000200000L});
    public static final BitSet FOLLOW_21_in_loop473 = new BitSet(new long[]{0x0002000000000000L});
    public static final BitSet FOLLOW_49_in_loop475 = new BitSet(new long[]{0x0005621001002000L});
    public static final BitSet FOLLOW_statement_in_loop477 = new BitSet(new long[]{0x0005621001002000L});
    public static final BitSet FOLLOW_50_in_loop480 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_41_in_print492 = new BitSet(new long[]{0x0000000000100000L});
    public static final BitSet FOLLOW_20_in_print494 = new BitSet(new long[]{0x00005C0000106880L});
    public static final BitSet FOLLOW_expression_in_print496 = new BitSet(new long[]{0x0000000000200000L});
    public static final BitSet FOLLOW_21_in_print498 = new BitSet(new long[]{0x0000000001000000L});
    public static final BitSet FOLLOW_24_in_print500 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_exp_in_expression511 = new BitSet(new long[]{0x0000000000000102L});
    public static final BitSet FOLLOW_COMPARITIONOPERATORS_in_expression514 = new BitSet(new long[]{0x00005C0000106880L});
    public static final BitSet FOLLOW_exp_in_expression516 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_term_in_exp529 = new BitSet(new long[]{0x0000000000000012L});
    public static final BitSet FOLLOW_ADDITIONSUBSTRACTIONOPERATORS_in_exp532 = new BitSet(new long[]{0x00005C0000106880L});
    public static final BitSet FOLLOW_term_in_exp534 = new BitSet(new long[]{0x0000000000000012L});
    public static final BitSet FOLLOW_factor_in_term547 = new BitSet(new long[]{0x0000000000008002L});
    public static final BitSet FOLLOW_MULTIPLICATIONDIVISIONOPERATORS_in_term550 = new BitSet(new long[]{0x00005C0000106880L});
    public static final BitSet FOLLOW_factor_in_term552 = new BitSet(new long[]{0x0000000000008002L});
    public static final BitSet FOLLOW_IDENTIFIER_in_factor566 = new BitSet(new long[]{0x0000000000800000L});
    public static final BitSet FOLLOW_23_in_factor568 = new BitSet(new long[]{0x0000000000002000L});
    public static final BitSet FOLLOW_IDENTIFIER_in_factor570 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_46_in_factor577 = new BitSet(new long[]{0x0000000000800000L});
    public static final BitSet FOLLOW_23_in_factor579 = new BitSet(new long[]{0x0000000000002000L});
    public static final BitSet FOLLOW_IDENTIFIER_in_factor581 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_IDENTIFIER_in_factor589 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_INTEGER_in_factor595 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_FLOAT_in_factor601 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_CHAR_in_factor607 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_read_in_factor613 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_invocation_in_factor619 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_arrayaccess_in_factor625 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_20_in_factor634 = new BitSet(new long[]{0x00005C0000106880L});
    public static final BitSet FOLLOW_expression_in_factor636 = new BitSet(new long[]{0x0000000000200000L});
    public static final BitSet FOLLOW_21_in_factor638 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_IDENTIFIER_in_arrayaccess649 = new BitSet(new long[]{0x0000000008000000L});
    public static final BitSet FOLLOW_27_in_arrayaccess650 = new BitSet(new long[]{0x00005C0000106880L});
    public static final BitSet FOLLOW_expression_in_arrayaccess652 = new BitSet(new long[]{0x0000000010000000L});
    public static final BitSet FOLLOW_28_in_arrayaccess654 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_set_in_read663 = new BitSet(new long[]{0x0000000000100000L});
    public static final BitSet FOLLOW_20_in_read675 = new BitSet(new long[]{0x0000000000200000L});
    public static final BitSet FOLLOW_21_in_read677 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_set_in_invocation687 = new BitSet(new long[]{0x0000000000800000L});
    public static final BitSet FOLLOW_23_in_invocation695 = new BitSet(new long[]{0x0000000000002000L});
    public static final BitSet FOLLOW_IDENTIFIER_in_invocation697 = new BitSet(new long[]{0x0000000000100000L});
    public static final BitSet FOLLOW_20_in_invocation699 = new BitSet(new long[]{0x00005C0000306880L});
    public static final BitSet FOLLOW_arguments_in_invocation701 = new BitSet(new long[]{0x0000000000200000L});
    public static final BitSet FOLLOW_21_in_invocation704 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_expression_in_arguments714 = new BitSet(new long[]{0x0000000000400002L});
    public static final BitSet FOLLOW_22_in_arguments717 = new BitSet(new long[]{0x00005C0000106880L});
    public static final BitSet FOLLOW_expression_in_arguments719 = new BitSet(new long[]{0x0000000000400002L});

}