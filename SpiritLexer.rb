#!/usr/bin/env ruby
#
# Spirit.g
# --
# Generated using ANTLR version: 3.2.1-SNAPSHOT Jul 31, 2010 19:34:52
# Ruby runtime library version: 1.8.11
# Input grammar file: Spirit.g
# Generated at: 2012-04-24 16:22:55
# 

# ~~~> start load path setup
this_directory = File.expand_path( File.dirname( __FILE__ ) )
$LOAD_PATH.unshift( this_directory ) unless $LOAD_PATH.include?( this_directory )

antlr_load_failed = proc do
  load_path = $LOAD_PATH.map { |dir| '  - ' << dir }.join( $/ )
  raise LoadError, <<-END.strip!
  
Failed to load the ANTLR3 runtime library (version 1.8.11):

Ensure the library has been installed on your system and is available
on the load path. If rubygems is available on your system, this can
be done with the command:
  
  gem install antlr3

Current load path:
#{ load_path }

  END
end

defined?( ANTLR3 ) or begin
  
  # 1: try to load the ruby antlr3 runtime library from the system path
  require 'antlr3'
  
rescue LoadError
  
  # 2: try to load rubygems if it isn't already loaded
  defined?( Gem ) or begin
    require 'rubygems'
  rescue LoadError
    antlr_load_failed.call
  end
  
  # 3: try to activate the antlr3 gem
  begin
    Gem.activate( 'antlr3', '~> 1.8.11' )
  rescue Gem::LoadError
    antlr_load_failed.call
  end
  
  require 'antlr3'
  
end
# <~~~ end load path setup


module Spirit
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?( :TokenData ) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens( :EXPONENT => 15, :T__29 => 29, :T__28 => 28, :T__27 => 27, 
                   :T__26 => 26, :T__25 => 25, :T__24 => 24, :T__23 => 23, 
                   :T__22 => 22, :T__21 => 21, :OCTAL_ESC => 20, :CHAR => 10, 
                   :FLOAT => 9, :EOF => -1, :ADDITIONSUBSTRACTIONOPERATORS => 7, 
                   :T__51 => 51, :ESC_SEQ => 14, :IDENTIFIER => 4, :MULTIPLICATIONDIVISIONOPERATORS => 8, 
                   :T__50 => 50, :T__42 => 42, :INTEGER => 5, :T__43 => 43, 
                   :T__40 => 40, :T__41 => 41, :T__46 => 46, :T__47 => 47, 
                   :T__44 => 44, :T__45 => 45, :T__48 => 48, :T__49 => 49, 
                   :UNICODE_ESC => 19, :NULL => 12, :BOOL => 11, :HEX_DIGIT => 18, 
                   :T__30 => 30, :T__31 => 31, :T__32 => 32, :WS => 16, 
                   :T__33 => 33, :T__34 => 34, :T__35 => 35, :T__36 => 36, 
                   :T__37 => 37, :T__38 => 38, :T__39 => 39, :ARRAYIDENTIFIER => 13, 
                   :COMPARITIONOPERATORS => 6, :STRING => 17 )
    
  end


  class Lexer < ANTLR3::Lexer
    @grammar_home = Spirit
    include TokenData

    
    begin
      generated_using( "Spirit.g", "3.2.1-SNAPSHOT Jul 31, 2010 19:34:52", "1.8.11" )
    rescue NoMethodError => error
      # ignore
    end
    
    RULE_NAMES   = [ "T__21", "T__22", "T__23", "T__24", "T__25", "T__26", 
                     "T__27", "T__28", "T__29", "T__30", "T__31", "T__32", 
                     "T__33", "T__34", "T__35", "T__36", "T__37", "T__38", 
                     "T__39", "T__40", "T__41", "T__42", "T__43", "T__44", 
                     "T__45", "T__46", "T__47", "T__48", "T__49", "T__50", 
                     "T__51", "MULTIPLICATIONDIVISIONOPERATORS", "ADDITIONSUBSTRACTIONOPERATORS", 
                     "COMPARITIONOPERATORS", "BOOL", "NULL", "IDENTIFIER", 
                     "ARRAYIDENTIFIER", "INTEGER", "CHAR", "FLOAT", "WS", 
                     "STRING", "EXPONENT", "HEX_DIGIT", "ESC_SEQ", "OCTAL_ESC", 
                     "UNICODE_ESC" ].freeze
    RULE_METHODS = [ :t__21!, :t__22!, :t__23!, :t__24!, :t__25!, :t__26!, 
                     :t__27!, :t__28!, :t__29!, :t__30!, :t__31!, :t__32!, 
                     :t__33!, :t__34!, :t__35!, :t__36!, :t__37!, :t__38!, 
                     :t__39!, :t__40!, :t__41!, :t__42!, :t__43!, :t__44!, 
                     :t__45!, :t__46!, :t__47!, :t__48!, :t__49!, :t__50!, 
                     :t__51!, :multiplicationdivisionoperators!, :additionsubstractionoperators!, 
                     :comparitionoperators!, :bool!, :null!, :identifier!, 
                     :arrayidentifier!, :integer!, :char!, :float!, :ws!, 
                     :string!, :exponent!, :hex_digit!, :esc_seq!, :octal_esc!, 
                     :unicode_esc! ].freeze

    
    def initialize( input=nil, options = {} )
      super( input, options )
      # - - - - - - begin action @lexer::init - - - - - -
      # Spirit.g



      # - - - - - - end action @lexer::init - - - - - - -

    end
    
    
    # - - - - - - - - - - - lexer rules - - - - - - - - - - - -
    # lexer rule t__21! (T__21)
    # (in Spirit.g)
    def t__21!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )

      type = T__21
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 10:9: 'class'
      match( "class" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 1 )

    end

    # lexer rule t__22! (T__22)
    # (in Spirit.g)
    def t__22!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )

      type = T__22
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 11:9: 'Main'
      match( "Main" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 2 )

    end

    # lexer rule t__23! (T__23)
    # (in Spirit.g)
    def t__23!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )

      type = T__23
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 12:9: '{'
      match( 0x7b )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 3 )

    end

    # lexer rule t__24! (T__24)
    # (in Spirit.g)
    def t__24!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )

      type = T__24
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 13:9: '}'
      match( 0x7d )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 4 )

    end

    # lexer rule t__25! (T__25)
    # (in Spirit.g)
    def t__25!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )

      type = T__25
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 14:9: 'method'
      match( "method" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 5 )

    end

    # lexer rule t__26! (T__26)
    # (in Spirit.g)
    def t__26!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )

      type = T__26
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 15:9: 'void'
      match( "void" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 6 )

    end

    # lexer rule t__27! (T__27)
    # (in Spirit.g)
    def t__27!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )

      type = T__27
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 16:9: 'main'
      match( "main" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 7 )

    end

    # lexer rule t__28! (T__28)
    # (in Spirit.g)
    def t__28!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )

      type = T__28
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 17:9: '('
      match( 0x28 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 8 )

    end

    # lexer rule t__29! (T__29)
    # (in Spirit.g)
    def t__29!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )

      type = T__29
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 18:9: ')'
      match( 0x29 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 9 )

    end

    # lexer rule t__30! (T__30)
    # (in Spirit.g)
    def t__30!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )

      type = T__30
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 19:9: 'extends'
      match( "extends" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 10 )

    end

    # lexer rule t__31! (T__31)
    # (in Spirit.g)
    def t__31!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )

      type = T__31
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 20:9: ';'
      match( 0x3b )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 11 )

    end

    # lexer rule t__32! (T__32)
    # (in Spirit.g)
    def t__32!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )

      type = T__32
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 21:9: '['
      match( 0x5b )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 12 )

    end

    # lexer rule t__33! (T__33)
    # (in Spirit.g)
    def t__33!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )

      type = T__33
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 22:9: ']'
      match( 0x5d )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 13 )

    end

    # lexer rule t__34! (T__34)
    # (in Spirit.g)
    def t__34!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )

      type = T__34
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 23:9: ','
      match( 0x2c )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 14 )

    end

    # lexer rule t__35! (T__35)
    # (in Spirit.g)
    def t__35!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )

      type = T__35
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 24:9: 'int'
      match( "int" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 15 )

    end

    # lexer rule t__36! (T__36)
    # (in Spirit.g)
    def t__36!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )

      type = T__36
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 25:9: 'char'
      match( "char" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 16 )

    end

    # lexer rule t__37! (T__37)
    # (in Spirit.g)
    def t__37!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )

      type = T__37
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 26:9: 'float'
      match( "float" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 17 )

    end

    # lexer rule t__38! (T__38)
    # (in Spirit.g)
    def t__38!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )

      type = T__38
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 27:9: 'boolean'
      match( "boolean" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 18 )

    end

    # lexer rule t__39! (T__39)
    # (in Spirit.g)
    def t__39!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )

      type = T__39
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 28:9: '='
      match( 0x3d )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 19 )

    end

    # lexer rule t__40! (T__40)
    # (in Spirit.g)
    def t__40!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )

      type = T__40
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 29:9: '.'
      match( 0x2e )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 20 )

    end

    # lexer rule t__41! (T__41)
    # (in Spirit.g)
    def t__41!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )

      type = T__41
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 30:9: 'this'
      match( "this" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 21 )

    end

    # lexer rule t__42! (T__42)
    # (in Spirit.g)
    def t__42!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )

      type = T__42
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 31:9: 'new'
      match( "new" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 22 )

    end

    # lexer rule t__43! (T__43)
    # (in Spirit.g)
    def t__43!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )

      type = T__43
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 32:9: 'return'
      match( "return" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 23 )

    end

    # lexer rule t__44! (T__44)
    # (in Spirit.g)
    def t__44!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )

      type = T__44
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 33:9: 'if'
      match( "if" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 24 )

    end

    # lexer rule t__45! (T__45)
    # (in Spirit.g)
    def t__45!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )

      type = T__45
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 34:9: 'else'
      match( "else" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 25 )

    end

    # lexer rule t__46! (T__46)
    # (in Spirit.g)
    def t__46!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )

      type = T__46
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 35:9: 'while'
      match( "while" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 26 )

    end

    # lexer rule t__47! (T__47)
    # (in Spirit.g)
    def t__47!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )

      type = T__47
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 36:9: 'print'
      match( "print" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 27 )

    end

    # lexer rule t__48! (T__48)
    # (in Spirit.g)
    def t__48!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )

      type = T__48
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 37:9: 'println'
      match( "println" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 28 )

    end

    # lexer rule t__49! (T__49)
    # (in Spirit.g)
    def t__49!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 29 )

      type = T__49
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 38:9: 'iread'
      match( "iread" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 29 )

    end

    # lexer rule t__50! (T__50)
    # (in Spirit.g)
    def t__50!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 30 )

      type = T__50
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 39:9: 'fread'
      match( "fread" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 30 )

    end

    # lexer rule t__51! (T__51)
    # (in Spirit.g)
    def t__51!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 31 )

      type = T__51
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 40:9: 'cread'
      match( "cread" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 31 )

    end

    # lexer rule multiplicationdivisionoperators! (MULTIPLICATIONDIVISIONOPERATORS)
    # (in Spirit.g)
    def multiplicationdivisionoperators!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 32 )

      type = MULTIPLICATIONDIVISIONOPERATORS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 1037:2: ( '*' | '/' | '&&' )
      alt_1 = 3
      case look_1 = @input.peek( 1 )
      when 0x2a then alt_1 = 1
      when 0x2f then alt_1 = 2
      when 0x26 then alt_1 = 3
      else
        raise NoViableAlternative( "", 1, 0 )
      end
      case alt_1
      when 1
        # at line 1037:7: '*'
        match( 0x2a )

      when 2
        # at line 1037:13: '/'
        match( 0x2f )

      when 3
        # at line 1037:19: '&&'
        match( "&&" )

      end
      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 32 )

    end

    # lexer rule additionsubstractionoperators! (ADDITIONSUBSTRACTIONOPERATORS)
    # (in Spirit.g)
    def additionsubstractionoperators!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 33 )

      type = ADDITIONSUBSTRACTIONOPERATORS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 1040:2: ( '+' | '-' | '||' )
      alt_2 = 3
      case look_2 = @input.peek( 1 )
      when 0x2b then alt_2 = 1
      when 0x2d then alt_2 = 2
      when 0x7c then alt_2 = 3
      else
        raise NoViableAlternative( "", 2, 0 )
      end
      case alt_2
      when 1
        # at line 1040:7: '+'
        match( 0x2b )

      when 2
        # at line 1040:14: '-'
        match( 0x2d )

      when 3
        # at line 1040:20: '||'
        match( "||" )

      end
      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 33 )

    end

    # lexer rule comparitionoperators! (COMPARITIONOPERATORS)
    # (in Spirit.g)
    def comparitionoperators!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 34 )

      type = COMPARITIONOPERATORS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 1043:2: ( '==' | '<' | '>' | '<=' | '>=' | '!=' )
      alt_3 = 6
      case look_3 = @input.peek( 1 )
      when 0x3d then alt_3 = 1
      when 0x3c then look_3_2 = @input.peek( 2 )

      if ( look_3_2 == 0x3d )
        alt_3 = 4
      else
        alt_3 = 2
      end
      when 0x3e then look_3_3 = @input.peek( 2 )

      if ( look_3_3 == 0x3d )
        alt_3 = 5
      else
        alt_3 = 3
      end
      when 0x21 then alt_3 = 6
      else
        raise NoViableAlternative( "", 3, 0 )
      end
      case alt_3
      when 1
        # at line 1043:4: '=='
        match( "==" )

      when 2
        # at line 1043:11: '<'
        match( 0x3c )

      when 3
        # at line 1043:17: '>'
        match( 0x3e )

      when 4
        # at line 1043:23: '<='
        match( "<=" )

      when 5
        # at line 1043:30: '>='
        match( ">=" )

      when 6
        # at line 1043:37: '!='
        match( "!=" )

      end
      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 34 )

    end

    # lexer rule bool! (BOOL)
    # (in Spirit.g)
    def bool!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 35 )

      type = BOOL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 1046:2: ( 'true' | 'false' )
      alt_4 = 2
      look_4_0 = @input.peek( 1 )

      if ( look_4_0 == 0x74 )
        alt_4 = 1
      elsif ( look_4_0 == 0x66 )
        alt_4 = 2
      else
        raise NoViableAlternative( "", 4, 0 )
      end
      case alt_4
      when 1
        # at line 1046:4: 'true'
        match( "true" )

      when 2
        # at line 1046:13: 'false'
        match( "false" )

      end
      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 35 )

    end

    # lexer rule null! (NULL)
    # (in Spirit.g)
    def null!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 36 )

      type = NULL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 1049:5: 'null'
      match( "null" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 36 )

    end

    # lexer rule identifier! (IDENTIFIER)
    # (in Spirit.g)
    def identifier!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 37 )

      type = IDENTIFIER
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 1052:4: ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )*
      if @input.peek( 1 ).between?( 0x41, 0x5a ) || @input.peek(1) == 0x5f || @input.peek( 1 ).between?( 0x61, 0x7a )
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse
      end


      # at line 1052:28: ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )*
      while true # decision 5
        alt_5 = 2
        look_5_0 = @input.peek( 1 )

        if ( look_5_0.between?( 0x30, 0x39 ) || look_5_0.between?( 0x41, 0x5a ) || look_5_0 == 0x5f || look_5_0.between?( 0x61, 0x7a ) )
          alt_5 = 1

        end
        case alt_5
        when 1
          # at line 
          if @input.peek( 1 ).between?( 0x30, 0x39 ) || @input.peek( 1 ).between?( 0x41, 0x5a ) || @input.peek(1) == 0x5f || @input.peek( 1 ).between?( 0x61, 0x7a )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end



        else
          break # out of loop for decision 5
        end
      end # loop for decision 5

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 37 )

    end

    # lexer rule arrayidentifier! (ARRAYIDENTIFIER)
    # (in Spirit.g)
    def arrayidentifier!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 38 )

      type = ARRAYIDENTIFIER
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 1055:4: ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )* '[' ']'
      if @input.peek( 1 ).between?( 0x41, 0x5a ) || @input.peek(1) == 0x5f || @input.peek( 1 ).between?( 0x61, 0x7a )
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse
      end


      # at line 1055:28: ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )*
      while true # decision 6
        alt_6 = 2
        look_6_0 = @input.peek( 1 )

        if ( look_6_0.between?( 0x30, 0x39 ) || look_6_0.between?( 0x41, 0x5a ) || look_6_0 == 0x5f || look_6_0.between?( 0x61, 0x7a ) )
          alt_6 = 1

        end
        case alt_6
        when 1
          # at line 
          if @input.peek( 1 ).between?( 0x30, 0x39 ) || @input.peek( 1 ).between?( 0x41, 0x5a ) || @input.peek(1) == 0x5f || @input.peek( 1 ).between?( 0x61, 0x7a )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end



        else
          break # out of loop for decision 6
        end
      end # loop for decision 6
      match( 0x5b )
      match( 0x5d )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 38 )

    end

    # lexer rule integer! (INTEGER)
    # (in Spirit.g)
    def integer!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 39 )

      type = INTEGER
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 1058:4: ( '0' .. '9' )+
      # at file 1058:4: ( '0' .. '9' )+
      match_count_7 = 0
      while true
        alt_7 = 2
        look_7_0 = @input.peek( 1 )

        if ( look_7_0.between?( 0x30, 0x39 ) )
          alt_7 = 1

        end
        case alt_7
        when 1
          # at line 1058:4: '0' .. '9'
          match_range( 0x30, 0x39 )

        else
          match_count_7 > 0 and break
          eee = EarlyExit(7)


          raise eee
        end
        match_count_7 += 1
      end


      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 39 )

    end

    # lexer rule char! (CHAR)
    # (in Spirit.g)
    def char!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 40 )

      type = CHAR
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 1060:8: '\\'' ( ESC_SEQ | ~ ( '\\'' | '\\\\' ) ) '\\''
      match( 0x27 )
      # at line 1060:13: ( ESC_SEQ | ~ ( '\\'' | '\\\\' ) )
      alt_8 = 2
      look_8_0 = @input.peek( 1 )

      if ( look_8_0 == 0x5c )
        alt_8 = 1
      elsif ( look_8_0.between?( 0x0, 0x26 ) || look_8_0.between?( 0x28, 0x5b ) || look_8_0.between?( 0x5d, 0xffff ) )
        alt_8 = 2
      else
        raise NoViableAlternative( "", 8, 0 )
      end
      case alt_8
      when 1
        # at line 1060:15: ESC_SEQ
        esc_seq!

      when 2
        # at line 1060:25: ~ ( '\\'' | '\\\\' )
        if @input.peek( 1 ).between?( 0x0, 0x26 ) || @input.peek( 1 ).between?( 0x28, 0x5b ) || @input.peek( 1 ).between?( 0x5d, 0xff )
          @input.consume
        else
          mse = MismatchedSet( nil )
          recover mse
          raise mse
        end



      end
      match( 0x27 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 40 )

    end

    # lexer rule float! (FLOAT)
    # (in Spirit.g)
    def float!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 41 )

      type = FLOAT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 1064:5: ( ( '0' .. '9' )+ '.' ( '0' .. '9' )* ( EXPONENT )? | '.' ( '0' .. '9' )+ ( EXPONENT )? | ( '0' .. '9' )+ EXPONENT )
      alt_15 = 3
      alt_15 = @dfa15.predict( @input )
      case alt_15
      when 1
        # at line 1064:9: ( '0' .. '9' )+ '.' ( '0' .. '9' )* ( EXPONENT )?
        # at file 1064:9: ( '0' .. '9' )+
        match_count_9 = 0
        while true
          alt_9 = 2
          look_9_0 = @input.peek( 1 )

          if ( look_9_0.between?( 0x30, 0x39 ) )
            alt_9 = 1

          end
          case alt_9
          when 1
            # at line 1064:10: '0' .. '9'
            match_range( 0x30, 0x39 )

          else
            match_count_9 > 0 and break
            eee = EarlyExit(9)


            raise eee
          end
          match_count_9 += 1
        end

        match( 0x2e )
        # at line 1064:25: ( '0' .. '9' )*
        while true # decision 10
          alt_10 = 2
          look_10_0 = @input.peek( 1 )

          if ( look_10_0.between?( 0x30, 0x39 ) )
            alt_10 = 1

          end
          case alt_10
          when 1
            # at line 1064:26: '0' .. '9'
            match_range( 0x30, 0x39 )

          else
            break # out of loop for decision 10
          end
        end # loop for decision 10
        # at line 1064:37: ( EXPONENT )?
        alt_11 = 2
        look_11_0 = @input.peek( 1 )

        if ( look_11_0 == 0x45 || look_11_0 == 0x65 )
          alt_11 = 1
        end
        case alt_11
        when 1
          # at line 1064:37: EXPONENT
          exponent!

        end

      when 2
        # at line 1065:9: '.' ( '0' .. '9' )+ ( EXPONENT )?
        match( 0x2e )
        # at file 1065:13: ( '0' .. '9' )+
        match_count_12 = 0
        while true
          alt_12 = 2
          look_12_0 = @input.peek( 1 )

          if ( look_12_0.between?( 0x30, 0x39 ) )
            alt_12 = 1

          end
          case alt_12
          when 1
            # at line 1065:14: '0' .. '9'
            match_range( 0x30, 0x39 )

          else
            match_count_12 > 0 and break
            eee = EarlyExit(12)


            raise eee
          end
          match_count_12 += 1
        end

        # at line 1065:25: ( EXPONENT )?
        alt_13 = 2
        look_13_0 = @input.peek( 1 )

        if ( look_13_0 == 0x45 || look_13_0 == 0x65 )
          alt_13 = 1
        end
        case alt_13
        when 1
          # at line 1065:25: EXPONENT
          exponent!

        end

      when 3
        # at line 1066:9: ( '0' .. '9' )+ EXPONENT
        # at file 1066:9: ( '0' .. '9' )+
        match_count_14 = 0
        while true
          alt_14 = 2
          look_14_0 = @input.peek( 1 )

          if ( look_14_0.between?( 0x30, 0x39 ) )
            alt_14 = 1

          end
          case alt_14
          when 1
            # at line 1066:10: '0' .. '9'
            match_range( 0x30, 0x39 )

          else
            match_count_14 > 0 and break
            eee = EarlyExit(14)


            raise eee
          end
          match_count_14 += 1
        end

        exponent!

      end
      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 41 )

    end

    # lexer rule ws! (WS)
    # (in Spirit.g)
    def ws!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 42 )

      type = WS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 1069:9: ( ' ' | '\\t' | '\\r' | '\\n' )
      if @input.peek( 1 ).between?( 0x9, 0xa ) || @input.peek(1) == 0xd || @input.peek(1) == 0x20
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse
      end


      # --> action
      channel=HIDDEN;
      # <-- action

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 42 )

    end

    # lexer rule string! (STRING)
    # (in Spirit.g)
    def string!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 43 )

      type = STRING
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 1077:8: '\"' ( ESC_SEQ | ~ ( '\\\\' | '\"' ) )* '\"'
      match( 0x22 )
      # at line 1077:12: ( ESC_SEQ | ~ ( '\\\\' | '\"' ) )*
      while true # decision 16
        alt_16 = 3
        look_16_0 = @input.peek( 1 )

        if ( look_16_0 == 0x5c )
          alt_16 = 1
        elsif ( look_16_0.between?( 0x0, 0x21 ) || look_16_0.between?( 0x23, 0x5b ) || look_16_0.between?( 0x5d, 0xffff ) )
          alt_16 = 2

        end
        case alt_16
        when 1
          # at line 1077:14: ESC_SEQ
          esc_seq!

        when 2
          # at line 1077:24: ~ ( '\\\\' | '\"' )
          if @input.peek( 1 ).between?( 0x0, 0x21 ) || @input.peek( 1 ).between?( 0x23, 0x5b ) || @input.peek( 1 ).between?( 0x5d, 0xff )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end



        else
          break # out of loop for decision 16
        end
      end # loop for decision 16
      match( 0x22 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 43 )

    end

    # lexer rule exponent! (EXPONENT)
    # (in Spirit.g)
    def exponent!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 44 )

      
      # - - - - main rule block - - - -
      # at line 1081:12: ( 'e' | 'E' ) ( '+' | '-' )? ( '0' .. '9' )+
      if @input.peek(1) == 0x45 || @input.peek(1) == 0x65
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse
      end


      # at line 1081:22: ( '+' | '-' )?
      alt_17 = 2
      look_17_0 = @input.peek( 1 )

      if ( look_17_0 == 0x2b || look_17_0 == 0x2d )
        alt_17 = 1
      end
      case alt_17
      when 1
        # at line 
        if @input.peek(1) == 0x2b || @input.peek(1) == 0x2d
          @input.consume
        else
          mse = MismatchedSet( nil )
          recover mse
          raise mse
        end



      end
      # at file 1081:33: ( '0' .. '9' )+
      match_count_18 = 0
      while true
        alt_18 = 2
        look_18_0 = @input.peek( 1 )

        if ( look_18_0.between?( 0x30, 0x39 ) )
          alt_18 = 1

        end
        case alt_18
        when 1
          # at line 1081:34: '0' .. '9'
          match_range( 0x30, 0x39 )

        else
          match_count_18 > 0 and break
          eee = EarlyExit(18)


          raise eee
        end
        match_count_18 += 1
      end


    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 44 )

    end

    # lexer rule hex_digit! (HEX_DIGIT)
    # (in Spirit.g)
    def hex_digit!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 45 )

      
      # - - - - main rule block - - - -
      # at line 1084:13: ( '0' .. '9' | 'a' .. 'f' | 'A' .. 'F' )
      if @input.peek( 1 ).between?( 0x30, 0x39 ) || @input.peek( 1 ).between?( 0x41, 0x46 ) || @input.peek( 1 ).between?( 0x61, 0x66 )
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse
      end



    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 45 )

    end

    # lexer rule esc_seq! (ESC_SEQ)
    # (in Spirit.g)
    def esc_seq!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 46 )

      
      # - - - - main rule block - - - -
      # at line 1088:5: ( '\\\\' ( 'b' | 't' | 'n' | 'f' | 'r' | '\\\"' | '\\'' | '\\\\' ) | UNICODE_ESC | OCTAL_ESC )
      alt_19 = 3
      look_19_0 = @input.peek( 1 )

      if ( look_19_0 == 0x5c )
        case look_19 = @input.peek( 2 )
        when 0x22, 0x27, 0x5c, 0x62, 0x66, 0x6e, 0x72, 0x74 then alt_19 = 1
        when 0x75 then alt_19 = 2
        when 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37 then alt_19 = 3
        else
          raise NoViableAlternative( "", 19, 1 )
        end
      else
        raise NoViableAlternative( "", 19, 0 )
      end
      case alt_19
      when 1
        # at line 1088:9: '\\\\' ( 'b' | 't' | 'n' | 'f' | 'r' | '\\\"' | '\\'' | '\\\\' )
        match( 0x5c )
        if @input.peek(1) == 0x22 || @input.peek(1) == 0x27 || @input.peek(1) == 0x5c || @input.peek(1) == 0x62 || @input.peek(1) == 0x66 || @input.peek(1) == 0x6e || @input.peek(1) == 0x72 || @input.peek(1) == 0x74
          @input.consume
        else
          mse = MismatchedSet( nil )
          recover mse
          raise mse
        end



      when 2
        # at line 1089:9: UNICODE_ESC
        unicode_esc!

      when 3
        # at line 1090:9: OCTAL_ESC
        octal_esc!

      end
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 46 )

    end

    # lexer rule octal_esc! (OCTAL_ESC)
    # (in Spirit.g)
    def octal_esc!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 47 )

      
      # - - - - main rule block - - - -
      # at line 1095:5: ( '\\\\' ( '0' .. '3' ) ( '0' .. '7' ) ( '0' .. '7' ) | '\\\\' ( '0' .. '7' ) ( '0' .. '7' ) | '\\\\' ( '0' .. '7' ) )
      alt_20 = 3
      look_20_0 = @input.peek( 1 )

      if ( look_20_0 == 0x5c )
        look_20_1 = @input.peek( 2 )

        if ( look_20_1.between?( 0x30, 0x33 ) )
          look_20_2 = @input.peek( 3 )

          if ( look_20_2.between?( 0x30, 0x37 ) )
            look_20_4 = @input.peek( 4 )

            if ( look_20_4.between?( 0x30, 0x37 ) )
              alt_20 = 1
            else
              alt_20 = 2
            end
          else
            alt_20 = 3
          end
        elsif ( look_20_1.between?( 0x34, 0x37 ) )
          look_20_3 = @input.peek( 3 )

          if ( look_20_3.between?( 0x30, 0x37 ) )
            alt_20 = 2
          else
            alt_20 = 3
          end
        else
          raise NoViableAlternative( "", 20, 1 )
        end
      else
        raise NoViableAlternative( "", 20, 0 )
      end
      case alt_20
      when 1
        # at line 1095:9: '\\\\' ( '0' .. '3' ) ( '0' .. '7' ) ( '0' .. '7' )
        match( 0x5c )
        # at line 1095:14: ( '0' .. '3' )
        # at line 1095:15: '0' .. '3'
        match_range( 0x30, 0x33 )

        # at line 1095:25: ( '0' .. '7' )
        # at line 1095:26: '0' .. '7'
        match_range( 0x30, 0x37 )

        # at line 1095:36: ( '0' .. '7' )
        # at line 1095:37: '0' .. '7'
        match_range( 0x30, 0x37 )


      when 2
        # at line 1096:9: '\\\\' ( '0' .. '7' ) ( '0' .. '7' )
        match( 0x5c )
        # at line 1096:14: ( '0' .. '7' )
        # at line 1096:15: '0' .. '7'
        match_range( 0x30, 0x37 )

        # at line 1096:25: ( '0' .. '7' )
        # at line 1096:26: '0' .. '7'
        match_range( 0x30, 0x37 )


      when 3
        # at line 1097:9: '\\\\' ( '0' .. '7' )
        match( 0x5c )
        # at line 1097:14: ( '0' .. '7' )
        # at line 1097:15: '0' .. '7'
        match_range( 0x30, 0x37 )


      end
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 47 )

    end

    # lexer rule unicode_esc! (UNICODE_ESC)
    # (in Spirit.g)
    def unicode_esc!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 48 )

      
      # - - - - main rule block - - - -
      # at line 1102:9: '\\\\' 'u' HEX_DIGIT HEX_DIGIT HEX_DIGIT HEX_DIGIT
      match( 0x5c )
      match( 0x75 )
      hex_digit!
      hex_digit!
      hex_digit!
      hex_digit!

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 48 )

    end

    # main rule used to study the input at the current position,
    # and choose the proper lexer rule to call in order to
    # fetch the next token
    # 
    # usually, you don't make direct calls to this method,
    # but instead use the next_token method, which will
    # build and emit the actual next token
    def token!
      # at line 1:8: ( T__21 | T__22 | T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | T__45 | T__46 | T__47 | T__48 | T__49 | T__50 | T__51 | MULTIPLICATIONDIVISIONOPERATORS | ADDITIONSUBSTRACTIONOPERATORS | COMPARITIONOPERATORS | BOOL | NULL | IDENTIFIER | ARRAYIDENTIFIER | INTEGER | CHAR | FLOAT | WS | STRING )
      alt_21 = 43
      alt_21 = @dfa21.predict( @input )
      case alt_21
      when 1
        # at line 1:10: T__21
        t__21!

      when 2
        # at line 1:16: T__22
        t__22!

      when 3
        # at line 1:22: T__23
        t__23!

      when 4
        # at line 1:28: T__24
        t__24!

      when 5
        # at line 1:34: T__25
        t__25!

      when 6
        # at line 1:40: T__26
        t__26!

      when 7
        # at line 1:46: T__27
        t__27!

      when 8
        # at line 1:52: T__28
        t__28!

      when 9
        # at line 1:58: T__29
        t__29!

      when 10
        # at line 1:64: T__30
        t__30!

      when 11
        # at line 1:70: T__31
        t__31!

      when 12
        # at line 1:76: T__32
        t__32!

      when 13
        # at line 1:82: T__33
        t__33!

      when 14
        # at line 1:88: T__34
        t__34!

      when 15
        # at line 1:94: T__35
        t__35!

      when 16
        # at line 1:100: T__36
        t__36!

      when 17
        # at line 1:106: T__37
        t__37!

      when 18
        # at line 1:112: T__38
        t__38!

      when 19
        # at line 1:118: T__39
        t__39!

      when 20
        # at line 1:124: T__40
        t__40!

      when 21
        # at line 1:130: T__41
        t__41!

      when 22
        # at line 1:136: T__42
        t__42!

      when 23
        # at line 1:142: T__43
        t__43!

      when 24
        # at line 1:148: T__44
        t__44!

      when 25
        # at line 1:154: T__45
        t__45!

      when 26
        # at line 1:160: T__46
        t__46!

      when 27
        # at line 1:166: T__47
        t__47!

      when 28
        # at line 1:172: T__48
        t__48!

      when 29
        # at line 1:178: T__49
        t__49!

      when 30
        # at line 1:184: T__50
        t__50!

      when 31
        # at line 1:190: T__51
        t__51!

      when 32
        # at line 1:196: MULTIPLICATIONDIVISIONOPERATORS
        multiplicationdivisionoperators!

      when 33
        # at line 1:228: ADDITIONSUBSTRACTIONOPERATORS
        additionsubstractionoperators!

      when 34
        # at line 1:258: COMPARITIONOPERATORS
        comparitionoperators!

      when 35
        # at line 1:279: BOOL
        bool!

      when 36
        # at line 1:284: NULL
        null!

      when 37
        # at line 1:289: IDENTIFIER
        identifier!

      when 38
        # at line 1:300: ARRAYIDENTIFIER
        arrayidentifier!

      when 39
        # at line 1:316: INTEGER
        integer!

      when 40
        # at line 1:324: CHAR
        char!

      when 41
        # at line 1:329: FLOAT
        float!

      when 42
        # at line 1:335: WS
        ws!

      when 43
        # at line 1:338: STRING
        string!

      end
    end

    
    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA15 < ANTLR3::DFA
      EOT = unpack( 5, -1 )
      EOF = unpack( 5, -1 )
      MIN = unpack( 2, 46, 3, -1 )
      MAX = unpack( 1, 57, 1, 101, 3, -1 )
      ACCEPT = unpack( 2, -1, 1, 2, 1, 1, 1, 3 )
      SPECIAL = unpack( 5, -1 )
      TRANSITION = [
        unpack( 1, 2, 1, -1, 10, 1 ),
        unpack( 1, 3, 1, -1, 10, 1, 11, -1, 1, 4, 31, -1, 1, 4 ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 15
      

      def description
        <<-'__dfa_description__'.strip!
          1063:1: FLOAT : ( ( '0' .. '9' )+ '.' ( '0' .. '9' )* ( EXPONENT )? | '.' ( '0' .. '9' )+ ( EXPONENT )? | ( '0' .. '9' )+ EXPONENT );
        __dfa_description__
      end
    end
    class DFA21 < ANTLR3::DFA
      EOT = unpack( 1, -1, 2, 36, 2, -1, 2, 36, 2, -1, 1, 36, 4, -1, 3, 
                    36, 1, 51, 1, 52, 5, 36, 3, -1, 1, 36, 1, 61, 3, -1, 
                    4, 36, 2, -1, 7, 36, 1, 72, 5, 36, 3, -1, 7, 36, 1, 
                    -1, 9, 36, 1, 94, 1, -1, 7, 36, 1, 102, 5, 36, 1, 108, 
                    1, 36, 1, 110, 1, 36, 1, 112, 1, 113, 1, 36, 1, 115, 
                    1, -1, 5, 36, 1, 121, 1, 122, 1, -1, 1, 123, 3, 36, 
                    1, 127, 1, -1, 1, 128, 1, -1, 1, 36, 2, -1, 1, 36, 1, 
                    -1, 1, 131, 1, 132, 1, 133, 1, 122, 1, 36, 3, -1, 1, 
                    36, 1, 136, 1, 138, 2, -1, 1, 139, 1, 36, 3, -1, 1, 
                    36, 1, 142, 1, -1, 1, 36, 2, -1, 1, 144, 1, 145, 1, 
                    -1, 1, 146, 3, -1 )
      EOF = unpack( 147, -1 )
      MIN = unpack( 1, 9, 2, 48, 2, -1, 2, 48, 2, -1, 1, 48, 4, -1, 3, 48, 
                    1, 61, 6, 48, 3, -1, 1, 48, 1, 46, 3, -1, 4, 48, 2, 
                    -1, 13, 48, 3, -1, 7, 48, 1, -1, 10, 48, 1, -1, 21, 
                    48, 1, -1, 7, 48, 1, -1, 5, 48, 1, -1, 1, 48, 1, -1, 
                    1, 48, 2, -1, 1, 48, 1, -1, 5, 48, 3, -1, 3, 48, 2, 
                    -1, 2, 48, 3, -1, 2, 48, 1, -1, 1, 48, 2, -1, 2, 48, 
                    1, -1, 1, 48, 3, -1 )
      MAX = unpack( 1, 125, 2, 122, 2, -1, 2, 122, 2, -1, 1, 122, 4, -1, 
                    3, 122, 1, 61, 1, 57, 5, 122, 3, -1, 1, 122, 1, 101, 
                    3, -1, 4, 122, 2, -1, 13, 122, 3, -1, 7, 122, 1, -1, 
                    10, 122, 1, -1, 21, 122, 1, -1, 7, 122, 1, -1, 5, 122, 
                    1, -1, 1, 122, 1, -1, 1, 122, 2, -1, 1, 122, 1, -1, 
                    5, 122, 3, -1, 3, 122, 2, -1, 2, 122, 3, -1, 2, 122, 
                    1, -1, 1, 122, 2, -1, 2, 122, 1, -1, 1, 122, 3, -1 )
      ACCEPT = unpack( 3, -1, 1, 3, 1, 4, 2, -1, 1, 8, 1, 9, 1, -1, 1, 11, 
                       1, 12, 1, 13, 1, 14, 10, -1, 1, 32, 1, 33, 1, 34, 
                       2, -1, 1, 40, 1, 42, 1, 43, 4, -1, 1, 37, 1, 38, 
                       13, -1, 1, 19, 1, 20, 1, 41, 7, -1, 1, 39, 10, -1, 
                       1, 24, 21, -1, 1, 15, 7, -1, 1, 22, 5, -1, 1, 16, 
                       1, -1, 1, 2, 1, -1, 1, 7, 1, 6, 1, -1, 1, 25, 5, 
                       -1, 1, 21, 1, 35, 1, 36, 3, -1, 1, 1, 1, 31, 2, -1, 
                       1, 29, 1, 17, 1, 30, 2, -1, 1, 26, 1, -1, 1, 27, 
                       1, 5, 2, -1, 1, 23, 1, -1, 1, 10, 1, 18, 1, 28 )
      SPECIAL = unpack( 147, -1 )
      TRANSITION = [
        unpack( 2, 30, 2, -1, 1, 30, 18, -1, 1, 30, 1, 26, 1, 31, 3, -1, 
                1, 24, 1, 29, 1, 7, 1, 8, 1, 24, 1, 25, 1, 13, 1, 25, 1, 
                18, 1, 24, 10, 28, 1, -1, 1, 10, 1, 26, 1, 17, 1, 26, 2, 
                -1, 12, 27, 1, 2, 13, 27, 1, 11, 1, -1, 1, 12, 1, -1, 1, 
                27, 1, -1, 1, 27, 1, 16, 1, 1, 1, 27, 1, 9, 1, 15, 2, 27, 
                1, 14, 3, 27, 1, 5, 1, 20, 1, 27, 1, 23, 1, 27, 1, 21, 1, 
                27, 1, 19, 1, 27, 1, 6, 1, 22, 3, 27, 1, 3, 1, 25, 1, 4 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 7, 35, 
                 1, 33, 3, 35, 1, 32, 5, 35, 1, 34, 8, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 1, 38, 
                 25, 35 ),
        unpack(  ),
        unpack(  ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 1, 40, 
                 3, 35, 1, 39, 21, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 14, 
                 35, 1, 41, 11, 35 ),
        unpack(  ),
        unpack(  ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 11, 
                 35, 1, 43, 11, 35, 1, 42, 2, 35 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 5, 35, 
                 1, 45, 7, 35, 1, 44, 3, 35, 1, 46, 8, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 1, 49, 
                 10, 35, 1, 47, 5, 35, 1, 48, 8, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 14, 
                 35, 1, 50, 11, 35 ),
        unpack( 1, 26 ),
        unpack( 10, 53 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 7, 35, 
                 1, 54, 9, 35, 1, 55, 8, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 4, 35, 
                 1, 56, 15, 35, 1, 57, 5, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 4, 35, 
                 1, 58, 21, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 7, 35, 
                 1, 59, 18, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 17, 
                 35, 1, 60, 8, 35 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 26, 
                 35 ),
        unpack( 1, 53, 1, -1, 10, 28, 11, -1, 1, 53, 31, -1, 1, 53 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 1, 62, 
                 25, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 1, 63, 
                 25, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 4, 35, 
                 1, 64, 21, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 26, 
                 35 ),
        unpack(  ),
        unpack(  ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 8, 35, 
                 1, 65, 17, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 19, 
                 35, 1, 66, 6, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 8, 35, 
                 1, 67, 17, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 8, 35, 
                 1, 68, 17, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 19, 
                 35, 1, 69, 6, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 18, 
                 35, 1, 70, 7, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 19, 
                 35, 1, 71, 6, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 26, 
                 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 4, 35, 
                 1, 73, 21, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 14, 
                 35, 1, 74, 11, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 4, 35, 
                 1, 75, 21, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 11, 
                 35, 1, 76, 14, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 14, 
                 35, 1, 77, 11, 35 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 8, 35, 
                 1, 78, 17, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 20, 
                 35, 1, 79, 5, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 22, 
                 35, 1, 80, 3, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 11, 
                 35, 1, 81, 14, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 19, 
                 35, 1, 82, 6, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 8, 35, 
                 1, 83, 17, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 8, 35, 
                 1, 84, 17, 35 ),
        unpack(  ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 18, 
                 35, 1, 85, 7, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 17, 
                 35, 1, 86, 8, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 1, 87, 
                 25, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 13, 
                 35, 1, 88, 12, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 7, 35, 
                 1, 89, 18, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 13, 
                 35, 1, 90, 12, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 3, 35, 
                 1, 91, 22, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 4, 35, 
                 1, 92, 21, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 4, 35, 
                 1, 93, 21, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 26, 
                 35 ),
        unpack(  ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 1, 95, 
                 25, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 1, 96, 
                 25, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 1, 97, 
                 25, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 18, 
                 35, 1, 98, 7, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 11, 
                 35, 1, 99, 14, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 18, 
                 35, 1, 100, 7, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 4, 35, 
                 1, 101, 21, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 26, 
                 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 11, 
                 35, 1, 103, 14, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 20, 
                 35, 1, 104, 5, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 11, 
                 35, 1, 105, 14, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 13, 
                 35, 1, 106, 12, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 18, 
                 35, 1, 107, 7, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 26, 
                 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 3, 35, 
                 1, 109, 22, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 26, 
                 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 14, 
                 35, 1, 111, 11, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 26, 
                 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 26, 
                 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 13, 
                 35, 1, 114, 12, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 26, 
                 35 ),
        unpack(  ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 3, 35, 
                 1, 116, 22, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 19, 
                 35, 1, 117, 6, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 3, 35, 
                 1, 118, 22, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 4, 35, 
                 1, 119, 21, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 4, 35, 
                 1, 120, 21, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 26, 
                 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 26, 
                 35 ),
        unpack(  ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 26, 
                 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 17, 
                 35, 1, 124, 8, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 4, 35, 
                 1, 125, 21, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 19, 
                 35, 1, 126, 6, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 26, 
                 35 ),
        unpack(  ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 26, 
                 35 ),
        unpack(  ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 3, 35, 
                 1, 129, 22, 35 ),
        unpack(  ),
        unpack(  ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 3, 35, 
                 1, 130, 22, 35 ),
        unpack(  ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 26, 
                 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 26, 
                 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 26, 
                 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 26, 
                 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 1, 134, 
                 25, 35 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 13, 
                 35, 1, 135, 12, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 26, 
                 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 11, 
                 35, 1, 137, 14, 35 ),
        unpack(  ),
        unpack(  ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 26, 
                 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 18, 
                 35, 1, 140, 7, 35 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 13, 
                 35, 1, 141, 12, 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 26, 
                 35 ),
        unpack(  ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 13, 
                 35, 1, 143, 12, 35 ),
        unpack(  ),
        unpack(  ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 26, 
                 35 ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 26, 
                 35 ),
        unpack(  ),
        unpack( 10, 35, 7, -1, 26, 35, 1, 37, 3, -1, 1, 35, 1, -1, 26, 
                 35 ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 21
      

      def description
        <<-'__dfa_description__'.strip!
          1:1: Tokens : ( T__21 | T__22 | T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | T__45 | T__46 | T__47 | T__48 | T__49 | T__50 | T__51 | MULTIPLICATIONDIVISIONOPERATORS | ADDITIONSUBSTRACTIONOPERATORS | COMPARITIONOPERATORS | BOOL | NULL | IDENTIFIER | ARRAYIDENTIFIER | INTEGER | CHAR | FLOAT | WS | STRING );
        __dfa_description__
      end
    end

    
    private
    
    def initialize_dfas
      super rescue nil
      @dfa15 = DFA15.new( self, 15 )
      @dfa21 = DFA21.new( self, 21 )

    end
  end # class Lexer < ANTLR3::Lexer

  at_exit { Lexer.main( ARGV ) } if __FILE__ == $0
end

