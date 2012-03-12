import java.io.*;
import org.antlr.runtime.*;
import org.antlr.runtime.debug.DebugEventSocketProxy;


public class __Test__ {

    public static void main(String args[]) throws Exception {
        spiritLexer lex = new spiritLexer(new ANTLRFileStream("/home/mamsaac/Desktop/David/output/__Test___input.txt", "UTF8"));
        CommonTokenStream tokens = new CommonTokenStream(lex);

        spiritParser g = new spiritParser(tokens, 49100, null);
        try {
            g.goal();
        } catch (RecognitionException e) {
            e.printStackTrace();
        }
    }
}