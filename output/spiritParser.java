// $ANTLR 3.4 C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g 2012-02-23 16:38:01

import org.antlr.runtime.*;
import java.util.Stack;
import java.util.List;
import java.util.ArrayList;

import org.antlr.runtime.debug.*;
import java.io.IOException;
@SuppressWarnings({"all", "warnings", "unchecked"})
public class spiritParser extends DebugParser {
    public static final String[] tokenNames = new String[] {
        "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ADDITIONSUBSTRACTION", "ARRAYIDENTIFIER", "BINARYOPERATOR", "FLOAT", "IDENTIFIER", "INTEGER", "MULTIPLICATIONDIVISION", "STRING", "'!'", "'('", "')'", "','", "'.'", "';'", "'='", "'['", "']'", "'boolean'", "'char'", "'class'", "'else'", "'elsif'", "'false'", "'float'", "'if'", "'int'", "'main'", "'new'", "'print'", "'return'", "'static'", "'this'", "'true'", "'void'", "'while'", "'{'", "'}'"
    };

    public static final int EOF=-1;
    public static final int T__12=12;
    public static final int T__13=13;
    public static final int T__14=14;
    public static final int T__15=15;
    public static final int T__16=16;
    public static final int T__17=17;
    public static final int T__18=18;
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
    public static final int ADDITIONSUBSTRACTION=4;
    public static final int ARRAYIDENTIFIER=5;
    public static final int BINARYOPERATOR=6;
    public static final int FLOAT=7;
    public static final int IDENTIFIER=8;
    public static final int INTEGER=9;
    public static final int MULTIPLICATIONDIVISION=10;
    public static final int STRING=11;

    // delegates
    public Parser[] getDelegates() {
        return new Parser[] {};
    }

    // delegators


public static final String[] ruleNames = new String[] {
    "invalidRule", "expressionalpha", "type", "print", "expression", "methoddeclaration", 
    "goal", "vardeclaration", "identifier", "statement", "conditional", 
    "loop", "assignation", "classdeclaration", "mainclass"
};

public static final boolean[] decisionCanBacktrack = new boolean[] {
    false, // invalid decision
    false, false, false, false, false, false, false, false, false, false, 
        false, false, false, false, false, false, false, false
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
    public String getGrammarFileName() { return "C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g"; }



    // $ANTLR start "goal"
    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:5:1: goal : mainclass ( classdeclaration )* ;
    public final void goal() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "goal");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(5, 0);

        try {
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:6:2: ( mainclass ( classdeclaration )* )
            dbg.enterAlt(1);

            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:6:4: mainclass ( classdeclaration )*
            {
            dbg.location(6,4);
            pushFollow(FOLLOW_mainclass_in_goal27);
            mainclass();

            state._fsp--;

            dbg.location(6,14);
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:6:14: ( classdeclaration )*
            try { dbg.enterSubRule(1);

            loop1:
            do {
                int alt1=2;
                try { dbg.enterDecision(1, decisionCanBacktrack[1]);

                int LA1_0 = input.LA(1);

                if ( (LA1_0==23) ) {
                    alt1=1;
                }


                } finally {dbg.exitDecision(1);}

                switch (alt1) {
            	case 1 :
            	    dbg.enterAlt(1);

            	    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:6:16: classdeclaration
            	    {
            	    dbg.location(6,16);
            	    pushFollow(FOLLOW_classdeclaration_in_goal31);
            	    classdeclaration();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop1;
                }
            } while (true);
            } finally {dbg.exitSubRule(1);}


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(6, 34);

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
    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:8:1: mainclass : 'class' identifier '{' 'static' 'void' 'main' '(' ')' '{' statement '}' '}' ;
    public final void mainclass() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "mainclass");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(8, 0);

        try {
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:9:2: ( 'class' identifier '{' 'static' 'void' 'main' '(' ')' '{' statement '}' '}' )
            dbg.enterAlt(1);

            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:9:4: 'class' identifier '{' 'static' 'void' 'main' '(' ')' '{' statement '}' '}'
            {
            dbg.location(9,4);
            match(input,23,FOLLOW_23_in_mainclass44); 
            dbg.location(9,12);
            pushFollow(FOLLOW_identifier_in_mainclass46);
            identifier();

            state._fsp--;

            dbg.location(9,23);
            match(input,39,FOLLOW_39_in_mainclass48); 
            dbg.location(9,27);
            match(input,34,FOLLOW_34_in_mainclass50); 
            dbg.location(9,36);
            match(input,37,FOLLOW_37_in_mainclass52); 
            dbg.location(9,43);
            match(input,30,FOLLOW_30_in_mainclass54); 
            dbg.location(9,50);
            match(input,13,FOLLOW_13_in_mainclass56); 
            dbg.location(9,54);
            match(input,14,FOLLOW_14_in_mainclass58); 
            dbg.location(9,58);
            match(input,39,FOLLOW_39_in_mainclass60); 
            dbg.location(9,62);
            pushFollow(FOLLOW_statement_in_mainclass62);
            statement();

            state._fsp--;

            dbg.location(9,72);
            match(input,40,FOLLOW_40_in_mainclass64); 
            dbg.location(9,76);
            match(input,40,FOLLOW_40_in_mainclass66); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(9, 78);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "mainclass");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "mainclass"



    // $ANTLR start "classdeclaration"
    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:12:1: classdeclaration : 'class' identifier '{' ( vardeclaration )* ( methoddeclaration )* '}' ;
    public final void classdeclaration() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "classdeclaration");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(12, 0);

        try {
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:13:2: ( 'class' identifier '{' ( vardeclaration )* ( methoddeclaration )* '}' )
            dbg.enterAlt(1);

            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:13:5: 'class' identifier '{' ( vardeclaration )* ( methoddeclaration )* '}'
            {
            dbg.location(13,5);
            match(input,23,FOLLOW_23_in_classdeclaration79); 
            dbg.location(13,13);
            pushFollow(FOLLOW_identifier_in_classdeclaration81);
            identifier();

            state._fsp--;

            dbg.location(13,24);
            match(input,39,FOLLOW_39_in_classdeclaration83); 
            dbg.location(13,28);
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:13:28: ( vardeclaration )*
            try { dbg.enterSubRule(2);

            loop2:
            do {
                int alt2=2;
                try { dbg.enterDecision(2, decisionCanBacktrack[2]);

                switch ( input.LA(1) ) {
                case 29:
                    {
                    int LA2_1 = input.LA(2);

                    if ( (LA2_1==ARRAYIDENTIFIER||LA2_1==IDENTIFIER) ) {
                        int LA2_7 = input.LA(3);

                        if ( (LA2_7==17) ) {
                            alt2=1;
                        }


                    }


                    }
                    break;
                case 22:
                    {
                    int LA2_2 = input.LA(2);

                    if ( (LA2_2==ARRAYIDENTIFIER||LA2_2==IDENTIFIER) ) {
                        int LA2_7 = input.LA(3);

                        if ( (LA2_7==17) ) {
                            alt2=1;
                        }


                    }


                    }
                    break;
                case 27:
                    {
                    int LA2_3 = input.LA(2);

                    if ( (LA2_3==ARRAYIDENTIFIER||LA2_3==IDENTIFIER) ) {
                        int LA2_7 = input.LA(3);

                        if ( (LA2_7==17) ) {
                            alt2=1;
                        }


                    }


                    }
                    break;
                case 21:
                    {
                    int LA2_4 = input.LA(2);

                    if ( (LA2_4==ARRAYIDENTIFIER||LA2_4==IDENTIFIER) ) {
                        int LA2_7 = input.LA(3);

                        if ( (LA2_7==17) ) {
                            alt2=1;
                        }


                    }


                    }
                    break;
                case ARRAYIDENTIFIER:
                case IDENTIFIER:
                    {
                    int LA2_5 = input.LA(2);

                    if ( (LA2_5==ARRAYIDENTIFIER||LA2_5==IDENTIFIER) ) {
                        int LA2_7 = input.LA(3);

                        if ( (LA2_7==17) ) {
                            alt2=1;
                        }


                    }


                    }
                    break;

                }

                } finally {dbg.exitDecision(2);}

                switch (alt2) {
            	case 1 :
            	    dbg.enterAlt(1);

            	    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:13:29: vardeclaration
            	    {
            	    dbg.location(13,29);
            	    pushFollow(FOLLOW_vardeclaration_in_classdeclaration86);
            	    vardeclaration();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop2;
                }
            } while (true);
            } finally {dbg.exitSubRule(2);}

            dbg.location(13,46);
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:13:46: ( methoddeclaration )*
            try { dbg.enterSubRule(3);

            loop3:
            do {
                int alt3=2;
                try { dbg.enterDecision(3, decisionCanBacktrack[3]);

                int LA3_0 = input.LA(1);

                if ( (LA3_0==ARRAYIDENTIFIER||LA3_0==IDENTIFIER||(LA3_0 >= 21 && LA3_0 <= 22)||LA3_0==27||LA3_0==29) ) {
                    alt3=1;
                }


                } finally {dbg.exitDecision(3);}

                switch (alt3) {
            	case 1 :
            	    dbg.enterAlt(1);

            	    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:13:47: methoddeclaration
            	    {
            	    dbg.location(13,47);
            	    pushFollow(FOLLOW_methoddeclaration_in_classdeclaration91);
            	    methoddeclaration();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop3;
                }
            } while (true);
            } finally {dbg.exitSubRule(3);}

            dbg.location(13,67);
            match(input,40,FOLLOW_40_in_classdeclaration95); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(13, 69);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "classdeclaration");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "classdeclaration"



    // $ANTLR start "vardeclaration"
    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:15:1: vardeclaration : type identifier ';' ;
    public final void vardeclaration() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "vardeclaration");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(15, 0);

        try {
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:16:2: ( type identifier ';' )
            dbg.enterAlt(1);

            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:16:4: type identifier ';'
            {
            dbg.location(16,4);
            pushFollow(FOLLOW_type_in_vardeclaration104);
            type();

            state._fsp--;

            dbg.location(16,9);
            pushFollow(FOLLOW_identifier_in_vardeclaration106);
            identifier();

            state._fsp--;

            dbg.location(16,20);
            match(input,17,FOLLOW_17_in_vardeclaration108); 

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
            dbg.exitRule(getGrammarFileName(), "vardeclaration");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "vardeclaration"



    // $ANTLR start "methoddeclaration"
    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:18:1: methoddeclaration : type identifier '(' ( type identifier ( ',' type identifier )* )? ')' '{' ( vardeclaration )* ( statement )* 'return' expression ';' '}' ;
    public final void methoddeclaration() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "methoddeclaration");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(18, 0);

        try {
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:19:2: ( type identifier '(' ( type identifier ( ',' type identifier )* )? ')' '{' ( vardeclaration )* ( statement )* 'return' expression ';' '}' )
            dbg.enterAlt(1);

            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:19:5: type identifier '(' ( type identifier ( ',' type identifier )* )? ')' '{' ( vardeclaration )* ( statement )* 'return' expression ';' '}'
            {
            dbg.location(19,5);
            pushFollow(FOLLOW_type_in_methoddeclaration121);
            type();

            state._fsp--;

            dbg.location(19,10);
            pushFollow(FOLLOW_identifier_in_methoddeclaration123);
            identifier();

            state._fsp--;

            dbg.location(19,21);
            match(input,13,FOLLOW_13_in_methoddeclaration125); 
            dbg.location(19,25);
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:19:25: ( type identifier ( ',' type identifier )* )?
            int alt5=2;
            try { dbg.enterSubRule(5);
            try { dbg.enterDecision(5, decisionCanBacktrack[5]);

            int LA5_0 = input.LA(1);

            if ( (LA5_0==ARRAYIDENTIFIER||LA5_0==IDENTIFIER||(LA5_0 >= 21 && LA5_0 <= 22)||LA5_0==27||LA5_0==29) ) {
                alt5=1;
            }
            } finally {dbg.exitDecision(5);}

            switch (alt5) {
                case 1 :
                    dbg.enterAlt(1);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:19:27: type identifier ( ',' type identifier )*
                    {
                    dbg.location(19,27);
                    pushFollow(FOLLOW_type_in_methoddeclaration129);
                    type();

                    state._fsp--;

                    dbg.location(19,32);
                    pushFollow(FOLLOW_identifier_in_methoddeclaration131);
                    identifier();

                    state._fsp--;

                    dbg.location(19,43);
                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:19:43: ( ',' type identifier )*
                    try { dbg.enterSubRule(4);

                    loop4:
                    do {
                        int alt4=2;
                        try { dbg.enterDecision(4, decisionCanBacktrack[4]);

                        int LA4_0 = input.LA(1);

                        if ( (LA4_0==15) ) {
                            alt4=1;
                        }


                        } finally {dbg.exitDecision(4);}

                        switch (alt4) {
                    	case 1 :
                    	    dbg.enterAlt(1);

                    	    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:19:44: ',' type identifier
                    	    {
                    	    dbg.location(19,44);
                    	    match(input,15,FOLLOW_15_in_methoddeclaration134); 
                    	    dbg.location(19,48);
                    	    pushFollow(FOLLOW_type_in_methoddeclaration136);
                    	    type();

                    	    state._fsp--;

                    	    dbg.location(19,53);
                    	    pushFollow(FOLLOW_identifier_in_methoddeclaration138);
                    	    identifier();

                    	    state._fsp--;


                    	    }
                    	    break;

                    	default :
                    	    break loop4;
                        }
                    } while (true);
                    } finally {dbg.exitSubRule(4);}


                    }
                    break;

            }
            } finally {dbg.exitSubRule(5);}

            dbg.location(19,68);
            match(input,14,FOLLOW_14_in_methoddeclaration144); 
            dbg.location(19,72);
            match(input,39,FOLLOW_39_in_methoddeclaration146); 
            dbg.location(19,76);
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:19:76: ( vardeclaration )*
            try { dbg.enterSubRule(6);

            loop6:
            do {
                int alt6=2;
                try { dbg.enterDecision(6, decisionCanBacktrack[6]);

                int LA6_0 = input.LA(1);

                if ( (LA6_0==ARRAYIDENTIFIER||LA6_0==IDENTIFIER) ) {
                    int LA6_2 = input.LA(2);

                    if ( (LA6_2==ARRAYIDENTIFIER||LA6_2==IDENTIFIER) ) {
                        alt6=1;
                    }


                }
                else if ( ((LA6_0 >= 21 && LA6_0 <= 22)||LA6_0==27||LA6_0==29) ) {
                    alt6=1;
                }


                } finally {dbg.exitDecision(6);}

                switch (alt6) {
            	case 1 :
            	    dbg.enterAlt(1);

            	    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:19:77: vardeclaration
            	    {
            	    dbg.location(19,77);
            	    pushFollow(FOLLOW_vardeclaration_in_methoddeclaration149);
            	    vardeclaration();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop6;
                }
            } while (true);
            } finally {dbg.exitSubRule(6);}

            dbg.location(19,94);
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:19:94: ( statement )*
            try { dbg.enterSubRule(7);

            loop7:
            do {
                int alt7=2;
                try { dbg.enterDecision(7, decisionCanBacktrack[7]);

                int LA7_0 = input.LA(1);

                if ( (LA7_0==ARRAYIDENTIFIER||LA7_0==IDENTIFIER||LA7_0==28||LA7_0==32||(LA7_0 >= 38 && LA7_0 <= 39)) ) {
                    alt7=1;
                }


                } finally {dbg.exitDecision(7);}

                switch (alt7) {
            	case 1 :
            	    dbg.enterAlt(1);

            	    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:19:95: statement
            	    {
            	    dbg.location(19,95);
            	    pushFollow(FOLLOW_statement_in_methoddeclaration154);
            	    statement();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop7;
                }
            } while (true);
            } finally {dbg.exitSubRule(7);}

            dbg.location(19,107);
            match(input,33,FOLLOW_33_in_methoddeclaration158); 
            dbg.location(19,116);
            pushFollow(FOLLOW_expression_in_methoddeclaration160);
            expression();

            state._fsp--;

            dbg.location(19,127);
            match(input,17,FOLLOW_17_in_methoddeclaration162); 
            dbg.location(19,131);
            match(input,40,FOLLOW_40_in_methoddeclaration164); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(19, 133);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "methoddeclaration");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "methoddeclaration"



    // $ANTLR start "type"
    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:21:1: type : ( 'int' | 'char' | 'float' | 'boolean' | identifier );
    public final void type() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "type");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(21, 0);

        try {
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:22:2: ( 'int' | 'char' | 'float' | 'boolean' | identifier )
            int alt8=5;
            try { dbg.enterDecision(8, decisionCanBacktrack[8]);

            switch ( input.LA(1) ) {
            case 29:
                {
                alt8=1;
                }
                break;
            case 22:
                {
                alt8=2;
                }
                break;
            case 27:
                {
                alt8=3;
                }
                break;
            case 21:
                {
                alt8=4;
                }
                break;
            case ARRAYIDENTIFIER:
            case IDENTIFIER:
                {
                alt8=5;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 8, 0, input);

                dbg.recognitionException(nvae);
                throw nvae;

            }

            } finally {dbg.exitDecision(8);}

            switch (alt8) {
                case 1 :
                    dbg.enterAlt(1);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:22:5: 'int'
                    {
                    dbg.location(22,5);
                    match(input,29,FOLLOW_29_in_type175); 

                    }
                    break;
                case 2 :
                    dbg.enterAlt(2);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:22:13: 'char'
                    {
                    dbg.location(22,13);
                    match(input,22,FOLLOW_22_in_type179); 

                    }
                    break;
                case 3 :
                    dbg.enterAlt(3);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:22:22: 'float'
                    {
                    dbg.location(22,22);
                    match(input,27,FOLLOW_27_in_type183); 

                    }
                    break;
                case 4 :
                    dbg.enterAlt(4);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:22:32: 'boolean'
                    {
                    dbg.location(22,32);
                    match(input,21,FOLLOW_21_in_type187); 

                    }
                    break;
                case 5 :
                    dbg.enterAlt(5);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:22:44: identifier
                    {
                    dbg.location(22,44);
                    pushFollow(FOLLOW_identifier_in_type191);
                    identifier();

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
        dbg.location(22, 53);

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
    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:24:1: statement : ( '{' ( statement )* '}' | conditional | loop | print | assignation );
    public final void statement() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "statement");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(24, 0);

        try {
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:25:2: ( '{' ( statement )* '}' | conditional | loop | print | assignation )
            int alt10=5;
            try { dbg.enterDecision(10, decisionCanBacktrack[10]);

            switch ( input.LA(1) ) {
            case 39:
                {
                alt10=1;
                }
                break;
            case 28:
                {
                alt10=2;
                }
                break;
            case 38:
                {
                alt10=3;
                }
                break;
            case 32:
                {
                alt10=4;
                }
                break;
            case ARRAYIDENTIFIER:
            case IDENTIFIER:
                {
                alt10=5;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 10, 0, input);

                dbg.recognitionException(nvae);
                throw nvae;

            }

            } finally {dbg.exitDecision(10);}

            switch (alt10) {
                case 1 :
                    dbg.enterAlt(1);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:25:5: '{' ( statement )* '}'
                    {
                    dbg.location(25,5);
                    match(input,39,FOLLOW_39_in_statement201); 
                    dbg.location(25,9);
                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:25:9: ( statement )*
                    try { dbg.enterSubRule(9);

                    loop9:
                    do {
                        int alt9=2;
                        try { dbg.enterDecision(9, decisionCanBacktrack[9]);

                        int LA9_0 = input.LA(1);

                        if ( (LA9_0==ARRAYIDENTIFIER||LA9_0==IDENTIFIER||LA9_0==28||LA9_0==32||(LA9_0 >= 38 && LA9_0 <= 39)) ) {
                            alt9=1;
                        }


                        } finally {dbg.exitDecision(9);}

                        switch (alt9) {
                    	case 1 :
                    	    dbg.enterAlt(1);

                    	    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:25:10: statement
                    	    {
                    	    dbg.location(25,10);
                    	    pushFollow(FOLLOW_statement_in_statement204);
                    	    statement();

                    	    state._fsp--;


                    	    }
                    	    break;

                    	default :
                    	    break loop9;
                        }
                    } while (true);
                    } finally {dbg.exitSubRule(9);}

                    dbg.location(25,22);
                    match(input,40,FOLLOW_40_in_statement208); 

                    }
                    break;
                case 2 :
                    dbg.enterAlt(2);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:25:28: conditional
                    {
                    dbg.location(25,28);
                    pushFollow(FOLLOW_conditional_in_statement212);
                    conditional();

                    state._fsp--;


                    }
                    break;
                case 3 :
                    dbg.enterAlt(3);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:25:42: loop
                    {
                    dbg.location(25,42);
                    pushFollow(FOLLOW_loop_in_statement216);
                    loop();

                    state._fsp--;


                    }
                    break;
                case 4 :
                    dbg.enterAlt(4);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:25:49: print
                    {
                    dbg.location(25,49);
                    pushFollow(FOLLOW_print_in_statement220);
                    print();

                    state._fsp--;


                    }
                    break;
                case 5 :
                    dbg.enterAlt(5);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:25:57: assignation
                    {
                    dbg.location(25,57);
                    pushFollow(FOLLOW_assignation_in_statement224);
                    assignation();

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
        dbg.location(25, 68);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "statement");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "statement"



    // $ANTLR start "conditional"
    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:27:1: conditional : 'if' '(' expression ')' statement ( 'elsif' '(' expression ')' statement )* ( 'else' statement )? ;
    public final void conditional() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "conditional");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(27, 0);

        try {
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:28:2: ( 'if' '(' expression ')' statement ( 'elsif' '(' expression ')' statement )* ( 'else' statement )? )
            dbg.enterAlt(1);

            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:28:5: 'if' '(' expression ')' statement ( 'elsif' '(' expression ')' statement )* ( 'else' statement )?
            {
            dbg.location(28,5);
            match(input,28,FOLLOW_28_in_conditional237); 
            dbg.location(28,10);
            match(input,13,FOLLOW_13_in_conditional239); 
            dbg.location(28,14);
            pushFollow(FOLLOW_expression_in_conditional241);
            expression();

            state._fsp--;

            dbg.location(28,25);
            match(input,14,FOLLOW_14_in_conditional243); 
            dbg.location(28,29);
            pushFollow(FOLLOW_statement_in_conditional245);
            statement();

            state._fsp--;

            dbg.location(28,39);
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:28:39: ( 'elsif' '(' expression ')' statement )*
            try { dbg.enterSubRule(11);

            loop11:
            do {
                int alt11=2;
                try { dbg.enterDecision(11, decisionCanBacktrack[11]);

                int LA11_0 = input.LA(1);

                if ( (LA11_0==25) ) {
                    alt11=1;
                }


                } finally {dbg.exitDecision(11);}

                switch (alt11) {
            	case 1 :
            	    dbg.enterAlt(1);

            	    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:28:40: 'elsif' '(' expression ')' statement
            	    {
            	    dbg.location(28,40);
            	    match(input,25,FOLLOW_25_in_conditional248); 
            	    dbg.location(28,48);
            	    match(input,13,FOLLOW_13_in_conditional250); 
            	    dbg.location(28,52);
            	    pushFollow(FOLLOW_expression_in_conditional252);
            	    expression();

            	    state._fsp--;

            	    dbg.location(28,63);
            	    match(input,14,FOLLOW_14_in_conditional254); 
            	    dbg.location(28,67);
            	    pushFollow(FOLLOW_statement_in_conditional256);
            	    statement();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop11;
                }
            } while (true);
            } finally {dbg.exitSubRule(11);}

            dbg.location(28,80);
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:28:80: ( 'else' statement )?
            int alt12=2;
            try { dbg.enterSubRule(12);
            try { dbg.enterDecision(12, decisionCanBacktrack[12]);

            int LA12_0 = input.LA(1);

            if ( (LA12_0==24) ) {
                alt12=1;
            }
            } finally {dbg.exitDecision(12);}

            switch (alt12) {
                case 1 :
                    dbg.enterAlt(1);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:28:81: 'else' statement
                    {
                    dbg.location(28,81);
                    match(input,24,FOLLOW_24_in_conditional262); 
                    dbg.location(28,88);
                    pushFollow(FOLLOW_statement_in_conditional264);
                    statement();

                    state._fsp--;


                    }
                    break;

            }
            } finally {dbg.exitSubRule(12);}


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(28, 99);

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
    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:30:1: loop : 'while' '(' expression ')' statement ;
    public final void loop() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "loop");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(30, 0);

        try {
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:31:2: ( 'while' '(' expression ')' statement )
            dbg.enterAlt(1);

            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:31:5: 'while' '(' expression ')' statement
            {
            dbg.location(31,5);
            match(input,38,FOLLOW_38_in_loop279); 
            dbg.location(31,13);
            match(input,13,FOLLOW_13_in_loop281); 
            dbg.location(31,17);
            pushFollow(FOLLOW_expression_in_loop283);
            expression();

            state._fsp--;

            dbg.location(31,28);
            match(input,14,FOLLOW_14_in_loop285); 
            dbg.location(31,32);
            pushFollow(FOLLOW_statement_in_loop287);
            statement();

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
        dbg.location(31, 41);

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
    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:33:1: print : 'print' '(' expression ')' ';' ;
    public final void print() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "print");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(33, 0);

        try {
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:34:2: ( 'print' '(' expression ')' ';' )
            dbg.enterAlt(1);

            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:34:5: 'print' '(' expression ')' ';'
            {
            dbg.location(34,5);
            match(input,32,FOLLOW_32_in_print300); 
            dbg.location(34,13);
            match(input,13,FOLLOW_13_in_print302); 
            dbg.location(34,17);
            pushFollow(FOLLOW_expression_in_print304);
            expression();

            state._fsp--;

            dbg.location(34,28);
            match(input,14,FOLLOW_14_in_print306); 
            dbg.location(34,32);
            match(input,17,FOLLOW_17_in_print308); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(34, 34);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "print");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "print"



    // $ANTLR start "assignation"
    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:36:1: assignation : identifier '=' expression ';' ;
    public final void assignation() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "assignation");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(36, 0);

        try {
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:37:2: ( identifier '=' expression ';' )
            dbg.enterAlt(1);

            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:37:4: identifier '=' expression ';'
            {
            dbg.location(37,4);
            pushFollow(FOLLOW_identifier_in_assignation319);
            identifier();

            state._fsp--;

            dbg.location(37,16);
            match(input,18,FOLLOW_18_in_assignation322); 
            dbg.location(37,20);
            pushFollow(FOLLOW_expression_in_assignation324);
            expression();

            state._fsp--;

            dbg.location(37,31);
            match(input,17,FOLLOW_17_in_assignation326); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(37, 33);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "assignation");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "assignation"



    // $ANTLR start "expression"
    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:40:1: expression : ( STRING | FLOAT | INTEGER | 'true' | 'false' | identifier | 'this' | 'new' identifier '(' ')' | 'new' identifier '[' expression ']' | '!' expression | '(' expression ')' ) ( expressionalpha )? ;
    public final void expression() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "expression");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(40, 0);

        try {
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:41:2: ( ( STRING | FLOAT | INTEGER | 'true' | 'false' | identifier | 'this' | 'new' identifier '(' ')' | 'new' identifier '[' expression ']' | '!' expression | '(' expression ')' ) ( expressionalpha )? )
            dbg.enterAlt(1);

            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:41:5: ( STRING | FLOAT | INTEGER | 'true' | 'false' | identifier | 'this' | 'new' identifier '(' ')' | 'new' identifier '[' expression ']' | '!' expression | '(' expression ')' ) ( expressionalpha )?
            {
            dbg.location(41,5);
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:41:5: ( STRING | FLOAT | INTEGER | 'true' | 'false' | identifier | 'this' | 'new' identifier '(' ')' | 'new' identifier '[' expression ']' | '!' expression | '(' expression ')' )
            int alt13=11;
            try { dbg.enterSubRule(13);
            try { dbg.enterDecision(13, decisionCanBacktrack[13]);

            switch ( input.LA(1) ) {
            case STRING:
                {
                alt13=1;
                }
                break;
            case FLOAT:
                {
                alt13=2;
                }
                break;
            case INTEGER:
                {
                alt13=3;
                }
                break;
            case 36:
                {
                alt13=4;
                }
                break;
            case 26:
                {
                alt13=5;
                }
                break;
            case ARRAYIDENTIFIER:
            case IDENTIFIER:
                {
                alt13=6;
                }
                break;
            case 35:
                {
                alt13=7;
                }
                break;
            case 31:
                {
                int LA13_8 = input.LA(2);

                if ( (LA13_8==ARRAYIDENTIFIER||LA13_8==IDENTIFIER) ) {
                    int LA13_11 = input.LA(3);

                    if ( (LA13_11==13) ) {
                        alt13=8;
                    }
                    else if ( (LA13_11==19) ) {
                        alt13=9;
                    }
                    else {
                        NoViableAltException nvae =
                            new NoViableAltException("", 13, 11, input);

                        dbg.recognitionException(nvae);
                        throw nvae;

                    }
                }
                else {
                    NoViableAltException nvae =
                        new NoViableAltException("", 13, 8, input);

                    dbg.recognitionException(nvae);
                    throw nvae;

                }
                }
                break;
            case 12:
                {
                alt13=10;
                }
                break;
            case 13:
                {
                alt13=11;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 13, 0, input);

                dbg.recognitionException(nvae);
                throw nvae;

            }

            } finally {dbg.exitDecision(13);}

            switch (alt13) {
                case 1 :
                    dbg.enterAlt(1);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:41:6: STRING
                    {
                    dbg.location(41,6);
                    match(input,STRING,FOLLOW_STRING_in_expression340); 

                    }
                    break;
                case 2 :
                    dbg.enterAlt(2);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:41:15: FLOAT
                    {
                    dbg.location(41,15);
                    match(input,FLOAT,FOLLOW_FLOAT_in_expression344); 

                    }
                    break;
                case 3 :
                    dbg.enterAlt(3);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:41:23: INTEGER
                    {
                    dbg.location(41,23);
                    match(input,INTEGER,FOLLOW_INTEGER_in_expression348); 

                    }
                    break;
                case 4 :
                    dbg.enterAlt(4);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:41:33: 'true'
                    {
                    dbg.location(41,33);
                    match(input,36,FOLLOW_36_in_expression352); 

                    }
                    break;
                case 5 :
                    dbg.enterAlt(5);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:41:42: 'false'
                    {
                    dbg.location(41,42);
                    match(input,26,FOLLOW_26_in_expression356); 

                    }
                    break;
                case 6 :
                    dbg.enterAlt(6);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:42:5: identifier
                    {
                    dbg.location(42,5);
                    pushFollow(FOLLOW_identifier_in_expression362);
                    identifier();

                    state._fsp--;


                    }
                    break;
                case 7 :
                    dbg.enterAlt(7);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:42:18: 'this'
                    {
                    dbg.location(42,18);
                    match(input,35,FOLLOW_35_in_expression366); 

                    }
                    break;
                case 8 :
                    dbg.enterAlt(8);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:42:27: 'new' identifier '(' ')'
                    {
                    dbg.location(42,27);
                    match(input,31,FOLLOW_31_in_expression370); 
                    dbg.location(42,33);
                    pushFollow(FOLLOW_identifier_in_expression372);
                    identifier();

                    state._fsp--;

                    dbg.location(42,44);
                    match(input,13,FOLLOW_13_in_expression374); 
                    dbg.location(42,48);
                    match(input,14,FOLLOW_14_in_expression376); 

                    }
                    break;
                case 9 :
                    dbg.enterAlt(9);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:42:53: 'new' identifier '[' expression ']'
                    {
                    dbg.location(42,53);
                    match(input,31,FOLLOW_31_in_expression379); 
                    dbg.location(42,59);
                    pushFollow(FOLLOW_identifier_in_expression381);
                    identifier();

                    state._fsp--;

                    dbg.location(42,70);
                    match(input,19,FOLLOW_19_in_expression383); 
                    dbg.location(42,74);
                    pushFollow(FOLLOW_expression_in_expression385);
                    expression();

                    state._fsp--;

                    dbg.location(42,85);
                    match(input,20,FOLLOW_20_in_expression387); 

                    }
                    break;
                case 10 :
                    dbg.enterAlt(10);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:42:92: '!' expression
                    {
                    dbg.location(42,92);
                    match(input,12,FOLLOW_12_in_expression392); 
                    dbg.location(42,96);
                    pushFollow(FOLLOW_expression_in_expression394);
                    expression();

                    state._fsp--;


                    }
                    break;
                case 11 :
                    dbg.enterAlt(11);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:43:5: '(' expression ')'
                    {
                    dbg.location(43,5);
                    match(input,13,FOLLOW_13_in_expression401); 
                    dbg.location(43,9);
                    pushFollow(FOLLOW_expression_in_expression403);
                    expression();

                    state._fsp--;

                    dbg.location(43,20);
                    match(input,14,FOLLOW_14_in_expression405); 

                    }
                    break;

            }
            } finally {dbg.exitSubRule(13);}

            dbg.location(43,26);
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:43:26: ( expressionalpha )?
            int alt14=2;
            try { dbg.enterSubRule(14);
            try { dbg.enterDecision(14, decisionCanBacktrack[14]);

            int LA14_0 = input.LA(1);

            if ( (LA14_0==BINARYOPERATOR) ) {
                alt14=1;
            }
            else if ( (LA14_0==16) ) {
                alt14=1;
            }
            } finally {dbg.exitDecision(14);}

            switch (alt14) {
                case 1 :
                    dbg.enterAlt(1);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:43:27: expressionalpha
                    {
                    dbg.location(43,27);
                    pushFollow(FOLLOW_expressionalpha_in_expression410);
                    expressionalpha();

                    state._fsp--;


                    }
                    break;

            }
            } finally {dbg.exitSubRule(14);}


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(43, 43);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "expression");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "expression"



    // $ANTLR start "expressionalpha"
    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:45:1: expressionalpha : ( BINARYOPERATOR expression | '.' identifier '(' ( expression ( ',' expression )* )? ')' ) ( expressionalpha )? ;
    public final void expressionalpha() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "expressionalpha");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(45, 0);

        try {
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:46:2: ( ( BINARYOPERATOR expression | '.' identifier '(' ( expression ( ',' expression )* )? ')' ) ( expressionalpha )? )
            dbg.enterAlt(1);

            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:46:5: ( BINARYOPERATOR expression | '.' identifier '(' ( expression ( ',' expression )* )? ')' ) ( expressionalpha )?
            {
            dbg.location(46,5);
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:46:5: ( BINARYOPERATOR expression | '.' identifier '(' ( expression ( ',' expression )* )? ')' )
            int alt17=2;
            try { dbg.enterSubRule(17);
            try { dbg.enterDecision(17, decisionCanBacktrack[17]);

            int LA17_0 = input.LA(1);

            if ( (LA17_0==BINARYOPERATOR) ) {
                alt17=1;
            }
            else if ( (LA17_0==16) ) {
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

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:46:6: BINARYOPERATOR expression
                    {
                    dbg.location(46,6);
                    match(input,BINARYOPERATOR,FOLLOW_BINARYOPERATOR_in_expressionalpha424); 
                    dbg.location(46,21);
                    pushFollow(FOLLOW_expression_in_expressionalpha426);
                    expression();

                    state._fsp--;


                    }
                    break;
                case 2 :
                    dbg.enterAlt(2);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:46:34: '.' identifier '(' ( expression ( ',' expression )* )? ')'
                    {
                    dbg.location(46,34);
                    match(input,16,FOLLOW_16_in_expressionalpha430); 
                    dbg.location(46,38);
                    pushFollow(FOLLOW_identifier_in_expressionalpha432);
                    identifier();

                    state._fsp--;

                    dbg.location(46,49);
                    match(input,13,FOLLOW_13_in_expressionalpha434); 
                    dbg.location(46,53);
                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:46:53: ( expression ( ',' expression )* )?
                    int alt16=2;
                    try { dbg.enterSubRule(16);
                    try { dbg.enterDecision(16, decisionCanBacktrack[16]);

                    int LA16_0 = input.LA(1);

                    if ( (LA16_0==ARRAYIDENTIFIER||(LA16_0 >= FLOAT && LA16_0 <= INTEGER)||(LA16_0 >= STRING && LA16_0 <= 13)||LA16_0==26||LA16_0==31||(LA16_0 >= 35 && LA16_0 <= 36)) ) {
                        alt16=1;
                    }
                    } finally {dbg.exitDecision(16);}

                    switch (alt16) {
                        case 1 :
                            dbg.enterAlt(1);

                            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:46:55: expression ( ',' expression )*
                            {
                            dbg.location(46,55);
                            pushFollow(FOLLOW_expression_in_expressionalpha438);
                            expression();

                            state._fsp--;

                            dbg.location(46,66);
                            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:46:66: ( ',' expression )*
                            try { dbg.enterSubRule(15);

                            loop15:
                            do {
                                int alt15=2;
                                try { dbg.enterDecision(15, decisionCanBacktrack[15]);

                                int LA15_0 = input.LA(1);

                                if ( (LA15_0==15) ) {
                                    alt15=1;
                                }


                                } finally {dbg.exitDecision(15);}

                                switch (alt15) {
                            	case 1 :
                            	    dbg.enterAlt(1);

                            	    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:46:68: ',' expression
                            	    {
                            	    dbg.location(46,68);
                            	    match(input,15,FOLLOW_15_in_expressionalpha442); 
                            	    dbg.location(46,72);
                            	    pushFollow(FOLLOW_expression_in_expressionalpha444);
                            	    expression();

                            	    state._fsp--;


                            	    }
                            	    break;

                            	default :
                            	    break loop15;
                                }
                            } while (true);
                            } finally {dbg.exitSubRule(15);}


                            }
                            break;

                    }
                    } finally {dbg.exitSubRule(16);}

                    dbg.location(46,89);
                    match(input,14,FOLLOW_14_in_expressionalpha452); 

                    }
                    break;

            }
            } finally {dbg.exitSubRule(17);}

            dbg.location(46,96);
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:46:96: ( expressionalpha )?
            int alt18=2;
            try { dbg.enterSubRule(18);
            try { dbg.enterDecision(18, decisionCanBacktrack[18]);

            int LA18_0 = input.LA(1);

            if ( (LA18_0==BINARYOPERATOR) ) {
                alt18=1;
            }
            else if ( (LA18_0==16) ) {
                alt18=1;
            }
            } finally {dbg.exitDecision(18);}

            switch (alt18) {
                case 1 :
                    dbg.enterAlt(1);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:46:97: expressionalpha
                    {
                    dbg.location(46,97);
                    pushFollow(FOLLOW_expressionalpha_in_expressionalpha458);
                    expressionalpha();

                    state._fsp--;


                    }
                    break;

            }
            } finally {dbg.exitSubRule(18);}


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(46, 113);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "expressionalpha");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "expressionalpha"



    // $ANTLR start "identifier"
    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:48:1: identifier : ( IDENTIFIER | ARRAYIDENTIFIER );
    public final void identifier() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "identifier");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(48, 0);

        try {
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:49:2: ( IDENTIFIER | ARRAYIDENTIFIER )
            dbg.enterAlt(1);

            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:
            {
            dbg.location(49,2);
            if ( input.LA(1)==ARRAYIDENTIFIER||input.LA(1)==IDENTIFIER ) {
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
        dbg.location(49, 32);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "identifier");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "identifier"

    // Delegated rules


 

    public static final BitSet FOLLOW_mainclass_in_goal27 = new BitSet(new long[]{0x0000000000800002L});
    public static final BitSet FOLLOW_classdeclaration_in_goal31 = new BitSet(new long[]{0x0000000000800002L});
    public static final BitSet FOLLOW_23_in_mainclass44 = new BitSet(new long[]{0x0000000000000120L});
    public static final BitSet FOLLOW_identifier_in_mainclass46 = new BitSet(new long[]{0x0000008000000000L});
    public static final BitSet FOLLOW_39_in_mainclass48 = new BitSet(new long[]{0x0000000400000000L});
    public static final BitSet FOLLOW_34_in_mainclass50 = new BitSet(new long[]{0x0000002000000000L});
    public static final BitSet FOLLOW_37_in_mainclass52 = new BitSet(new long[]{0x0000000040000000L});
    public static final BitSet FOLLOW_30_in_mainclass54 = new BitSet(new long[]{0x0000000000002000L});
    public static final BitSet FOLLOW_13_in_mainclass56 = new BitSet(new long[]{0x0000000000004000L});
    public static final BitSet FOLLOW_14_in_mainclass58 = new BitSet(new long[]{0x0000008000000000L});
    public static final BitSet FOLLOW_39_in_mainclass60 = new BitSet(new long[]{0x000000C110000120L});
    public static final BitSet FOLLOW_statement_in_mainclass62 = new BitSet(new long[]{0x0000010000000000L});
    public static final BitSet FOLLOW_40_in_mainclass64 = new BitSet(new long[]{0x0000010000000000L});
    public static final BitSet FOLLOW_40_in_mainclass66 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_23_in_classdeclaration79 = new BitSet(new long[]{0x0000000000000120L});
    public static final BitSet FOLLOW_identifier_in_classdeclaration81 = new BitSet(new long[]{0x0000008000000000L});
    public static final BitSet FOLLOW_39_in_classdeclaration83 = new BitSet(new long[]{0x0000010028600120L});
    public static final BitSet FOLLOW_vardeclaration_in_classdeclaration86 = new BitSet(new long[]{0x0000010028600120L});
    public static final BitSet FOLLOW_methoddeclaration_in_classdeclaration91 = new BitSet(new long[]{0x0000010028600120L});
    public static final BitSet FOLLOW_40_in_classdeclaration95 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_type_in_vardeclaration104 = new BitSet(new long[]{0x0000000000000120L});
    public static final BitSet FOLLOW_identifier_in_vardeclaration106 = new BitSet(new long[]{0x0000000000020000L});
    public static final BitSet FOLLOW_17_in_vardeclaration108 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_type_in_methoddeclaration121 = new BitSet(new long[]{0x0000000000000120L});
    public static final BitSet FOLLOW_identifier_in_methoddeclaration123 = new BitSet(new long[]{0x0000000000002000L});
    public static final BitSet FOLLOW_13_in_methoddeclaration125 = new BitSet(new long[]{0x0000000028604120L});
    public static final BitSet FOLLOW_type_in_methoddeclaration129 = new BitSet(new long[]{0x0000000000000120L});
    public static final BitSet FOLLOW_identifier_in_methoddeclaration131 = new BitSet(new long[]{0x000000000000C000L});
    public static final BitSet FOLLOW_15_in_methoddeclaration134 = new BitSet(new long[]{0x0000000028600120L});
    public static final BitSet FOLLOW_type_in_methoddeclaration136 = new BitSet(new long[]{0x0000000000000120L});
    public static final BitSet FOLLOW_identifier_in_methoddeclaration138 = new BitSet(new long[]{0x000000000000C000L});
    public static final BitSet FOLLOW_14_in_methoddeclaration144 = new BitSet(new long[]{0x0000008000000000L});
    public static final BitSet FOLLOW_39_in_methoddeclaration146 = new BitSet(new long[]{0x000000C338600120L});
    public static final BitSet FOLLOW_vardeclaration_in_methoddeclaration149 = new BitSet(new long[]{0x000000C338600120L});
    public static final BitSet FOLLOW_statement_in_methoddeclaration154 = new BitSet(new long[]{0x000000C310000120L});
    public static final BitSet FOLLOW_33_in_methoddeclaration158 = new BitSet(new long[]{0x0000001884003BA0L});
    public static final BitSet FOLLOW_expression_in_methoddeclaration160 = new BitSet(new long[]{0x0000000000020000L});
    public static final BitSet FOLLOW_17_in_methoddeclaration162 = new BitSet(new long[]{0x0000010000000000L});
    public static final BitSet FOLLOW_40_in_methoddeclaration164 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_29_in_type175 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_22_in_type179 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_27_in_type183 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_21_in_type187 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_identifier_in_type191 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_39_in_statement201 = new BitSet(new long[]{0x000001C110000120L});
    public static final BitSet FOLLOW_statement_in_statement204 = new BitSet(new long[]{0x000001C110000120L});
    public static final BitSet FOLLOW_40_in_statement208 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_conditional_in_statement212 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_loop_in_statement216 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_print_in_statement220 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_assignation_in_statement224 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_28_in_conditional237 = new BitSet(new long[]{0x0000000000002000L});
    public static final BitSet FOLLOW_13_in_conditional239 = new BitSet(new long[]{0x0000001884003BA0L});
    public static final BitSet FOLLOW_expression_in_conditional241 = new BitSet(new long[]{0x0000000000004000L});
    public static final BitSet FOLLOW_14_in_conditional243 = new BitSet(new long[]{0x000000C110000120L});
    public static final BitSet FOLLOW_statement_in_conditional245 = new BitSet(new long[]{0x0000000003000002L});
    public static final BitSet FOLLOW_25_in_conditional248 = new BitSet(new long[]{0x0000000000002000L});
    public static final BitSet FOLLOW_13_in_conditional250 = new BitSet(new long[]{0x0000001884003BA0L});
    public static final BitSet FOLLOW_expression_in_conditional252 = new BitSet(new long[]{0x0000000000004000L});
    public static final BitSet FOLLOW_14_in_conditional254 = new BitSet(new long[]{0x000000C110000120L});
    public static final BitSet FOLLOW_statement_in_conditional256 = new BitSet(new long[]{0x0000000003000002L});
    public static final BitSet FOLLOW_24_in_conditional262 = new BitSet(new long[]{0x000000C110000120L});
    public static final BitSet FOLLOW_statement_in_conditional264 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_38_in_loop279 = new BitSet(new long[]{0x0000000000002000L});
    public static final BitSet FOLLOW_13_in_loop281 = new BitSet(new long[]{0x0000001884003BA0L});
    public static final BitSet FOLLOW_expression_in_loop283 = new BitSet(new long[]{0x0000000000004000L});
    public static final BitSet FOLLOW_14_in_loop285 = new BitSet(new long[]{0x000000C110000120L});
    public static final BitSet FOLLOW_statement_in_loop287 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_32_in_print300 = new BitSet(new long[]{0x0000000000002000L});
    public static final BitSet FOLLOW_13_in_print302 = new BitSet(new long[]{0x0000001884003BA0L});
    public static final BitSet FOLLOW_expression_in_print304 = new BitSet(new long[]{0x0000000000004000L});
    public static final BitSet FOLLOW_14_in_print306 = new BitSet(new long[]{0x0000000000020000L});
    public static final BitSet FOLLOW_17_in_print308 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_identifier_in_assignation319 = new BitSet(new long[]{0x0000000000040000L});
    public static final BitSet FOLLOW_18_in_assignation322 = new BitSet(new long[]{0x0000001884003BA0L});
    public static final BitSet FOLLOW_expression_in_assignation324 = new BitSet(new long[]{0x0000000000020000L});
    public static final BitSet FOLLOW_17_in_assignation326 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_STRING_in_expression340 = new BitSet(new long[]{0x0000000000010042L});
    public static final BitSet FOLLOW_FLOAT_in_expression344 = new BitSet(new long[]{0x0000000000010042L});
    public static final BitSet FOLLOW_INTEGER_in_expression348 = new BitSet(new long[]{0x0000000000010042L});
    public static final BitSet FOLLOW_36_in_expression352 = new BitSet(new long[]{0x0000000000010042L});
    public static final BitSet FOLLOW_26_in_expression356 = new BitSet(new long[]{0x0000000000010042L});
    public static final BitSet FOLLOW_identifier_in_expression362 = new BitSet(new long[]{0x0000000000010042L});
    public static final BitSet FOLLOW_35_in_expression366 = new BitSet(new long[]{0x0000000000010042L});
    public static final BitSet FOLLOW_31_in_expression370 = new BitSet(new long[]{0x0000000000000120L});
    public static final BitSet FOLLOW_identifier_in_expression372 = new BitSet(new long[]{0x0000000000002000L});
    public static final BitSet FOLLOW_13_in_expression374 = new BitSet(new long[]{0x0000000000004000L});
    public static final BitSet FOLLOW_14_in_expression376 = new BitSet(new long[]{0x0000000000010042L});
    public static final BitSet FOLLOW_31_in_expression379 = new BitSet(new long[]{0x0000000000000120L});
    public static final BitSet FOLLOW_identifier_in_expression381 = new BitSet(new long[]{0x0000000000080000L});
    public static final BitSet FOLLOW_19_in_expression383 = new BitSet(new long[]{0x0000001884003BA0L});
    public static final BitSet FOLLOW_expression_in_expression385 = new BitSet(new long[]{0x0000000000100000L});
    public static final BitSet FOLLOW_20_in_expression387 = new BitSet(new long[]{0x0000000000010042L});
    public static final BitSet FOLLOW_12_in_expression392 = new BitSet(new long[]{0x0000001884003BA0L});
    public static final BitSet FOLLOW_expression_in_expression394 = new BitSet(new long[]{0x0000000000010042L});
    public static final BitSet FOLLOW_13_in_expression401 = new BitSet(new long[]{0x0000001884003BA0L});
    public static final BitSet FOLLOW_expression_in_expression403 = new BitSet(new long[]{0x0000000000004000L});
    public static final BitSet FOLLOW_14_in_expression405 = new BitSet(new long[]{0x0000000000010042L});
    public static final BitSet FOLLOW_expressionalpha_in_expression410 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_BINARYOPERATOR_in_expressionalpha424 = new BitSet(new long[]{0x0000001884003BA0L});
    public static final BitSet FOLLOW_expression_in_expressionalpha426 = new BitSet(new long[]{0x0000000000010042L});
    public static final BitSet FOLLOW_16_in_expressionalpha430 = new BitSet(new long[]{0x0000000000000120L});
    public static final BitSet FOLLOW_identifier_in_expressionalpha432 = new BitSet(new long[]{0x0000000000002000L});
    public static final BitSet FOLLOW_13_in_expressionalpha434 = new BitSet(new long[]{0x0000001884007BA0L});
    public static final BitSet FOLLOW_expression_in_expressionalpha438 = new BitSet(new long[]{0x000000000000C000L});
    public static final BitSet FOLLOW_15_in_expressionalpha442 = new BitSet(new long[]{0x0000001884003BA0L});
    public static final BitSet FOLLOW_expression_in_expressionalpha444 = new BitSet(new long[]{0x000000000000C000L});
    public static final BitSet FOLLOW_14_in_expressionalpha452 = new BitSet(new long[]{0x0000000000010042L});
    public static final BitSet FOLLOW_expressionalpha_in_expressionalpha458 = new BitSet(new long[]{0x0000000000000002L});

}