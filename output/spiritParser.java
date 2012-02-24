// $ANTLR 3.4 C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g 2012-02-23 18:08:31

import org.antlr.runtime.*;
import java.util.Stack;
import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;

import org.antlr.runtime.debug.*;
import java.io.IOException;
@SuppressWarnings({"all", "warnings", "unchecked"})
public class spiritParser extends DebugParser {
    public static final String[] tokenNames = new String[] {
        "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ADDITIONSUBSTRACTIONOPERATORS", "ARRAYIDENTIFIER", "BINARYOPERATORS", "COMPARITIONOPERATORS", "ESC_SEQ", "EXPONENT", "FLOAT", "HEX_DIGIT", "IDENTIFIER", "INTEGER", "MULTIPLICATIONDIVISIONOPERATORS", "OCTAL_ESC", "STRING", "UNICODE_ESC", "WS", "'!'", "'('", "')'", "','", "'.'", "';'", "'='", "'['", "']'", "'boolean'", "'char'", "'class'", "'else'", "'elsif'", "'false'", "'float'", "'if'", "'int'", "'main'", "'new'", "'print'", "'return'", "'static'", "'this'", "'true'", "'void'", "'while'", "'{'", "'}'"
    };

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
    public Parser[] getDelegates() {
        return new Parser[] {};
    }

    // delegators


public static final String[] ruleNames = new String[] {
    "invalidRule", "expression", "synpred1_spirit", "synpred33_spirit", 
    "conditional", "factor", "loop", "synpred41_spirit", "exp", "synpred7_spirit", 
    "synpred37_spirit", "synpred3_spirit", "synpred38_spirit", "synpred28_spirit", 
    "synpred44_spirit", "synpred42_spirit", "synpred5_spirit", "synpred30_spirit", 
    "assignation", "synpred32_spirit", "synpred26_spirit", "invocation", 
    "synpred18_spirit", "identifier", "synpred8_spirit", "synpred12_spirit", 
    "synpred36_spirit", "synpred34_spirit", "classdeclaration", "term", 
    "vardeclaration", "synpred20_spirit", "synpred35_spirit", "goal", "synpred6_spirit", 
    "mainclass", "synpred15_spirit", "synpred24_spirit", "varcte", "synpred16_spirit", 
    "synpred23_spirit", "synpred10_spirit", "synpred21_spirit", "synpred13_spirit", 
    "synpred19_spirit", "synpred31_spirit", "synpred14_spirit", "synpred11_spirit", 
    "synpred25_spirit", "synpred9_spirit", "print", "synpred17_spirit", 
    "synpred4_spirit", "synpred2_spirit", "arrayidentifier", "statement", 
    "synpred22_spirit", "methoddeclaration", "synpred43_spirit", "synpred39_spirit", 
    "type", "synpred29_spirit", "synpred40_spirit", "synpred27_spirit"
};

public static final boolean[] decisionCanBacktrack = new boolean[] {
    false, // invalid decision
    false, true, false, false, false, true, false, false, false, true, true, 
        true, false, true, true, true, false, false, false, true, false, 
        false, true, false, false, false, false
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
            pushFollow(FOLLOW_mainclass_in_goal39);
            mainclass();

            state._fsp--;
            if (state.failed) return ;
            dbg.location(6,14);
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:6:14: ( classdeclaration )*
            try { dbg.enterSubRule(1);

            loop1:
            do {
                int alt1=2;
                try { dbg.enterDecision(1, decisionCanBacktrack[1]);

                int LA1_0 = input.LA(1);

                if ( (LA1_0==30) ) {
                    alt1=1;
                }


                } finally {dbg.exitDecision(1);}

                switch (alt1) {
            	case 1 :
            	    dbg.enterAlt(1);

            	    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:6:16: classdeclaration
            	    {
            	    dbg.location(6,16);
            	    pushFollow(FOLLOW_classdeclaration_in_goal43);
            	    classdeclaration();

            	    state._fsp--;
            	    if (state.failed) return ;

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
    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:8:1: mainclass : 'class' identifier '{' 'static' 'void' 'main' '(' ')' statement '}' ;
    public final void mainclass() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "mainclass");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(8, 0);

        try {
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:9:2: ( 'class' identifier '{' 'static' 'void' 'main' '(' ')' statement '}' )
            dbg.enterAlt(1);

            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:9:4: 'class' identifier '{' 'static' 'void' 'main' '(' ')' statement '}'
            {
            dbg.location(9,4);
            match(input,30,FOLLOW_30_in_mainclass56); if (state.failed) return ;
            dbg.location(9,12);
            pushFollow(FOLLOW_identifier_in_mainclass58);
            identifier();

            state._fsp--;
            if (state.failed) return ;
            dbg.location(9,23);
            match(input,46,FOLLOW_46_in_mainclass60); if (state.failed) return ;
            dbg.location(9,27);
            match(input,41,FOLLOW_41_in_mainclass62); if (state.failed) return ;
            dbg.location(9,36);
            match(input,44,FOLLOW_44_in_mainclass64); if (state.failed) return ;
            dbg.location(9,43);
            match(input,37,FOLLOW_37_in_mainclass66); if (state.failed) return ;
            dbg.location(9,50);
            match(input,20,FOLLOW_20_in_mainclass68); if (state.failed) return ;
            dbg.location(9,54);
            match(input,21,FOLLOW_21_in_mainclass70); if (state.failed) return ;
            dbg.location(9,59);
            pushFollow(FOLLOW_statement_in_mainclass73);
            statement();

            state._fsp--;
            if (state.failed) return ;
            dbg.location(9,69);
            match(input,47,FOLLOW_47_in_mainclass75); if (state.failed) return ;

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(9, 71);

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
            match(input,30,FOLLOW_30_in_classdeclaration88); if (state.failed) return ;
            dbg.location(13,13);
            pushFollow(FOLLOW_identifier_in_classdeclaration90);
            identifier();

            state._fsp--;
            if (state.failed) return ;
            dbg.location(13,24);
            match(input,46,FOLLOW_46_in_classdeclaration92); if (state.failed) return ;
            dbg.location(13,28);
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:13:28: ( vardeclaration )*
            try { dbg.enterSubRule(2);

            loop2:
            do {
                int alt2=2;
                try { dbg.enterDecision(2, decisionCanBacktrack[2]);

                switch ( input.LA(1) ) {
                case 36:
                    {
                    int LA2_1 = input.LA(2);

                    if ( (synpred2_spirit()) ) {
                        alt2=1;
                    }


                    }
                    break;
                case 29:
                    {
                    int LA2_2 = input.LA(2);

                    if ( (synpred2_spirit()) ) {
                        alt2=1;
                    }


                    }
                    break;
                case 34:
                    {
                    int LA2_3 = input.LA(2);

                    if ( (synpred2_spirit()) ) {
                        alt2=1;
                    }


                    }
                    break;
                case 28:
                    {
                    int LA2_4 = input.LA(2);

                    if ( (synpred2_spirit()) ) {
                        alt2=1;
                    }


                    }
                    break;
                case IDENTIFIER:
                    {
                    int LA2_5 = input.LA(2);

                    if ( (synpred2_spirit()) ) {
                        alt2=1;
                    }


                    }
                    break;
                case FLOAT:
                case INTEGER:
                case STRING:
                    {
                    int LA2_6 = input.LA(2);

                    if ( (synpred2_spirit()) ) {
                        alt2=1;
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
            	    pushFollow(FOLLOW_vardeclaration_in_classdeclaration95);
            	    vardeclaration();

            	    state._fsp--;
            	    if (state.failed) return ;

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

                if ( (LA3_0==FLOAT||(LA3_0 >= IDENTIFIER && LA3_0 <= INTEGER)||LA3_0==STRING||(LA3_0 >= 28 && LA3_0 <= 29)||LA3_0==34||LA3_0==36) ) {
                    alt3=1;
                }


                } finally {dbg.exitDecision(3);}

                switch (alt3) {
            	case 1 :
            	    dbg.enterAlt(1);

            	    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:13:47: methoddeclaration
            	    {
            	    dbg.location(13,47);
            	    pushFollow(FOLLOW_methoddeclaration_in_classdeclaration100);
            	    methoddeclaration();

            	    state._fsp--;
            	    if (state.failed) return ;

            	    }
            	    break;

            	default :
            	    break loop3;
                }
            } while (true);
            } finally {dbg.exitSubRule(3);}

            dbg.location(13,67);
            match(input,47,FOLLOW_47_in_classdeclaration104); if (state.failed) return ;

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
            pushFollow(FOLLOW_type_in_vardeclaration113);
            type();

            state._fsp--;
            if (state.failed) return ;
            dbg.location(16,9);
            pushFollow(FOLLOW_identifier_in_vardeclaration115);
            identifier();

            state._fsp--;
            if (state.failed) return ;
            dbg.location(16,20);
            match(input,24,FOLLOW_24_in_vardeclaration117); if (state.failed) return ;

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
            pushFollow(FOLLOW_type_in_methoddeclaration130);
            type();

            state._fsp--;
            if (state.failed) return ;
            dbg.location(19,10);
            pushFollow(FOLLOW_identifier_in_methoddeclaration132);
            identifier();

            state._fsp--;
            if (state.failed) return ;
            dbg.location(19,21);
            match(input,20,FOLLOW_20_in_methoddeclaration134); if (state.failed) return ;
            dbg.location(19,25);
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:19:25: ( type identifier ( ',' type identifier )* )?
            int alt5=2;
            try { dbg.enterSubRule(5);
            try { dbg.enterDecision(5, decisionCanBacktrack[5]);

            int LA5_0 = input.LA(1);

            if ( (LA5_0==FLOAT||(LA5_0 >= IDENTIFIER && LA5_0 <= INTEGER)||LA5_0==STRING||(LA5_0 >= 28 && LA5_0 <= 29)||LA5_0==34||LA5_0==36) ) {
                alt5=1;
            }
            } finally {dbg.exitDecision(5);}

            switch (alt5) {
                case 1 :
                    dbg.enterAlt(1);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:19:27: type identifier ( ',' type identifier )*
                    {
                    dbg.location(19,27);
                    pushFollow(FOLLOW_type_in_methoddeclaration138);
                    type();

                    state._fsp--;
                    if (state.failed) return ;
                    dbg.location(19,32);
                    pushFollow(FOLLOW_identifier_in_methoddeclaration140);
                    identifier();

                    state._fsp--;
                    if (state.failed) return ;
                    dbg.location(19,43);
                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:19:43: ( ',' type identifier )*
                    try { dbg.enterSubRule(4);

                    loop4:
                    do {
                        int alt4=2;
                        try { dbg.enterDecision(4, decisionCanBacktrack[4]);

                        int LA4_0 = input.LA(1);

                        if ( (LA4_0==22) ) {
                            alt4=1;
                        }


                        } finally {dbg.exitDecision(4);}

                        switch (alt4) {
                    	case 1 :
                    	    dbg.enterAlt(1);

                    	    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:19:44: ',' type identifier
                    	    {
                    	    dbg.location(19,44);
                    	    match(input,22,FOLLOW_22_in_methoddeclaration143); if (state.failed) return ;
                    	    dbg.location(19,48);
                    	    pushFollow(FOLLOW_type_in_methoddeclaration145);
                    	    type();

                    	    state._fsp--;
                    	    if (state.failed) return ;
                    	    dbg.location(19,53);
                    	    pushFollow(FOLLOW_identifier_in_methoddeclaration147);
                    	    identifier();

                    	    state._fsp--;
                    	    if (state.failed) return ;

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
            match(input,21,FOLLOW_21_in_methoddeclaration153); if (state.failed) return ;
            dbg.location(19,72);
            match(input,46,FOLLOW_46_in_methoddeclaration155); if (state.failed) return ;
            dbg.location(19,76);
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:19:76: ( vardeclaration )*
            try { dbg.enterSubRule(6);

            loop6:
            do {
                int alt6=2;
                try { dbg.enterDecision(6, decisionCanBacktrack[6]);

                switch ( input.LA(1) ) {
                case IDENTIFIER:
                    {
                    int LA6_2 = input.LA(2);

                    if ( (synpred6_spirit()) ) {
                        alt6=1;
                    }


                    }
                    break;
                case FLOAT:
                case INTEGER:
                case STRING:
                    {
                    int LA6_3 = input.LA(2);

                    if ( (synpred6_spirit()) ) {
                        alt6=1;
                    }


                    }
                    break;
                case 36:
                    {
                    int LA6_4 = input.LA(2);

                    if ( (synpred6_spirit()) ) {
                        alt6=1;
                    }


                    }
                    break;
                case 29:
                    {
                    int LA6_5 = input.LA(2);

                    if ( (synpred6_spirit()) ) {
                        alt6=1;
                    }


                    }
                    break;
                case 34:
                    {
                    int LA6_6 = input.LA(2);

                    if ( (synpred6_spirit()) ) {
                        alt6=1;
                    }


                    }
                    break;
                case 28:
                    {
                    int LA6_7 = input.LA(2);

                    if ( (synpred6_spirit()) ) {
                        alt6=1;
                    }


                    }
                    break;

                }

                } finally {dbg.exitDecision(6);}

                switch (alt6) {
            	case 1 :
            	    dbg.enterAlt(1);

            	    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:19:77: vardeclaration
            	    {
            	    dbg.location(19,77);
            	    pushFollow(FOLLOW_vardeclaration_in_methoddeclaration158);
            	    vardeclaration();

            	    state._fsp--;
            	    if (state.failed) return ;

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

                if ( (LA7_0==FLOAT||(LA7_0 >= IDENTIFIER && LA7_0 <= INTEGER)||LA7_0==STRING||(LA7_0 >= 28 && LA7_0 <= 29)||(LA7_0 >= 34 && LA7_0 <= 36)||LA7_0==39||(LA7_0 >= 45 && LA7_0 <= 46)) ) {
                    alt7=1;
                }


                } finally {dbg.exitDecision(7);}

                switch (alt7) {
            	case 1 :
            	    dbg.enterAlt(1);

            	    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:19:95: statement
            	    {
            	    dbg.location(19,95);
            	    pushFollow(FOLLOW_statement_in_methoddeclaration163);
            	    statement();

            	    state._fsp--;
            	    if (state.failed) return ;

            	    }
            	    break;

            	default :
            	    break loop7;
                }
            } while (true);
            } finally {dbg.exitSubRule(7);}

            dbg.location(19,107);
            match(input,40,FOLLOW_40_in_methoddeclaration167); if (state.failed) return ;
            dbg.location(19,116);
            pushFollow(FOLLOW_expression_in_methoddeclaration169);
            expression();

            state._fsp--;
            if (state.failed) return ;
            dbg.location(19,127);
            match(input,24,FOLLOW_24_in_methoddeclaration171); if (state.failed) return ;
            dbg.location(19,131);
            match(input,47,FOLLOW_47_in_methoddeclaration173); if (state.failed) return ;

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
    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:21:1: type : ( 'int' | 'char' | 'float' | 'boolean' | identifier | arrayidentifier );
    public final void type() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "type");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(21, 0);

        try {
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:22:2: ( 'int' | 'char' | 'float' | 'boolean' | identifier | arrayidentifier )
            int alt8=6;
            try { dbg.enterDecision(8, decisionCanBacktrack[8]);

            switch ( input.LA(1) ) {
            case 36:
                {
                alt8=1;
                }
                break;
            case 29:
                {
                alt8=2;
                }
                break;
            case 34:
                {
                alt8=3;
                }
                break;
            case 28:
                {
                alt8=4;
                }
                break;
            case IDENTIFIER:
                {
                int LA8_5 = input.LA(2);

                if ( (LA8_5==26) ) {
                    alt8=6;
                }
                else if ( (LA8_5==IDENTIFIER) ) {
                    alt8=5;
                }
                else {
                    if (state.backtracking>0) {state.failed=true; return ;}
                    NoViableAltException nvae =
                        new NoViableAltException("", 8, 5, input);

                    dbg.recognitionException(nvae);
                    throw nvae;

                }
                }
                break;
            case FLOAT:
            case INTEGER:
            case STRING:
                {
                alt8=6;
                }
                break;
            default:
                if (state.backtracking>0) {state.failed=true; return ;}
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
                    match(input,36,FOLLOW_36_in_type184); if (state.failed) return ;

                    }
                    break;
                case 2 :
                    dbg.enterAlt(2);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:22:13: 'char'
                    {
                    dbg.location(22,13);
                    match(input,29,FOLLOW_29_in_type188); if (state.failed) return ;

                    }
                    break;
                case 3 :
                    dbg.enterAlt(3);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:22:22: 'float'
                    {
                    dbg.location(22,22);
                    match(input,34,FOLLOW_34_in_type192); if (state.failed) return ;

                    }
                    break;
                case 4 :
                    dbg.enterAlt(4);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:22:32: 'boolean'
                    {
                    dbg.location(22,32);
                    match(input,28,FOLLOW_28_in_type196); if (state.failed) return ;

                    }
                    break;
                case 5 :
                    dbg.enterAlt(5);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:22:44: identifier
                    {
                    dbg.location(22,44);
                    pushFollow(FOLLOW_identifier_in_type200);
                    identifier();

                    state._fsp--;
                    if (state.failed) return ;

                    }
                    break;
                case 6 :
                    dbg.enterAlt(6);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:22:57: arrayidentifier
                    {
                    dbg.location(22,57);
                    pushFollow(FOLLOW_arrayidentifier_in_type204);
                    arrayidentifier();

                    state._fsp--;
                    if (state.failed) return ;

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
        dbg.location(22, 71);

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
    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:24:1: statement : ( '{' ( statement )* '}' | assignation | vardeclaration | conditional | loop | print );
    public final void statement() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "statement");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(24, 0);

        try {
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:25:2: ( '{' ( statement )* '}' | assignation | vardeclaration | conditional | loop | print )
            int alt10=6;
            try { dbg.enterDecision(10, decisionCanBacktrack[10]);

            switch ( input.LA(1) ) {
            case 46:
                {
                alt10=1;
                }
                break;
            case IDENTIFIER:
                {
                int LA10_2 = input.LA(2);

                if ( (synpred15_spirit()) ) {
                    alt10=2;
                }
                else if ( (synpred16_spirit()) ) {
                    alt10=3;
                }
                else {
                    if (state.backtracking>0) {state.failed=true; return ;}
                    NoViableAltException nvae =
                        new NoViableAltException("", 10, 2, input);

                    dbg.recognitionException(nvae);
                    throw nvae;

                }
                }
                break;
            case FLOAT:
            case INTEGER:
            case STRING:
                {
                int LA10_3 = input.LA(2);

                if ( (synpred15_spirit()) ) {
                    alt10=2;
                }
                else if ( (synpred16_spirit()) ) {
                    alt10=3;
                }
                else {
                    if (state.backtracking>0) {state.failed=true; return ;}
                    NoViableAltException nvae =
                        new NoViableAltException("", 10, 3, input);

                    dbg.recognitionException(nvae);
                    throw nvae;

                }
                }
                break;
            case 28:
            case 29:
            case 34:
            case 36:
                {
                alt10=3;
                }
                break;
            case 35:
                {
                alt10=4;
                }
                break;
            case 45:
                {
                alt10=5;
                }
                break;
            case 39:
                {
                alt10=6;
                }
                break;
            default:
                if (state.backtracking>0) {state.failed=true; return ;}
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
                    match(input,46,FOLLOW_46_in_statement214); if (state.failed) return ;
                    dbg.location(25,9);
                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:25:9: ( statement )*
                    try { dbg.enterSubRule(9);

                    loop9:
                    do {
                        int alt9=2;
                        try { dbg.enterDecision(9, decisionCanBacktrack[9]);

                        int LA9_0 = input.LA(1);

                        if ( (LA9_0==FLOAT||(LA9_0 >= IDENTIFIER && LA9_0 <= INTEGER)||LA9_0==STRING||(LA9_0 >= 28 && LA9_0 <= 29)||(LA9_0 >= 34 && LA9_0 <= 36)||LA9_0==39||(LA9_0 >= 45 && LA9_0 <= 46)) ) {
                            alt9=1;
                        }


                        } finally {dbg.exitDecision(9);}

                        switch (alt9) {
                    	case 1 :
                    	    dbg.enterAlt(1);

                    	    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:25:10: statement
                    	    {
                    	    dbg.location(25,10);
                    	    pushFollow(FOLLOW_statement_in_statement217);
                    	    statement();

                    	    state._fsp--;
                    	    if (state.failed) return ;

                    	    }
                    	    break;

                    	default :
                    	    break loop9;
                        }
                    } while (true);
                    } finally {dbg.exitSubRule(9);}

                    dbg.location(25,22);
                    match(input,47,FOLLOW_47_in_statement221); if (state.failed) return ;

                    }
                    break;
                case 2 :
                    dbg.enterAlt(2);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:25:28: assignation
                    {
                    dbg.location(25,28);
                    pushFollow(FOLLOW_assignation_in_statement225);
                    assignation();

                    state._fsp--;
                    if (state.failed) return ;

                    }
                    break;
                case 3 :
                    dbg.enterAlt(3);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:25:42: vardeclaration
                    {
                    dbg.location(25,42);
                    pushFollow(FOLLOW_vardeclaration_in_statement229);
                    vardeclaration();

                    state._fsp--;
                    if (state.failed) return ;

                    }
                    break;
                case 4 :
                    dbg.enterAlt(4);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:25:59: conditional
                    {
                    dbg.location(25,59);
                    pushFollow(FOLLOW_conditional_in_statement233);
                    conditional();

                    state._fsp--;
                    if (state.failed) return ;

                    }
                    break;
                case 5 :
                    dbg.enterAlt(5);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:25:73: loop
                    {
                    dbg.location(25,73);
                    pushFollow(FOLLOW_loop_in_statement237);
                    loop();

                    state._fsp--;
                    if (state.failed) return ;

                    }
                    break;
                case 6 :
                    dbg.enterAlt(6);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:25:80: print
                    {
                    dbg.location(25,80);
                    pushFollow(FOLLOW_print_in_statement241);
                    print();

                    state._fsp--;
                    if (state.failed) return ;

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
        dbg.location(25, 85);

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
            match(input,35,FOLLOW_35_in_conditional254); if (state.failed) return ;
            dbg.location(28,10);
            match(input,20,FOLLOW_20_in_conditional256); if (state.failed) return ;
            dbg.location(28,14);
            pushFollow(FOLLOW_expression_in_conditional258);
            expression();

            state._fsp--;
            if (state.failed) return ;
            dbg.location(28,25);
            match(input,21,FOLLOW_21_in_conditional260); if (state.failed) return ;
            dbg.location(28,29);
            pushFollow(FOLLOW_statement_in_conditional262);
            statement();

            state._fsp--;
            if (state.failed) return ;
            dbg.location(28,39);
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:28:39: ( 'elsif' '(' expression ')' statement )*
            try { dbg.enterSubRule(11);

            loop11:
            do {
                int alt11=2;
                try { dbg.enterDecision(11, decisionCanBacktrack[11]);

                int LA11_0 = input.LA(1);

                if ( (LA11_0==32) ) {
                    int LA11_2 = input.LA(2);

                    if ( (synpred19_spirit()) ) {
                        alt11=1;
                    }


                }


                } finally {dbg.exitDecision(11);}

                switch (alt11) {
            	case 1 :
            	    dbg.enterAlt(1);

            	    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:28:40: 'elsif' '(' expression ')' statement
            	    {
            	    dbg.location(28,40);
            	    match(input,32,FOLLOW_32_in_conditional265); if (state.failed) return ;
            	    dbg.location(28,48);
            	    match(input,20,FOLLOW_20_in_conditional267); if (state.failed) return ;
            	    dbg.location(28,52);
            	    pushFollow(FOLLOW_expression_in_conditional269);
            	    expression();

            	    state._fsp--;
            	    if (state.failed) return ;
            	    dbg.location(28,63);
            	    match(input,21,FOLLOW_21_in_conditional271); if (state.failed) return ;
            	    dbg.location(28,67);
            	    pushFollow(FOLLOW_statement_in_conditional273);
            	    statement();

            	    state._fsp--;
            	    if (state.failed) return ;

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

            if ( (LA12_0==31) ) {
                int LA12_1 = input.LA(2);

                if ( (synpred20_spirit()) ) {
                    alt12=1;
                }
            }
            } finally {dbg.exitDecision(12);}

            switch (alt12) {
                case 1 :
                    dbg.enterAlt(1);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:28:81: 'else' statement
                    {
                    dbg.location(28,81);
                    match(input,31,FOLLOW_31_in_conditional279); if (state.failed) return ;
                    dbg.location(28,88);
                    pushFollow(FOLLOW_statement_in_conditional281);
                    statement();

                    state._fsp--;
                    if (state.failed) return ;

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
            match(input,45,FOLLOW_45_in_loop296); if (state.failed) return ;
            dbg.location(31,13);
            match(input,20,FOLLOW_20_in_loop298); if (state.failed) return ;
            dbg.location(31,17);
            pushFollow(FOLLOW_expression_in_loop300);
            expression();

            state._fsp--;
            if (state.failed) return ;
            dbg.location(31,28);
            match(input,21,FOLLOW_21_in_loop302); if (state.failed) return ;
            dbg.location(31,32);
            pushFollow(FOLLOW_statement_in_loop304);
            statement();

            state._fsp--;
            if (state.failed) return ;

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
            match(input,39,FOLLOW_39_in_print317); if (state.failed) return ;
            dbg.location(34,13);
            match(input,20,FOLLOW_20_in_print319); if (state.failed) return ;
            dbg.location(34,17);
            pushFollow(FOLLOW_expression_in_print321);
            expression();

            state._fsp--;
            if (state.failed) return ;
            dbg.location(34,28);
            match(input,21,FOLLOW_21_in_print323); if (state.failed) return ;
            dbg.location(34,32);
            match(input,24,FOLLOW_24_in_print325); if (state.failed) return ;

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
    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:36:1: assignation : ( identifier | arrayidentifier ) '=' expression ';' ;
    public final void assignation() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "assignation");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(36, 0);

        try {
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:37:2: ( ( identifier | arrayidentifier ) '=' expression ';' )
            dbg.enterAlt(1);

            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:37:4: ( identifier | arrayidentifier ) '=' expression ';'
            {
            dbg.location(37,4);
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:37:4: ( identifier | arrayidentifier )
            int alt13=2;
            try { dbg.enterSubRule(13);
            try { dbg.enterDecision(13, decisionCanBacktrack[13]);

            int LA13_0 = input.LA(1);

            if ( (LA13_0==IDENTIFIER) ) {
                int LA13_1 = input.LA(2);

                if ( (LA13_1==26) ) {
                    alt13=2;
                }
                else if ( (LA13_1==25) ) {
                    alt13=1;
                }
                else {
                    if (state.backtracking>0) {state.failed=true; return ;}
                    NoViableAltException nvae =
                        new NoViableAltException("", 13, 1, input);

                    dbg.recognitionException(nvae);
                    throw nvae;

                }
            }
            else if ( (LA13_0==FLOAT||LA13_0==INTEGER||LA13_0==STRING) ) {
                alt13=2;
            }
            else {
                if (state.backtracking>0) {state.failed=true; return ;}
                NoViableAltException nvae =
                    new NoViableAltException("", 13, 0, input);

                dbg.recognitionException(nvae);
                throw nvae;

            }
            } finally {dbg.exitDecision(13);}

            switch (alt13) {
                case 1 :
                    dbg.enterAlt(1);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:37:5: identifier
                    {
                    dbg.location(37,5);
                    pushFollow(FOLLOW_identifier_in_assignation337);
                    identifier();

                    state._fsp--;
                    if (state.failed) return ;

                    }
                    break;
                case 2 :
                    dbg.enterAlt(2);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:37:18: arrayidentifier
                    {
                    dbg.location(37,18);
                    pushFollow(FOLLOW_arrayidentifier_in_assignation341);
                    arrayidentifier();

                    state._fsp--;
                    if (state.failed) return ;

                    }
                    break;

            }
            } finally {dbg.exitSubRule(13);}

            dbg.location(37,36);
            match(input,25,FOLLOW_25_in_assignation345); if (state.failed) return ;
            dbg.location(37,40);
            pushFollow(FOLLOW_expression_in_assignation347);
            expression();

            state._fsp--;
            if (state.failed) return ;
            dbg.location(37,51);
            match(input,24,FOLLOW_24_in_assignation349); if (state.failed) return ;

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(37, 53);

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
    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:39:1: expression : exp ( COMPARITIONOPERATORS exp )? ;
    public final void expression() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "expression");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(39, 0);

        try {
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:40:2: ( exp ( COMPARITIONOPERATORS exp )? )
            dbg.enterAlt(1);

            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:40:5: exp ( COMPARITIONOPERATORS exp )?
            {
            dbg.location(40,5);
            pushFollow(FOLLOW_exp_in_expression361);
            exp();

            state._fsp--;
            if (state.failed) return ;
            dbg.location(40,9);
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:40:9: ( COMPARITIONOPERATORS exp )?
            int alt14=2;
            try { dbg.enterSubRule(14);
            try { dbg.enterDecision(14, decisionCanBacktrack[14]);

            int LA14_0 = input.LA(1);

            if ( (LA14_0==COMPARITIONOPERATORS) ) {
                int LA14_1 = input.LA(2);

                if ( (synpred22_spirit()) ) {
                    alt14=1;
                }
            }
            } finally {dbg.exitDecision(14);}

            switch (alt14) {
                case 1 :
                    dbg.enterAlt(1);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:40:10: COMPARITIONOPERATORS exp
                    {
                    dbg.location(40,10);
                    match(input,COMPARITIONOPERATORS,FOLLOW_COMPARITIONOPERATORS_in_expression364); if (state.failed) return ;
                    dbg.location(40,31);
                    pushFollow(FOLLOW_exp_in_expression366);
                    exp();

                    state._fsp--;
                    if (state.failed) return ;

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
        dbg.location(40, 35);

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
    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:42:1: exp : term ( ADDITIONSUBSTRACTIONOPERATORS term )? ;
    public final void exp() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "exp");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(42, 0);

        try {
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:43:2: ( term ( ADDITIONSUBSTRACTIONOPERATORS term )? )
            dbg.enterAlt(1);

            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:43:5: term ( ADDITIONSUBSTRACTIONOPERATORS term )?
            {
            dbg.location(43,5);
            pushFollow(FOLLOW_term_in_exp379);
            term();

            state._fsp--;
            if (state.failed) return ;
            dbg.location(43,10);
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:43:10: ( ADDITIONSUBSTRACTIONOPERATORS term )?
            int alt15=2;
            try { dbg.enterSubRule(15);
            try { dbg.enterDecision(15, decisionCanBacktrack[15]);

            int LA15_0 = input.LA(1);

            if ( (LA15_0==ADDITIONSUBSTRACTIONOPERATORS) ) {
                int LA15_1 = input.LA(2);

                if ( (synpred23_spirit()) ) {
                    alt15=1;
                }
            }
            } finally {dbg.exitDecision(15);}

            switch (alt15) {
                case 1 :
                    dbg.enterAlt(1);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:43:11: ADDITIONSUBSTRACTIONOPERATORS term
                    {
                    dbg.location(43,11);
                    match(input,ADDITIONSUBSTRACTIONOPERATORS,FOLLOW_ADDITIONSUBSTRACTIONOPERATORS_in_exp382); if (state.failed) return ;
                    dbg.location(43,41);
                    pushFollow(FOLLOW_term_in_exp384);
                    term();

                    state._fsp--;
                    if (state.failed) return ;

                    }
                    break;

            }
            } finally {dbg.exitSubRule(15);}


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(43, 46);

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
    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:45:1: term : factor ( ADDITIONSUBSTRACTIONOPERATORS factor )? ;
    public final void term() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "term");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(45, 0);

        try {
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:46:2: ( factor ( ADDITIONSUBSTRACTIONOPERATORS factor )? )
            dbg.enterAlt(1);

            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:46:5: factor ( ADDITIONSUBSTRACTIONOPERATORS factor )?
            {
            dbg.location(46,5);
            pushFollow(FOLLOW_factor_in_term397);
            factor();

            state._fsp--;
            if (state.failed) return ;
            dbg.location(46,12);
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:46:12: ( ADDITIONSUBSTRACTIONOPERATORS factor )?
            int alt16=2;
            try { dbg.enterSubRule(16);
            try { dbg.enterDecision(16, decisionCanBacktrack[16]);

            int LA16_0 = input.LA(1);

            if ( (LA16_0==ADDITIONSUBSTRACTIONOPERATORS) ) {
                int LA16_1 = input.LA(2);

                if ( (synpred24_spirit()) ) {
                    alt16=1;
                }
            }
            } finally {dbg.exitDecision(16);}

            switch (alt16) {
                case 1 :
                    dbg.enterAlt(1);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:46:13: ADDITIONSUBSTRACTIONOPERATORS factor
                    {
                    dbg.location(46,13);
                    match(input,ADDITIONSUBSTRACTIONOPERATORS,FOLLOW_ADDITIONSUBSTRACTIONOPERATORS_in_term400); if (state.failed) return ;
                    dbg.location(46,43);
                    pushFollow(FOLLOW_factor_in_term402);
                    factor();

                    state._fsp--;
                    if (state.failed) return ;

                    }
                    break;

            }
            } finally {dbg.exitSubRule(16);}


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(46, 50);

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
    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:48:1: factor : ( '(' expression ')' | ( ADDITIONSUBSTRACTIONOPERATORS )? varcte );
    public final void factor() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "factor");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(48, 0);

        try {
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:49:2: ( '(' expression ')' | ( ADDITIONSUBSTRACTIONOPERATORS )? varcte )
            int alt18=2;
            try { dbg.enterDecision(18, decisionCanBacktrack[18]);

            int LA18_0 = input.LA(1);

            if ( (LA18_0==20) ) {
                alt18=1;
            }
            else if ( (LA18_0==ADDITIONSUBSTRACTIONOPERATORS||LA18_0==FLOAT||(LA18_0 >= IDENTIFIER && LA18_0 <= INTEGER)||LA18_0==STRING||LA18_0==19||LA18_0==33||LA18_0==38||(LA18_0 >= 42 && LA18_0 <= 43)) ) {
                alt18=2;
            }
            else {
                if (state.backtracking>0) {state.failed=true; return ;}
                NoViableAltException nvae =
                    new NoViableAltException("", 18, 0, input);

                dbg.recognitionException(nvae);
                throw nvae;

            }
            } finally {dbg.exitDecision(18);}

            switch (alt18) {
                case 1 :
                    dbg.enterAlt(1);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:49:5: '(' expression ')'
                    {
                    dbg.location(49,5);
                    match(input,20,FOLLOW_20_in_factor415); if (state.failed) return ;
                    dbg.location(49,9);
                    pushFollow(FOLLOW_expression_in_factor417);
                    expression();

                    state._fsp--;
                    if (state.failed) return ;
                    dbg.location(49,20);
                    match(input,21,FOLLOW_21_in_factor419); if (state.failed) return ;

                    }
                    break;
                case 2 :
                    dbg.enterAlt(2);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:49:25: ( ADDITIONSUBSTRACTIONOPERATORS )? varcte
                    {
                    dbg.location(49,25);
                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:49:25: ( ADDITIONSUBSTRACTIONOPERATORS )?
                    int alt17=2;
                    try { dbg.enterSubRule(17);
                    try { dbg.enterDecision(17, decisionCanBacktrack[17]);

                    int LA17_0 = input.LA(1);

                    if ( (LA17_0==ADDITIONSUBSTRACTIONOPERATORS) ) {
                        alt17=1;
                    }
                    } finally {dbg.exitDecision(17);}

                    switch (alt17) {
                        case 1 :
                            dbg.enterAlt(1);

                            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:49:26: ADDITIONSUBSTRACTIONOPERATORS
                            {
                            dbg.location(49,26);
                            match(input,ADDITIONSUBSTRACTIONOPERATORS,FOLLOW_ADDITIONSUBSTRACTIONOPERATORS_in_factor423); if (state.failed) return ;

                            }
                            break;

                    }
                    } finally {dbg.exitSubRule(17);}

                    dbg.location(49,58);
                    pushFollow(FOLLOW_varcte_in_factor427);
                    varcte();

                    state._fsp--;
                    if (state.failed) return ;

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
        dbg.location(49, 63);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "factor");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "factor"



    // $ANTLR start "varcte"
    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:51:1: varcte : ( STRING | FLOAT | INTEGER | arrayidentifier | 'true' | 'false' | identifier | 'this' | 'new' identifier '(' ')' | 'new' arrayidentifier | '!' expression ) ( invocation )? ;
    public final void varcte() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "varcte");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(51, 0);

        try {
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:52:2: ( ( STRING | FLOAT | INTEGER | arrayidentifier | 'true' | 'false' | identifier | 'this' | 'new' identifier '(' ')' | 'new' arrayidentifier | '!' expression ) ( invocation )? )
            dbg.enterAlt(1);

            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:52:5: ( STRING | FLOAT | INTEGER | arrayidentifier | 'true' | 'false' | identifier | 'this' | 'new' identifier '(' ')' | 'new' arrayidentifier | '!' expression ) ( invocation )?
            {
            dbg.location(52,5);
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:52:5: ( STRING | FLOAT | INTEGER | arrayidentifier | 'true' | 'false' | identifier | 'this' | 'new' identifier '(' ')' | 'new' arrayidentifier | '!' expression )
            int alt19=11;
            try { dbg.enterSubRule(19);
            try { dbg.enterDecision(19, decisionCanBacktrack[19]);

            switch ( input.LA(1) ) {
            case STRING:
                {
                int LA19_1 = input.LA(2);

                if ( (LA19_1==26) ) {
                    alt19=4;
                }
                else if ( (LA19_1==EOF||LA19_1==ADDITIONSUBSTRACTIONOPERATORS||LA19_1==COMPARITIONOPERATORS||(LA19_1 >= 21 && LA19_1 <= 24)||LA19_1==27) ) {
                    alt19=1;
                }
                else {
                    if (state.backtracking>0) {state.failed=true; return ;}
                    NoViableAltException nvae =
                        new NoViableAltException("", 19, 1, input);

                    dbg.recognitionException(nvae);
                    throw nvae;

                }
                }
                break;
            case FLOAT:
                {
                int LA19_2 = input.LA(2);

                if ( (LA19_2==26) ) {
                    alt19=4;
                }
                else if ( (LA19_2==EOF||LA19_2==ADDITIONSUBSTRACTIONOPERATORS||LA19_2==COMPARITIONOPERATORS||(LA19_2 >= 21 && LA19_2 <= 24)||LA19_2==27) ) {
                    alt19=2;
                }
                else {
                    if (state.backtracking>0) {state.failed=true; return ;}
                    NoViableAltException nvae =
                        new NoViableAltException("", 19, 2, input);

                    dbg.recognitionException(nvae);
                    throw nvae;

                }
                }
                break;
            case INTEGER:
                {
                int LA19_3 = input.LA(2);

                if ( (LA19_3==26) ) {
                    alt19=4;
                }
                else if ( (LA19_3==EOF||LA19_3==ADDITIONSUBSTRACTIONOPERATORS||LA19_3==COMPARITIONOPERATORS||(LA19_3 >= 21 && LA19_3 <= 24)||LA19_3==27) ) {
                    alt19=3;
                }
                else {
                    if (state.backtracking>0) {state.failed=true; return ;}
                    NoViableAltException nvae =
                        new NoViableAltException("", 19, 3, input);

                    dbg.recognitionException(nvae);
                    throw nvae;

                }
                }
                break;
            case IDENTIFIER:
                {
                int LA19_4 = input.LA(2);

                if ( (LA19_4==26) ) {
                    alt19=4;
                }
                else if ( (LA19_4==EOF||LA19_4==ADDITIONSUBSTRACTIONOPERATORS||LA19_4==COMPARITIONOPERATORS||(LA19_4 >= 21 && LA19_4 <= 24)||LA19_4==27) ) {
                    alt19=7;
                }
                else {
                    if (state.backtracking>0) {state.failed=true; return ;}
                    NoViableAltException nvae =
                        new NoViableAltException("", 19, 4, input);

                    dbg.recognitionException(nvae);
                    throw nvae;

                }
                }
                break;
            case 43:
                {
                alt19=5;
                }
                break;
            case 33:
                {
                alt19=6;
                }
                break;
            case 42:
                {
                alt19=8;
                }
                break;
            case 38:
                {
                int LA19_8 = input.LA(2);

                if ( (LA19_8==IDENTIFIER) ) {
                    int LA19_15 = input.LA(3);

                    if ( (LA19_15==26) ) {
                        alt19=10;
                    }
                    else if ( (LA19_15==20) ) {
                        alt19=9;
                    }
                    else {
                        if (state.backtracking>0) {state.failed=true; return ;}
                        NoViableAltException nvae =
                            new NoViableAltException("", 19, 15, input);

                        dbg.recognitionException(nvae);
                        throw nvae;

                    }
                }
                else if ( (LA19_8==FLOAT||LA19_8==INTEGER||LA19_8==STRING) ) {
                    alt19=10;
                }
                else {
                    if (state.backtracking>0) {state.failed=true; return ;}
                    NoViableAltException nvae =
                        new NoViableAltException("", 19, 8, input);

                    dbg.recognitionException(nvae);
                    throw nvae;

                }
                }
                break;
            case 19:
                {
                alt19=11;
                }
                break;
            default:
                if (state.backtracking>0) {state.failed=true; return ;}
                NoViableAltException nvae =
                    new NoViableAltException("", 19, 0, input);

                dbg.recognitionException(nvae);
                throw nvae;

            }

            } finally {dbg.exitDecision(19);}

            switch (alt19) {
                case 1 :
                    dbg.enterAlt(1);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:52:6: STRING
                    {
                    dbg.location(52,6);
                    match(input,STRING,FOLLOW_STRING_in_varcte439); if (state.failed) return ;

                    }
                    break;
                case 2 :
                    dbg.enterAlt(2);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:52:15: FLOAT
                    {
                    dbg.location(52,15);
                    match(input,FLOAT,FOLLOW_FLOAT_in_varcte443); if (state.failed) return ;

                    }
                    break;
                case 3 :
                    dbg.enterAlt(3);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:52:23: INTEGER
                    {
                    dbg.location(52,23);
                    match(input,INTEGER,FOLLOW_INTEGER_in_varcte447); if (state.failed) return ;

                    }
                    break;
                case 4 :
                    dbg.enterAlt(4);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:52:32: arrayidentifier
                    {
                    dbg.location(52,32);
                    pushFollow(FOLLOW_arrayidentifier_in_varcte450);
                    arrayidentifier();

                    state._fsp--;
                    if (state.failed) return ;

                    }
                    break;
                case 5 :
                    dbg.enterAlt(5);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:52:50: 'true'
                    {
                    dbg.location(52,50);
                    match(input,43,FOLLOW_43_in_varcte454); if (state.failed) return ;

                    }
                    break;
                case 6 :
                    dbg.enterAlt(6);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:52:59: 'false'
                    {
                    dbg.location(52,59);
                    match(input,33,FOLLOW_33_in_varcte458); if (state.failed) return ;

                    }
                    break;
                case 7 :
                    dbg.enterAlt(7);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:53:5: identifier
                    {
                    dbg.location(53,5);
                    pushFollow(FOLLOW_identifier_in_varcte464);
                    identifier();

                    state._fsp--;
                    if (state.failed) return ;

                    }
                    break;
                case 8 :
                    dbg.enterAlt(8);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:53:18: 'this'
                    {
                    dbg.location(53,18);
                    match(input,42,FOLLOW_42_in_varcte468); if (state.failed) return ;

                    }
                    break;
                case 9 :
                    dbg.enterAlt(9);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:53:27: 'new' identifier '(' ')'
                    {
                    dbg.location(53,27);
                    match(input,38,FOLLOW_38_in_varcte472); if (state.failed) return ;
                    dbg.location(53,33);
                    pushFollow(FOLLOW_identifier_in_varcte474);
                    identifier();

                    state._fsp--;
                    if (state.failed) return ;
                    dbg.location(53,44);
                    match(input,20,FOLLOW_20_in_varcte476); if (state.failed) return ;
                    dbg.location(53,48);
                    match(input,21,FOLLOW_21_in_varcte478); if (state.failed) return ;

                    }
                    break;
                case 10 :
                    dbg.enterAlt(10);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:53:53: 'new' arrayidentifier
                    {
                    dbg.location(53,53);
                    match(input,38,FOLLOW_38_in_varcte481); if (state.failed) return ;
                    dbg.location(53,59);
                    pushFollow(FOLLOW_arrayidentifier_in_varcte483);
                    arrayidentifier();

                    state._fsp--;
                    if (state.failed) return ;

                    }
                    break;
                case 11 :
                    dbg.enterAlt(11);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:53:77: '!' expression
                    {
                    dbg.location(53,77);
                    match(input,19,FOLLOW_19_in_varcte487); if (state.failed) return ;
                    dbg.location(53,81);
                    pushFollow(FOLLOW_expression_in_varcte489);
                    expression();

                    state._fsp--;
                    if (state.failed) return ;

                    }
                    break;

            }
            } finally {dbg.exitSubRule(19);}

            dbg.location(53,94);
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:53:94: ( invocation )?
            int alt20=2;
            try { dbg.enterSubRule(20);
            try { dbg.enterDecision(20, decisionCanBacktrack[20]);

            int LA20_0 = input.LA(1);

            if ( (LA20_0==23) ) {
                int LA20_1 = input.LA(2);

                if ( (synpred37_spirit()) ) {
                    alt20=1;
                }
            }
            } finally {dbg.exitDecision(20);}

            switch (alt20) {
                case 1 :
                    dbg.enterAlt(1);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:53:95: invocation
                    {
                    dbg.location(53,95);
                    pushFollow(FOLLOW_invocation_in_varcte494);
                    invocation();

                    state._fsp--;
                    if (state.failed) return ;

                    }
                    break;

            }
            } finally {dbg.exitSubRule(20);}


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(53, 106);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "varcte");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "varcte"



    // $ANTLR start "invocation"
    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:55:1: invocation : '.' identifier '(' ( expression ( ',' expression )* )? ')' ( invocation )? ;
    public final void invocation() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "invocation");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(55, 0);

        try {
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:56:2: ( '.' identifier '(' ( expression ( ',' expression )* )? ')' ( invocation )? )
            dbg.enterAlt(1);

            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:56:5: '.' identifier '(' ( expression ( ',' expression )* )? ')' ( invocation )?
            {
            dbg.location(56,5);
            match(input,23,FOLLOW_23_in_invocation506); if (state.failed) return ;
            dbg.location(56,9);
            pushFollow(FOLLOW_identifier_in_invocation508);
            identifier();

            state._fsp--;
            if (state.failed) return ;
            dbg.location(56,20);
            match(input,20,FOLLOW_20_in_invocation510); if (state.failed) return ;
            dbg.location(56,24);
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:56:24: ( expression ( ',' expression )* )?
            int alt22=2;
            try { dbg.enterSubRule(22);
            try { dbg.enterDecision(22, decisionCanBacktrack[22]);

            int LA22_0 = input.LA(1);

            if ( (LA22_0==ADDITIONSUBSTRACTIONOPERATORS||LA22_0==FLOAT||(LA22_0 >= IDENTIFIER && LA22_0 <= INTEGER)||LA22_0==STRING||(LA22_0 >= 19 && LA22_0 <= 20)||LA22_0==33||LA22_0==38||(LA22_0 >= 42 && LA22_0 <= 43)) ) {
                alt22=1;
            }
            } finally {dbg.exitDecision(22);}

            switch (alt22) {
                case 1 :
                    dbg.enterAlt(1);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:56:26: expression ( ',' expression )*
                    {
                    dbg.location(56,26);
                    pushFollow(FOLLOW_expression_in_invocation514);
                    expression();

                    state._fsp--;
                    if (state.failed) return ;
                    dbg.location(56,37);
                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:56:37: ( ',' expression )*
                    try { dbg.enterSubRule(21);

                    loop21:
                    do {
                        int alt21=2;
                        try { dbg.enterDecision(21, decisionCanBacktrack[21]);

                        int LA21_0 = input.LA(1);

                        if ( (LA21_0==22) ) {
                            alt21=1;
                        }


                        } finally {dbg.exitDecision(21);}

                        switch (alt21) {
                    	case 1 :
                    	    dbg.enterAlt(1);

                    	    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:56:39: ',' expression
                    	    {
                    	    dbg.location(56,39);
                    	    match(input,22,FOLLOW_22_in_invocation518); if (state.failed) return ;
                    	    dbg.location(56,43);
                    	    pushFollow(FOLLOW_expression_in_invocation520);
                    	    expression();

                    	    state._fsp--;
                    	    if (state.failed) return ;

                    	    }
                    	    break;

                    	default :
                    	    break loop21;
                        }
                    } while (true);
                    } finally {dbg.exitSubRule(21);}


                    }
                    break;

            }
            } finally {dbg.exitSubRule(22);}

            dbg.location(56,60);
            match(input,21,FOLLOW_21_in_invocation528); if (state.failed) return ;
            dbg.location(56,65);
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:56:65: ( invocation )?
            int alt23=2;
            try { dbg.enterSubRule(23);
            try { dbg.enterDecision(23, decisionCanBacktrack[23]);

            int LA23_0 = input.LA(1);

            if ( (LA23_0==23) ) {
                int LA23_1 = input.LA(2);

                if ( (synpred40_spirit()) ) {
                    alt23=1;
                }
            }
            } finally {dbg.exitDecision(23);}

            switch (alt23) {
                case 1 :
                    dbg.enterAlt(1);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:56:66: invocation
                    {
                    dbg.location(56,66);
                    pushFollow(FOLLOW_invocation_in_invocation532);
                    invocation();

                    state._fsp--;
                    if (state.failed) return ;

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
        dbg.location(56, 77);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "invocation");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "invocation"



    // $ANTLR start "identifier"
    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:58:1: identifier : IDENTIFIER ;
    public final void identifier() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "identifier");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(58, 0);

        try {
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:59:2: ( IDENTIFIER )
            dbg.enterAlt(1);

            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:59:4: IDENTIFIER
            {
            dbg.location(59,4);
            match(input,IDENTIFIER,FOLLOW_IDENTIFIER_in_identifier546); if (state.failed) return ;

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(59, 13);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "identifier");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "identifier"



    // $ANTLR start "arrayidentifier"
    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:61:1: arrayidentifier : ( STRING | FLOAT | INTEGER | IDENTIFIER ) '[' ( expression )? ']' ;
    public final void arrayidentifier() throws RecognitionException {
        try { dbg.enterRule(getGrammarFileName(), "arrayidentifier");
        if ( getRuleLevel()==0 ) {dbg.commence();}
        incRuleLevel();
        dbg.location(61, 0);

        try {
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:62:2: ( ( STRING | FLOAT | INTEGER | IDENTIFIER ) '[' ( expression )? ']' )
            dbg.enterAlt(1);

            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:62:4: ( STRING | FLOAT | INTEGER | IDENTIFIER ) '[' ( expression )? ']'
            {
            dbg.location(62,4);
            if ( input.LA(1)==FLOAT||(input.LA(1) >= IDENTIFIER && input.LA(1) <= INTEGER)||input.LA(1)==STRING ) {
                input.consume();
                state.errorRecovery=false;
                state.failed=false;
            }
            else {
                if (state.backtracking>0) {state.failed=true; return ;}
                MismatchedSetException mse = new MismatchedSetException(null,input);
                dbg.recognitionException(mse);
                throw mse;
            }

            dbg.location(62,44);
            match(input,26,FOLLOW_26_in_arrayidentifier572); if (state.failed) return ;
            dbg.location(62,47);
            // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:62:47: ( expression )?
            int alt24=2;
            try { dbg.enterSubRule(24);
            try { dbg.enterDecision(24, decisionCanBacktrack[24]);

            int LA24_0 = input.LA(1);

            if ( (LA24_0==ADDITIONSUBSTRACTIONOPERATORS||LA24_0==FLOAT||(LA24_0 >= IDENTIFIER && LA24_0 <= INTEGER)||LA24_0==STRING||(LA24_0 >= 19 && LA24_0 <= 20)||LA24_0==33||LA24_0==38||(LA24_0 >= 42 && LA24_0 <= 43)) ) {
                alt24=1;
            }
            } finally {dbg.exitDecision(24);}

            switch (alt24) {
                case 1 :
                    dbg.enterAlt(1);

                    // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:62:48: expression
                    {
                    dbg.location(62,48);
                    pushFollow(FOLLOW_expression_in_arrayidentifier574);
                    expression();

                    state._fsp--;
                    if (state.failed) return ;

                    }
                    break;

            }
            } finally {dbg.exitSubRule(24);}

            dbg.location(62,60);
            match(input,27,FOLLOW_27_in_arrayidentifier577); if (state.failed) return ;

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }

        finally {
        	// do for sure before leaving
        }
        dbg.location(62, 62);

        }
        finally {
            dbg.exitRule(getGrammarFileName(), "arrayidentifier");
            decRuleLevel();
            if ( getRuleLevel()==0 ) {dbg.terminate();}
        }

        return ;
    }
    // $ANTLR end "arrayidentifier"

    // $ANTLR start synpred2_spirit
    public final void synpred2_spirit_fragment() throws RecognitionException {
        // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:13:29: ( vardeclaration )
        dbg.enterAlt(1);

        // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:13:29: vardeclaration
        {
        dbg.location(13,29);
        pushFollow(FOLLOW_vardeclaration_in_synpred2_spirit95);
        vardeclaration();

        state._fsp--;
        if (state.failed) return ;

        }

    }
    // $ANTLR end synpred2_spirit

    // $ANTLR start synpred6_spirit
    public final void synpred6_spirit_fragment() throws RecognitionException {
        // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:19:77: ( vardeclaration )
        dbg.enterAlt(1);

        // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:19:77: vardeclaration
        {
        dbg.location(19,77);
        pushFollow(FOLLOW_vardeclaration_in_synpred6_spirit158);
        vardeclaration();

        state._fsp--;
        if (state.failed) return ;

        }

    }
    // $ANTLR end synpred6_spirit

    // $ANTLR start synpred15_spirit
    public final void synpred15_spirit_fragment() throws RecognitionException {
        // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:25:28: ( assignation )
        dbg.enterAlt(1);

        // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:25:28: assignation
        {
        dbg.location(25,28);
        pushFollow(FOLLOW_assignation_in_synpred15_spirit225);
        assignation();

        state._fsp--;
        if (state.failed) return ;

        }

    }
    // $ANTLR end synpred15_spirit

    // $ANTLR start synpred16_spirit
    public final void synpred16_spirit_fragment() throws RecognitionException {
        // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:25:42: ( vardeclaration )
        dbg.enterAlt(1);

        // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:25:42: vardeclaration
        {
        dbg.location(25,42);
        pushFollow(FOLLOW_vardeclaration_in_synpred16_spirit229);
        vardeclaration();

        state._fsp--;
        if (state.failed) return ;

        }

    }
    // $ANTLR end synpred16_spirit

    // $ANTLR start synpred19_spirit
    public final void synpred19_spirit_fragment() throws RecognitionException {
        // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:28:40: ( 'elsif' '(' expression ')' statement )
        dbg.enterAlt(1);

        // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:28:40: 'elsif' '(' expression ')' statement
        {
        dbg.location(28,40);
        match(input,32,FOLLOW_32_in_synpred19_spirit265); if (state.failed) return ;
        dbg.location(28,48);
        match(input,20,FOLLOW_20_in_synpred19_spirit267); if (state.failed) return ;
        dbg.location(28,52);
        pushFollow(FOLLOW_expression_in_synpred19_spirit269);
        expression();

        state._fsp--;
        if (state.failed) return ;
        dbg.location(28,63);
        match(input,21,FOLLOW_21_in_synpred19_spirit271); if (state.failed) return ;
        dbg.location(28,67);
        pushFollow(FOLLOW_statement_in_synpred19_spirit273);
        statement();

        state._fsp--;
        if (state.failed) return ;

        }

    }
    // $ANTLR end synpred19_spirit

    // $ANTLR start synpred20_spirit
    public final void synpred20_spirit_fragment() throws RecognitionException {
        // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:28:81: ( 'else' statement )
        dbg.enterAlt(1);

        // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:28:81: 'else' statement
        {
        dbg.location(28,81);
        match(input,31,FOLLOW_31_in_synpred20_spirit279); if (state.failed) return ;
        dbg.location(28,88);
        pushFollow(FOLLOW_statement_in_synpred20_spirit281);
        statement();

        state._fsp--;
        if (state.failed) return ;

        }

    }
    // $ANTLR end synpred20_spirit

    // $ANTLR start synpred22_spirit
    public final void synpred22_spirit_fragment() throws RecognitionException {
        // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:40:10: ( COMPARITIONOPERATORS exp )
        dbg.enterAlt(1);

        // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:40:10: COMPARITIONOPERATORS exp
        {
        dbg.location(40,10);
        match(input,COMPARITIONOPERATORS,FOLLOW_COMPARITIONOPERATORS_in_synpred22_spirit364); if (state.failed) return ;
        dbg.location(40,31);
        pushFollow(FOLLOW_exp_in_synpred22_spirit366);
        exp();

        state._fsp--;
        if (state.failed) return ;

        }

    }
    // $ANTLR end synpred22_spirit

    // $ANTLR start synpred23_spirit
    public final void synpred23_spirit_fragment() throws RecognitionException {
        // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:43:11: ( ADDITIONSUBSTRACTIONOPERATORS term )
        dbg.enterAlt(1);

        // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:43:11: ADDITIONSUBSTRACTIONOPERATORS term
        {
        dbg.location(43,11);
        match(input,ADDITIONSUBSTRACTIONOPERATORS,FOLLOW_ADDITIONSUBSTRACTIONOPERATORS_in_synpred23_spirit382); if (state.failed) return ;
        dbg.location(43,41);
        pushFollow(FOLLOW_term_in_synpred23_spirit384);
        term();

        state._fsp--;
        if (state.failed) return ;

        }

    }
    // $ANTLR end synpred23_spirit

    // $ANTLR start synpred24_spirit
    public final void synpred24_spirit_fragment() throws RecognitionException {
        // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:46:13: ( ADDITIONSUBSTRACTIONOPERATORS factor )
        dbg.enterAlt(1);

        // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:46:13: ADDITIONSUBSTRACTIONOPERATORS factor
        {
        dbg.location(46,13);
        match(input,ADDITIONSUBSTRACTIONOPERATORS,FOLLOW_ADDITIONSUBSTRACTIONOPERATORS_in_synpred24_spirit400); if (state.failed) return ;
        dbg.location(46,43);
        pushFollow(FOLLOW_factor_in_synpred24_spirit402);
        factor();

        state._fsp--;
        if (state.failed) return ;

        }

    }
    // $ANTLR end synpred24_spirit

    // $ANTLR start synpred37_spirit
    public final void synpred37_spirit_fragment() throws RecognitionException {
        // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:53:95: ( invocation )
        dbg.enterAlt(1);

        // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:53:95: invocation
        {
        dbg.location(53,95);
        pushFollow(FOLLOW_invocation_in_synpred37_spirit494);
        invocation();

        state._fsp--;
        if (state.failed) return ;

        }

    }
    // $ANTLR end synpred37_spirit

    // $ANTLR start synpred40_spirit
    public final void synpred40_spirit_fragment() throws RecognitionException {
        // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:56:66: ( invocation )
        dbg.enterAlt(1);

        // C:\\Users\\Juan Nolazco\\Desktop\\David\\spirit.g:56:66: invocation
        {
        dbg.location(56,66);
        pushFollow(FOLLOW_invocation_in_synpred40_spirit532);
        invocation();

        state._fsp--;
        if (state.failed) return ;

        }

    }
    // $ANTLR end synpred40_spirit

    // Delegated rules

    public final boolean synpred24_spirit() {
        state.backtracking++;
        dbg.beginBacktrack(state.backtracking);
        int start = input.mark();
        try {
            synpred24_spirit_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        dbg.endBacktrack(state.backtracking, success);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred19_spirit() {
        state.backtracking++;
        dbg.beginBacktrack(state.backtracking);
        int start = input.mark();
        try {
            synpred19_spirit_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        dbg.endBacktrack(state.backtracking, success);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred37_spirit() {
        state.backtracking++;
        dbg.beginBacktrack(state.backtracking);
        int start = input.mark();
        try {
            synpred37_spirit_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        dbg.endBacktrack(state.backtracking, success);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred16_spirit() {
        state.backtracking++;
        dbg.beginBacktrack(state.backtracking);
        int start = input.mark();
        try {
            synpred16_spirit_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        dbg.endBacktrack(state.backtracking, success);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred40_spirit() {
        state.backtracking++;
        dbg.beginBacktrack(state.backtracking);
        int start = input.mark();
        try {
            synpred40_spirit_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        dbg.endBacktrack(state.backtracking, success);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred23_spirit() {
        state.backtracking++;
        dbg.beginBacktrack(state.backtracking);
        int start = input.mark();
        try {
            synpred23_spirit_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        dbg.endBacktrack(state.backtracking, success);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred22_spirit() {
        state.backtracking++;
        dbg.beginBacktrack(state.backtracking);
        int start = input.mark();
        try {
            synpred22_spirit_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        dbg.endBacktrack(state.backtracking, success);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred2_spirit() {
        state.backtracking++;
        dbg.beginBacktrack(state.backtracking);
        int start = input.mark();
        try {
            synpred2_spirit_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        dbg.endBacktrack(state.backtracking, success);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred6_spirit() {
        state.backtracking++;
        dbg.beginBacktrack(state.backtracking);
        int start = input.mark();
        try {
            synpred6_spirit_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        dbg.endBacktrack(state.backtracking, success);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred20_spirit() {
        state.backtracking++;
        dbg.beginBacktrack(state.backtracking);
        int start = input.mark();
        try {
            synpred20_spirit_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        dbg.endBacktrack(state.backtracking, success);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred15_spirit() {
        state.backtracking++;
        dbg.beginBacktrack(state.backtracking);
        int start = input.mark();
        try {
            synpred15_spirit_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        dbg.endBacktrack(state.backtracking, success);
        state.backtracking--;
        state.failed=false;
        return success;
    }


 

    public static final BitSet FOLLOW_mainclass_in_goal39 = new BitSet(new long[]{0x0000000040000002L});
    public static final BitSet FOLLOW_classdeclaration_in_goal43 = new BitSet(new long[]{0x0000000040000002L});
    public static final BitSet FOLLOW_30_in_mainclass56 = new BitSet(new long[]{0x0000000000001000L});
    public static final BitSet FOLLOW_identifier_in_mainclass58 = new BitSet(new long[]{0x0000400000000000L});
    public static final BitSet FOLLOW_46_in_mainclass60 = new BitSet(new long[]{0x0000020000000000L});
    public static final BitSet FOLLOW_41_in_mainclass62 = new BitSet(new long[]{0x0000100000000000L});
    public static final BitSet FOLLOW_44_in_mainclass64 = new BitSet(new long[]{0x0000002000000000L});
    public static final BitSet FOLLOW_37_in_mainclass66 = new BitSet(new long[]{0x0000000000100000L});
    public static final BitSet FOLLOW_20_in_mainclass68 = new BitSet(new long[]{0x0000000000200000L});
    public static final BitSet FOLLOW_21_in_mainclass70 = new BitSet(new long[]{0x0000609C30013400L});
    public static final BitSet FOLLOW_statement_in_mainclass73 = new BitSet(new long[]{0x0000800000000000L});
    public static final BitSet FOLLOW_47_in_mainclass75 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_30_in_classdeclaration88 = new BitSet(new long[]{0x0000000000001000L});
    public static final BitSet FOLLOW_identifier_in_classdeclaration90 = new BitSet(new long[]{0x0000400000000000L});
    public static final BitSet FOLLOW_46_in_classdeclaration92 = new BitSet(new long[]{0x0000801430013400L});
    public static final BitSet FOLLOW_vardeclaration_in_classdeclaration95 = new BitSet(new long[]{0x0000801430013400L});
    public static final BitSet FOLLOW_methoddeclaration_in_classdeclaration100 = new BitSet(new long[]{0x0000801430013400L});
    public static final BitSet FOLLOW_47_in_classdeclaration104 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_type_in_vardeclaration113 = new BitSet(new long[]{0x0000000000001000L});
    public static final BitSet FOLLOW_identifier_in_vardeclaration115 = new BitSet(new long[]{0x0000000001000000L});
    public static final BitSet FOLLOW_24_in_vardeclaration117 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_type_in_methoddeclaration130 = new BitSet(new long[]{0x0000000000001000L});
    public static final BitSet FOLLOW_identifier_in_methoddeclaration132 = new BitSet(new long[]{0x0000000000100000L});
    public static final BitSet FOLLOW_20_in_methoddeclaration134 = new BitSet(new long[]{0x0000001430213400L});
    public static final BitSet FOLLOW_type_in_methoddeclaration138 = new BitSet(new long[]{0x0000000000001000L});
    public static final BitSet FOLLOW_identifier_in_methoddeclaration140 = new BitSet(new long[]{0x0000000000600000L});
    public static final BitSet FOLLOW_22_in_methoddeclaration143 = new BitSet(new long[]{0x0000001430013400L});
    public static final BitSet FOLLOW_type_in_methoddeclaration145 = new BitSet(new long[]{0x0000000000001000L});
    public static final BitSet FOLLOW_identifier_in_methoddeclaration147 = new BitSet(new long[]{0x0000000000600000L});
    public static final BitSet FOLLOW_21_in_methoddeclaration153 = new BitSet(new long[]{0x0000400000000000L});
    public static final BitSet FOLLOW_46_in_methoddeclaration155 = new BitSet(new long[]{0x0000619C30013400L});
    public static final BitSet FOLLOW_vardeclaration_in_methoddeclaration158 = new BitSet(new long[]{0x0000619C30013400L});
    public static final BitSet FOLLOW_statement_in_methoddeclaration163 = new BitSet(new long[]{0x0000619C30013400L});
    public static final BitSet FOLLOW_40_in_methoddeclaration167 = new BitSet(new long[]{0x00000C4200193410L});
    public static final BitSet FOLLOW_expression_in_methoddeclaration169 = new BitSet(new long[]{0x0000000001000000L});
    public static final BitSet FOLLOW_24_in_methoddeclaration171 = new BitSet(new long[]{0x0000800000000000L});
    public static final BitSet FOLLOW_47_in_methoddeclaration173 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_36_in_type184 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_29_in_type188 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_34_in_type192 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_28_in_type196 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_identifier_in_type200 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_arrayidentifier_in_type204 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_46_in_statement214 = new BitSet(new long[]{0x0000E09C30013400L});
    public static final BitSet FOLLOW_statement_in_statement217 = new BitSet(new long[]{0x0000E09C30013400L});
    public static final BitSet FOLLOW_47_in_statement221 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_assignation_in_statement225 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_vardeclaration_in_statement229 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_conditional_in_statement233 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_loop_in_statement237 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_print_in_statement241 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_35_in_conditional254 = new BitSet(new long[]{0x0000000000100000L});
    public static final BitSet FOLLOW_20_in_conditional256 = new BitSet(new long[]{0x00000C4200193410L});
    public static final BitSet FOLLOW_expression_in_conditional258 = new BitSet(new long[]{0x0000000000200000L});
    public static final BitSet FOLLOW_21_in_conditional260 = new BitSet(new long[]{0x0000609C30013400L});
    public static final BitSet FOLLOW_statement_in_conditional262 = new BitSet(new long[]{0x0000000180000002L});
    public static final BitSet FOLLOW_32_in_conditional265 = new BitSet(new long[]{0x0000000000100000L});
    public static final BitSet FOLLOW_20_in_conditional267 = new BitSet(new long[]{0x00000C4200193410L});
    public static final BitSet FOLLOW_expression_in_conditional269 = new BitSet(new long[]{0x0000000000200000L});
    public static final BitSet FOLLOW_21_in_conditional271 = new BitSet(new long[]{0x0000609C30013400L});
    public static final BitSet FOLLOW_statement_in_conditional273 = new BitSet(new long[]{0x0000000180000002L});
    public static final BitSet FOLLOW_31_in_conditional279 = new BitSet(new long[]{0x0000609C30013400L});
    public static final BitSet FOLLOW_statement_in_conditional281 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_45_in_loop296 = new BitSet(new long[]{0x0000000000100000L});
    public static final BitSet FOLLOW_20_in_loop298 = new BitSet(new long[]{0x00000C4200193410L});
    public static final BitSet FOLLOW_expression_in_loop300 = new BitSet(new long[]{0x0000000000200000L});
    public static final BitSet FOLLOW_21_in_loop302 = new BitSet(new long[]{0x0000609C30013400L});
    public static final BitSet FOLLOW_statement_in_loop304 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_39_in_print317 = new BitSet(new long[]{0x0000000000100000L});
    public static final BitSet FOLLOW_20_in_print319 = new BitSet(new long[]{0x00000C4200193410L});
    public static final BitSet FOLLOW_expression_in_print321 = new BitSet(new long[]{0x0000000000200000L});
    public static final BitSet FOLLOW_21_in_print323 = new BitSet(new long[]{0x0000000001000000L});
    public static final BitSet FOLLOW_24_in_print325 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_identifier_in_assignation337 = new BitSet(new long[]{0x0000000002000000L});
    public static final BitSet FOLLOW_arrayidentifier_in_assignation341 = new BitSet(new long[]{0x0000000002000000L});
    public static final BitSet FOLLOW_25_in_assignation345 = new BitSet(new long[]{0x00000C4200193410L});
    public static final BitSet FOLLOW_expression_in_assignation347 = new BitSet(new long[]{0x0000000001000000L});
    public static final BitSet FOLLOW_24_in_assignation349 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_exp_in_expression361 = new BitSet(new long[]{0x0000000000000082L});
    public static final BitSet FOLLOW_COMPARITIONOPERATORS_in_expression364 = new BitSet(new long[]{0x00000C4200193410L});
    public static final BitSet FOLLOW_exp_in_expression366 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_term_in_exp379 = new BitSet(new long[]{0x0000000000000012L});
    public static final BitSet FOLLOW_ADDITIONSUBSTRACTIONOPERATORS_in_exp382 = new BitSet(new long[]{0x00000C4200193410L});
    public static final BitSet FOLLOW_term_in_exp384 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_factor_in_term397 = new BitSet(new long[]{0x0000000000000012L});
    public static final BitSet FOLLOW_ADDITIONSUBSTRACTIONOPERATORS_in_term400 = new BitSet(new long[]{0x00000C4200193410L});
    public static final BitSet FOLLOW_factor_in_term402 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_20_in_factor415 = new BitSet(new long[]{0x00000C4200193410L});
    public static final BitSet FOLLOW_expression_in_factor417 = new BitSet(new long[]{0x0000000000200000L});
    public static final BitSet FOLLOW_21_in_factor419 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ADDITIONSUBSTRACTIONOPERATORS_in_factor423 = new BitSet(new long[]{0x00000C4200093400L});
    public static final BitSet FOLLOW_varcte_in_factor427 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_STRING_in_varcte439 = new BitSet(new long[]{0x0000000000800002L});
    public static final BitSet FOLLOW_FLOAT_in_varcte443 = new BitSet(new long[]{0x0000000000800002L});
    public static final BitSet FOLLOW_INTEGER_in_varcte447 = new BitSet(new long[]{0x0000000000800002L});
    public static final BitSet FOLLOW_arrayidentifier_in_varcte450 = new BitSet(new long[]{0x0000000000800002L});
    public static final BitSet FOLLOW_43_in_varcte454 = new BitSet(new long[]{0x0000000000800002L});
    public static final BitSet FOLLOW_33_in_varcte458 = new BitSet(new long[]{0x0000000000800002L});
    public static final BitSet FOLLOW_identifier_in_varcte464 = new BitSet(new long[]{0x0000000000800002L});
    public static final BitSet FOLLOW_42_in_varcte468 = new BitSet(new long[]{0x0000000000800002L});
    public static final BitSet FOLLOW_38_in_varcte472 = new BitSet(new long[]{0x0000000000001000L});
    public static final BitSet FOLLOW_identifier_in_varcte474 = new BitSet(new long[]{0x0000000000100000L});
    public static final BitSet FOLLOW_20_in_varcte476 = new BitSet(new long[]{0x0000000000200000L});
    public static final BitSet FOLLOW_21_in_varcte478 = new BitSet(new long[]{0x0000000000800002L});
    public static final BitSet FOLLOW_38_in_varcte481 = new BitSet(new long[]{0x0000000000013400L});
    public static final BitSet FOLLOW_arrayidentifier_in_varcte483 = new BitSet(new long[]{0x0000000000800002L});
    public static final BitSet FOLLOW_19_in_varcte487 = new BitSet(new long[]{0x00000C4200193410L});
    public static final BitSet FOLLOW_expression_in_varcte489 = new BitSet(new long[]{0x0000000000800002L});
    public static final BitSet FOLLOW_invocation_in_varcte494 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_23_in_invocation506 = new BitSet(new long[]{0x0000000000001000L});
    public static final BitSet FOLLOW_identifier_in_invocation508 = new BitSet(new long[]{0x0000000000100000L});
    public static final BitSet FOLLOW_20_in_invocation510 = new BitSet(new long[]{0x00000C4200393410L});
    public static final BitSet FOLLOW_expression_in_invocation514 = new BitSet(new long[]{0x0000000000600000L});
    public static final BitSet FOLLOW_22_in_invocation518 = new BitSet(new long[]{0x00000C4200193410L});
    public static final BitSet FOLLOW_expression_in_invocation520 = new BitSet(new long[]{0x0000000000600000L});
    public static final BitSet FOLLOW_21_in_invocation528 = new BitSet(new long[]{0x0000000000800002L});
    public static final BitSet FOLLOW_invocation_in_invocation532 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_IDENTIFIER_in_identifier546 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_set_in_arrayidentifier556 = new BitSet(new long[]{0x0000000004000000L});
    public static final BitSet FOLLOW_26_in_arrayidentifier572 = new BitSet(new long[]{0x00000C4208193410L});
    public static final BitSet FOLLOW_expression_in_arrayidentifier574 = new BitSet(new long[]{0x0000000008000000L});
    public static final BitSet FOLLOW_27_in_arrayidentifier577 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_vardeclaration_in_synpred2_spirit95 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_vardeclaration_in_synpred6_spirit158 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_assignation_in_synpred15_spirit225 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_vardeclaration_in_synpred16_spirit229 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_32_in_synpred19_spirit265 = new BitSet(new long[]{0x0000000000100000L});
    public static final BitSet FOLLOW_20_in_synpred19_spirit267 = new BitSet(new long[]{0x00000C4200193410L});
    public static final BitSet FOLLOW_expression_in_synpred19_spirit269 = new BitSet(new long[]{0x0000000000200000L});
    public static final BitSet FOLLOW_21_in_synpred19_spirit271 = new BitSet(new long[]{0x0000609C30013400L});
    public static final BitSet FOLLOW_statement_in_synpred19_spirit273 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_31_in_synpred20_spirit279 = new BitSet(new long[]{0x0000609C30013400L});
    public static final BitSet FOLLOW_statement_in_synpred20_spirit281 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_COMPARITIONOPERATORS_in_synpred22_spirit364 = new BitSet(new long[]{0x00000C4200193410L});
    public static final BitSet FOLLOW_exp_in_synpred22_spirit366 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ADDITIONSUBSTRACTIONOPERATORS_in_synpred23_spirit382 = new BitSet(new long[]{0x00000C4200193410L});
    public static final BitSet FOLLOW_term_in_synpred23_spirit384 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ADDITIONSUBSTRACTIONOPERATORS_in_synpred24_spirit400 = new BitSet(new long[]{0x00000C4200193410L});
    public static final BitSet FOLLOW_factor_in_synpred24_spirit402 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_invocation_in_synpred37_spirit494 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_invocation_in_synpred40_spirit532 = new BitSet(new long[]{0x0000000000000002L});

}