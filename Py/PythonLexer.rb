#!/usr/bin/env ruby
#
# Py.g
# --
# Generated using ANTLR version: 3.2.1-SNAPSHOT Jul 31, 2010 19:34:52
# Ruby runtime library version: 1.8.11
# Input grammar file: Py.g
# Generated at: 2012-03-09 02:14:39
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


module Python
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?( :TokenData ) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens( :TRIAPOS => 31, :COMPLEX => 10, :EOF => -1, :LEADING_WS => 35, 
                   :T__93 => 93, :T__94 => 94, :T__91 => 91, :TUPLE => 13, 
                   :RPAREN => 21, :NAME => 22, :T__92 => 92, :T__90 => 90, 
                   :EXP => 30, :COMMENT => 36, :T__99 => 99, :T__98 => 98, 
                   :T__97 => 97, :T__96 => 96, :T__95 => 95, :RBRACK => 24, 
                   :T__80 => 80, :T__81 => 81, :T__82 => 82, :T__83 => 83, 
                   :CONCAT => 11, :LCURLY => 25, :INT => 27, :T__85 => 85, 
                   :LIST => 14, :T__84 => 84, :T__87 => 87, :T__86 => 86, 
                   :T__89 => 89, :T__88 => 88, :T__71 => 71, :WS => 37, 
                   :T__72 => 72, :T__70 => 70, :LONGINT => 9, :CALL => 12, 
                   :T__76 => 76, :T__75 => 75, :PARAM_TUPLE => 8, :T__74 => 74, 
                   :T__73 => 73, :T__79 => 79, :T__78 => 78, :T__77 => 77, 
                   :T__68 => 68, :T__69 => 69, :T__66 => 66, :T__67 => 67, 
                   :CONTINUED_LINE => 34, :LBRACK => 23, :T__64 => 64, :T__65 => 65, 
                   :T__62 => 62, :T__63 => 63, :ESC => 33, :FLOAT => 28, 
                   :DEDENT => 5, :T__61 => 61, :T__60 => 60, :INDENT => 4, 
                   :LPAREN => 20, :T__55 => 55, :T__56 => 56, :T__57 => 57, 
                   :T__58 => 58, :T__51 => 51, :T__52 => 52, :T__53 => 53, 
                   :T__54 => 54, :T__107 => 107, :DOCUMENT => 18, :T__59 => 59, 
                   :T__103 => 103, :DICT => 15, :T__104 => 104, :T__105 => 105, 
                   :T__106 => 106, :T__50 => 50, :PARAMS => 7, :T__42 => 42, 
                   :T__43 => 43, :T__40 => 40, :T__41 => 41, :T__46 => 46, 
                   :T__47 => 47, :T__44 => 44, :T__45 => 45, :T__48 => 48, 
                   :T__49 => 49, :T__102 => 102, :T__101 => 101, :T__100 => 100, 
                   :MODULE => 17, :TRIQUOTE => 32, :NEWLINE => 19, :T__38 => 38, 
                   :T__39 => 39, :BLOCK => 6, :RCURLY => 26, :DECORATION => 16, 
                   :STRING => 29 )
    
  end


  class Lexer < ANTLR3::Lexer
    @grammar_home = Python
    include TokenData

    
    begin
      generated_using( "Py.g", "3.2.1-SNAPSHOT Jul 31, 2010 19:34:52", "1.8.11" )
    rescue NoMethodError => error
      # ignore
    end
    
    RULE_NAMES   = [ "T__38", "T__39", "T__40", "T__41", "T__42", "T__43", 
                     "T__44", "T__45", "T__46", "T__47", "T__48", "T__49", 
                     "T__50", "T__51", "T__52", "T__53", "T__54", "T__55", 
                     "T__56", "T__57", "T__58", "T__59", "T__60", "T__61", 
                     "T__62", "T__63", "T__64", "T__65", "T__66", "T__67", 
                     "T__68", "T__69", "T__70", "T__71", "T__72", "T__73", 
                     "T__74", "T__75", "T__76", "T__77", "T__78", "T__79", 
                     "T__80", "T__81", "T__82", "T__83", "T__84", "T__85", 
                     "T__86", "T__87", "T__88", "T__89", "T__90", "T__91", 
                     "T__92", "T__93", "T__94", "T__95", "T__96", "T__97", 
                     "T__98", "T__99", "T__100", "T__101", "T__102", "T__103", 
                     "T__104", "T__105", "T__106", "T__107", "LPAREN", "RPAREN", 
                     "LBRACK", "RBRACK", "LCURLY", "RCURLY", "FLOAT", "INT", 
                     "NAME", "STRING", "CONTINUED_LINE", "NEWLINE", "LEADING_WS", 
                     "COMMENT", "WS", "TRIQUOTE", "TRIAPOS", "ESC", "EXP" ].freeze
    RULE_METHODS = [ :t__38!, :t__39!, :t__40!, :t__41!, :t__42!, :t__43!, 
                     :t__44!, :t__45!, :t__46!, :t__47!, :t__48!, :t__49!, 
                     :t__50!, :t__51!, :t__52!, :t__53!, :t__54!, :t__55!, 
                     :t__56!, :t__57!, :t__58!, :t__59!, :t__60!, :t__61!, 
                     :t__62!, :t__63!, :t__64!, :t__65!, :t__66!, :t__67!, 
                     :t__68!, :t__69!, :t__70!, :t__71!, :t__72!, :t__73!, 
                     :t__74!, :t__75!, :t__76!, :t__77!, :t__78!, :t__79!, 
                     :t__80!, :t__81!, :t__82!, :t__83!, :t__84!, :t__85!, 
                     :t__86!, :t__87!, :t__88!, :t__89!, :t__90!, :t__91!, 
                     :t__92!, :t__93!, :t__94!, :t__95!, :t__96!, :t__97!, 
                     :t__98!, :t__99!, :t__100!, :t__101!, :t__102!, :t__103!, 
                     :t__104!, :t__105!, :t__106!, :t__107!, :lparen!, :rparen!, 
                     :lbrack!, :rbrack!, :lcurly!, :rcurly!, :float!, :int!, 
                     :name!, :string!, :continued_line!, :newline!, :leading_ws!, 
                     :comment!, :ws!, :triquote!, :triapos!, :esc!, :exp! ].freeze

    
    def initialize( input=nil, options = {} )
      super( input, options )
      # - - - - - - begin action @lexer::init - - - - - -
      # Py.g


        @line_join_level = 0 # if > 0, newlines are insignificant
        @in_indent = false

      # - - - - - - end action @lexer::init - - - - - - -

    end
    
    # - - - - - - begin action @lexer::members - - - - - -
    # Py.g



    # @in_indent becomes true at the start of a line with leading whitespace.
    # It remains true until manually set to false by the leading_ws rule.
    def in_indent?
      if @input.beginning_of_line?
        @in_indent =
          case @input.peek
          when ?\s, ?\t then true
          else false
          end
      end
      return @in_indent
    end


    # - - - - - - end action @lexer::members - - - - - - -

    
    # - - - - - - - - - - - lexer rules - - - - - - - - - - - -
    # lexer rule t__38! (T__38)
    # (in Py.g)
    def t__38!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )

      type = T__38
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 28:9: '@'
      match( 0x40 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 1 )

    end

    # lexer rule t__39! (T__39)
    # (in Py.g)
    def t__39!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )

      type = T__39
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 29:9: '.'
      match( 0x2e )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 2 )

    end

    # lexer rule t__40! (T__40)
    # (in Py.g)
    def t__40!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )

      type = T__40
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 30:9: 'def'
      match( "def" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 3 )

    end

    # lexer rule t__41! (T__41)
    # (in Py.g)
    def t__41!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )

      type = T__41
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 31:9: ':'
      match( 0x3a )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 4 )

    end

    # lexer rule t__42! (T__42)
    # (in Py.g)
    def t__42!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )

      type = T__42
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 32:9: ','
      match( 0x2c )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 5 )

    end

    # lexer rule t__43! (T__43)
    # (in Py.g)
    def t__43!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )

      type = T__43
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 33:9: '*'
      match( 0x2a )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 6 )

    end

    # lexer rule t__44! (T__44)
    # (in Py.g)
    def t__44!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )

      type = T__44
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 34:9: '**'
      match( "**" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 7 )

    end

    # lexer rule t__45! (T__45)
    # (in Py.g)
    def t__45!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )

      type = T__45
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 35:9: '='
      match( 0x3d )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 8 )

    end

    # lexer rule t__46! (T__46)
    # (in Py.g)
    def t__46!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )

      type = T__46
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 36:9: ';'
      match( 0x3b )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 9 )

    end

    # lexer rule t__47! (T__47)
    # (in Py.g)
    def t__47!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )

      type = T__47
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 37:9: '+='
      match( "+=" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 10 )

    end

    # lexer rule t__48! (T__48)
    # (in Py.g)
    def t__48!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )

      type = T__48
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 38:9: '-='
      match( "-=" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 11 )

    end

    # lexer rule t__49! (T__49)
    # (in Py.g)
    def t__49!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )

      type = T__49
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 39:9: '*='
      match( "*=" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 12 )

    end

    # lexer rule t__50! (T__50)
    # (in Py.g)
    def t__50!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )

      type = T__50
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 40:9: '/='
      match( "/=" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 13 )

    end

    # lexer rule t__51! (T__51)
    # (in Py.g)
    def t__51!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )

      type = T__51
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 41:9: '%='
      match( "%=" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 14 )

    end

    # lexer rule t__52! (T__52)
    # (in Py.g)
    def t__52!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )

      type = T__52
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 42:9: '&='
      match( "&=" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 15 )

    end

    # lexer rule t__53! (T__53)
    # (in Py.g)
    def t__53!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )

      type = T__53
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 43:9: '|='
      match( "|=" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 16 )

    end

    # lexer rule t__54! (T__54)
    # (in Py.g)
    def t__54!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )

      type = T__54
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 44:9: '^='
      match( "^=" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 17 )

    end

    # lexer rule t__55! (T__55)
    # (in Py.g)
    def t__55!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )

      type = T__55
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 45:9: '<<='
      match( "<<=" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 18 )

    end

    # lexer rule t__56! (T__56)
    # (in Py.g)
    def t__56!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )

      type = T__56
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 46:9: '>>='
      match( ">>=" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 19 )

    end

    # lexer rule t__57! (T__57)
    # (in Py.g)
    def t__57!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )

      type = T__57
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 47:9: '**='
      match( "**=" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 20 )

    end

    # lexer rule t__58! (T__58)
    # (in Py.g)
    def t__58!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )

      type = T__58
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 48:9: '//='
      match( "//=" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 21 )

    end

    # lexer rule t__59! (T__59)
    # (in Py.g)
    def t__59!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )

      type = T__59
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 49:9: 'print'
      match( "print" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 22 )

    end

    # lexer rule t__60! (T__60)
    # (in Py.g)
    def t__60!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )

      type = T__60
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 50:9: '>>'
      match( ">>" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 23 )

    end

    # lexer rule t__61! (T__61)
    # (in Py.g)
    def t__61!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )

      type = T__61
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 51:9: 'del'
      match( "del" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 24 )

    end

    # lexer rule t__62! (T__62)
    # (in Py.g)
    def t__62!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )

      type = T__62
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 52:9: 'pass'
      match( "pass" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 25 )

    end

    # lexer rule t__63! (T__63)
    # (in Py.g)
    def t__63!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )

      type = T__63
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 53:9: 'break'
      match( "break" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 26 )

    end

    # lexer rule t__64! (T__64)
    # (in Py.g)
    def t__64!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )

      type = T__64
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 54:9: 'continue'
      match( "continue" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 27 )

    end

    # lexer rule t__65! (T__65)
    # (in Py.g)
    def t__65!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )

      type = T__65
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 55:9: 'return'
      match( "return" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 28 )

    end

    # lexer rule t__66! (T__66)
    # (in Py.g)
    def t__66!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 29 )

      type = T__66
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 56:9: 'raise'
      match( "raise" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 29 )

    end

    # lexer rule t__67! (T__67)
    # (in Py.g)
    def t__67!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 30 )

      type = T__67
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 57:9: 'import'
      match( "import" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 30 )

    end

    # lexer rule t__68! (T__68)
    # (in Py.g)
    def t__68!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 31 )

      type = T__68
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 58:9: 'from'
      match( "from" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 31 )

    end

    # lexer rule t__69! (T__69)
    # (in Py.g)
    def t__69!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 32 )

      type = T__69
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 59:9: 'as'
      match( "as" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 32 )

    end

    # lexer rule t__70! (T__70)
    # (in Py.g)
    def t__70!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 33 )

      type = T__70
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 60:9: 'global'
      match( "global" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 33 )

    end

    # lexer rule t__71! (T__71)
    # (in Py.g)
    def t__71!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 34 )

      type = T__71
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 61:9: 'exec'
      match( "exec" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 34 )

    end

    # lexer rule t__72! (T__72)
    # (in Py.g)
    def t__72!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 35 )

      type = T__72
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 62:9: 'in'
      match( "in" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 35 )

    end

    # lexer rule t__73! (T__73)
    # (in Py.g)
    def t__73!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 36 )

      type = T__73
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 63:9: 'assert'
      match( "assert" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 36 )

    end

    # lexer rule t__74! (T__74)
    # (in Py.g)
    def t__74!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 37 )

      type = T__74
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 64:9: 'if'
      match( "if" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 37 )

    end

    # lexer rule t__75! (T__75)
    # (in Py.g)
    def t__75!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 38 )

      type = T__75
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 65:9: 'else'
      match( "else" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 38 )

    end

    # lexer rule t__76! (T__76)
    # (in Py.g)
    def t__76!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 39 )

      type = T__76
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 66:9: 'elif'
      match( "elif" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 39 )

    end

    # lexer rule t__77! (T__77)
    # (in Py.g)
    def t__77!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 40 )

      type = T__77
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 67:9: 'while'
      match( "while" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 40 )

    end

    # lexer rule t__78! (T__78)
    # (in Py.g)
    def t__78!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 41 )

      type = T__78
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 68:9: 'for'
      match( "for" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 41 )

    end

    # lexer rule t__79! (T__79)
    # (in Py.g)
    def t__79!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 42 )

      type = T__79
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 69:9: 'try'
      match( "try" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 42 )

    end

    # lexer rule t__80! (T__80)
    # (in Py.g)
    def t__80!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 43 )

      type = T__80
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 70:9: 'finally'
      match( "finally" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 43 )

    end

    # lexer rule t__81! (T__81)
    # (in Py.g)
    def t__81!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 44 )

      type = T__81
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 71:9: 'with'
      match( "with" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 44 )

    end

    # lexer rule t__82! (T__82)
    # (in Py.g)
    def t__82!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 45 )

      type = T__82
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 72:9: 'except'
      match( "except" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 45 )

    end

    # lexer rule t__83! (T__83)
    # (in Py.g)
    def t__83!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 46 )

      type = T__83
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 73:9: 'or'
      match( "or" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 46 )

    end

    # lexer rule t__84! (T__84)
    # (in Py.g)
    def t__84!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 47 )

      type = T__84
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 74:9: 'and'
      match( "and" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 47 )

    end

    # lexer rule t__85! (T__85)
    # (in Py.g)
    def t__85!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 48 )

      type = T__85
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 75:9: 'not'
      match( "not" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 48 )

    end

    # lexer rule t__86! (T__86)
    # (in Py.g)
    def t__86!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 49 )

      type = T__86
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 76:9: '<'
      match( 0x3c )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 49 )

    end

    # lexer rule t__87! (T__87)
    # (in Py.g)
    def t__87!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 50 )

      type = T__87
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 77:9: '>'
      match( 0x3e )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 50 )

    end

    # lexer rule t__88! (T__88)
    # (in Py.g)
    def t__88!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 51 )

      type = T__88
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 78:9: '=='
      match( "==" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 51 )

    end

    # lexer rule t__89! (T__89)
    # (in Py.g)
    def t__89!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 52 )

      type = T__89
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 79:9: '>='
      match( ">=" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 52 )

    end

    # lexer rule t__90! (T__90)
    # (in Py.g)
    def t__90!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 53 )

      type = T__90
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 80:9: '<='
      match( "<=" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 53 )

    end

    # lexer rule t__91! (T__91)
    # (in Py.g)
    def t__91!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 54 )

      type = T__91
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 81:9: '<>'
      match( "<>" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 54 )

    end

    # lexer rule t__92! (T__92)
    # (in Py.g)
    def t__92!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 55 )

      type = T__92
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 82:9: '!='
      match( "!=" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 55 )

    end

    # lexer rule t__93! (T__93)
    # (in Py.g)
    def t__93!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 56 )

      type = T__93
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 83:9: 'is'
      match( "is" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 56 )

    end

    # lexer rule t__94! (T__94)
    # (in Py.g)
    def t__94!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 57 )

      type = T__94
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 84:9: '|'
      match( 0x7c )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 57 )

    end

    # lexer rule t__95! (T__95)
    # (in Py.g)
    def t__95!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 58 )

      type = T__95
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 85:9: '^'
      match( 0x5e )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 58 )

    end

    # lexer rule t__96! (T__96)
    # (in Py.g)
    def t__96!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 59 )

      type = T__96
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 86:9: '&'
      match( 0x26 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 59 )

    end

    # lexer rule t__97! (T__97)
    # (in Py.g)
    def t__97!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 60 )

      type = T__97
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 87:9: '<<'
      match( "<<" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 60 )

    end

    # lexer rule t__98! (T__98)
    # (in Py.g)
    def t__98!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 61 )

      type = T__98
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 88:9: '+'
      match( 0x2b )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 61 )

    end

    # lexer rule t__99! (T__99)
    # (in Py.g)
    def t__99!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 62 )

      type = T__99
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 89:9: '-'
      match( 0x2d )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 62 )

    end

    # lexer rule t__100! (T__100)
    # (in Py.g)
    def t__100!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 63 )

      type = T__100
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 90:10: '/'
      match( 0x2f )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 63 )

    end

    # lexer rule t__101! (T__101)
    # (in Py.g)
    def t__101!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 64 )

      type = T__101
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 91:10: '%'
      match( 0x25 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 64 )

    end

    # lexer rule t__102! (T__102)
    # (in Py.g)
    def t__102!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 65 )

      type = T__102
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 92:10: '//'
      match( "//" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 65 )

    end

    # lexer rule t__103! (T__103)
    # (in Py.g)
    def t__103!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 66 )

      type = T__103
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 93:10: '~'
      match( 0x7e )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 66 )

    end

    # lexer rule t__104! (T__104)
    # (in Py.g)
    def t__104!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 67 )

      type = T__104
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 94:10: '`'
      match( 0x60 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 67 )

    end

    # lexer rule t__105! (T__105)
    # (in Py.g)
    def t__105!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 68 )

      type = T__105
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 95:10: 'lambda'
      match( "lambda" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 68 )

    end

    # lexer rule t__106! (T__106)
    # (in Py.g)
    def t__106!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 69 )

      type = T__106
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 96:10: 'class'
      match( "class" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 69 )

    end

    # lexer rule t__107! (T__107)
    # (in Py.g)
    def t__107!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 70 )

      type = T__107
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 97:10: 'yield'
      match( "yield" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 70 )

    end

    # lexer rule lparen! (LPAREN)
    # (in Py.g)
    def lparen!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 71 )

      type = LPAREN
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 580:10: '('
      match( 0x28 )
      # --> action
       @line_join_level += 1 
      # <-- action

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 71 )

    end

    # lexer rule rparen! (RPAREN)
    # (in Py.g)
    def rparen!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 72 )

      type = RPAREN
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 582:10: ')'
      match( 0x29 )
      # --> action
       @line_join_level -= 1 
      # <-- action

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 72 )

    end

    # lexer rule lbrack! (LBRACK)
    # (in Py.g)
    def lbrack!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 73 )

      type = LBRACK
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 584:10: '['
      match( 0x5b )
      # --> action
       @line_join_level += 1 
      # <-- action

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 73 )

    end

    # lexer rule rbrack! (RBRACK)
    # (in Py.g)
    def rbrack!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 74 )

      type = RBRACK
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 586:10: ']'
      match( 0x5d )
      # --> action
       @line_join_level -= 1 
      # <-- action

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 74 )

    end

    # lexer rule lcurly! (LCURLY)
    # (in Py.g)
    def lcurly!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 75 )

      type = LCURLY
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 588:10: '{'
      match( 0x7b )
      # --> action
       @line_join_level += 1 
      # <-- action

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 75 )

    end

    # lexer rule rcurly! (RCURLY)
    # (in Py.g)
    def rcurly!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 76 )

      type = RCURLY
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 590:10: '}'
      match( 0x7d )
      # --> action
       @line_join_level -= 1 
      # <-- action

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 76 )

    end

    # lexer rule float! (FLOAT)
    # (in Py.g)
    def float!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 77 )

      type = FLOAT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 593:5: ( '.' ( '0' .. '9' )+ ( EXP )? | ( '0' .. '9' )+ ( '.' )? EXP | ( '0' .. '9' )+ '.' ( ( '0' .. '9' )+ ( EXP )? )? ) ( ( 'j' | 'J' ) )?
      # at line 593:5: ( '.' ( '0' .. '9' )+ ( EXP )? | ( '0' .. '9' )+ ( '.' )? EXP | ( '0' .. '9' )+ '.' ( ( '0' .. '9' )+ ( EXP )? )? )
      alt_9 = 3
      alt_9 = @dfa9.predict( @input )
      case alt_9
      when 1
        # at line 593:7: '.' ( '0' .. '9' )+ ( EXP )?
        match( 0x2e )
        # at file 593:11: ( '0' .. '9' )+
        match_count_1 = 0
        while true
          alt_1 = 2
          look_1_0 = @input.peek( 1 )

          if ( look_1_0.between?( 0x30, 0x39 ) )
            alt_1 = 1

          end
          case alt_1
          when 1
            # at line 593:13: '0' .. '9'
            match_range( 0x30, 0x39 )

          else
            match_count_1 > 0 and break
            eee = EarlyExit(1)


            raise eee
          end
          match_count_1 += 1
        end

        # at line 593:27: ( EXP )?
        alt_2 = 2
        look_2_0 = @input.peek( 1 )

        if ( look_2_0 == 0x45 || look_2_0 == 0x65 )
          alt_2 = 1
        end
        case alt_2
        when 1
          # at line 593:27: EXP
          exp!

        end

      when 2
        # at line 594:7: ( '0' .. '9' )+ ( '.' )? EXP
        # at file 594:7: ( '0' .. '9' )+
        match_count_3 = 0
        while true
          alt_3 = 2
          look_3_0 = @input.peek( 1 )

          if ( look_3_0.between?( 0x30, 0x39 ) )
            alt_3 = 1

          end
          case alt_3
          when 1
            # at line 594:9: '0' .. '9'
            match_range( 0x30, 0x39 )

          else
            match_count_3 > 0 and break
            eee = EarlyExit(3)


            raise eee
          end
          match_count_3 += 1
        end

        # at line 594:23: ( '.' )?
        alt_4 = 2
        look_4_0 = @input.peek( 1 )

        if ( look_4_0 == 0x2e )
          alt_4 = 1
        end
        case alt_4
        when 1
          # at line 594:23: '.'
          match( 0x2e )

        end
        exp!

      when 3
        # at line 595:7: ( '0' .. '9' )+ '.' ( ( '0' .. '9' )+ ( EXP )? )?
        # at file 595:7: ( '0' .. '9' )+
        match_count_5 = 0
        while true
          alt_5 = 2
          look_5_0 = @input.peek( 1 )

          if ( look_5_0.between?( 0x30, 0x39 ) )
            alt_5 = 1

          end
          case alt_5
          when 1
            # at line 595:9: '0' .. '9'
            match_range( 0x30, 0x39 )

          else
            match_count_5 > 0 and break
            eee = EarlyExit(5)


            raise eee
          end
          match_count_5 += 1
        end

        match( 0x2e )
        # at line 595:27: ( ( '0' .. '9' )+ ( EXP )? )?
        alt_8 = 2
        look_8_0 = @input.peek( 1 )

        if ( look_8_0.between?( 0x30, 0x39 ) )
          alt_8 = 1
        end
        case alt_8
        when 1
          # at line 595:29: ( '0' .. '9' )+ ( EXP )?
          # at file 595:29: ( '0' .. '9' )+
          match_count_6 = 0
          while true
            alt_6 = 2
            look_6_0 = @input.peek( 1 )

            if ( look_6_0.between?( 0x30, 0x39 ) )
              alt_6 = 1

            end
            case alt_6
            when 1
              # at line 595:31: '0' .. '9'
              match_range( 0x30, 0x39 )

            else
              match_count_6 > 0 and break
              eee = EarlyExit(6)


              raise eee
            end
            match_count_6 += 1
          end

          # at line 595:45: ( EXP )?
          alt_7 = 2
          look_7_0 = @input.peek( 1 )

          if ( look_7_0 == 0x45 || look_7_0 == 0x65 )
            alt_7 = 1
          end
          case alt_7
          when 1
            # at line 595:45: EXP
            exp!

          end

        end

      end
      # at line 597:5: ( ( 'j' | 'J' ) )?
      alt_10 = 2
      look_10_0 = @input.peek( 1 )

      if ( look_10_0 == 0x4a || look_10_0 == 0x6a )
        alt_10 = 1
      end
      case alt_10
      when 1
        # at line 597:7: ( 'j' | 'J' )
        if @input.peek(1) == 0x4a || @input.peek(1) == 0x6a
          @input.consume
        else
          mse = MismatchedSet( nil )
          recover mse
          raise mse
        end


        # --> action
         type = COMPLEX 
        # <-- action

      end

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 77 )

    end

    # lexer rule int! (INT)
    # (in Py.g)
    def int!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 78 )

      type = INT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 601:5: ( '0' ( 'x' | 'X' ) ( '0' .. '9' | 'a' .. 'f' | 'A' .. 'F' )+ | ( '0' .. '9' )+ ) ( ( 'l' | 'L' ) | ( 'j' | 'J' ) )?
      # at line 601:5: ( '0' ( 'x' | 'X' ) ( '0' .. '9' | 'a' .. 'f' | 'A' .. 'F' )+ | ( '0' .. '9' )+ )
      alt_13 = 2
      look_13_0 = @input.peek( 1 )

      if ( look_13_0 == 0x30 )
        look_13_1 = @input.peek( 2 )

        if ( look_13_1 == 0x58 || look_13_1 == 0x78 )
          alt_13 = 1
        else
          alt_13 = 2
        end
      elsif ( look_13_0.between?( 0x31, 0x39 ) )
        alt_13 = 2
      else
        raise NoViableAlternative( "", 13, 0 )
      end
      case alt_13
      when 1
        # at line 602:7: '0' ( 'x' | 'X' ) ( '0' .. '9' | 'a' .. 'f' | 'A' .. 'F' )+
        match( 0x30 )
        if @input.peek(1) == 0x58 || @input.peek(1) == 0x78
          @input.consume
        else
          mse = MismatchedSet( nil )
          recover mse
          raise mse
        end


        # at file 602:25: ( '0' .. '9' | 'a' .. 'f' | 'A' .. 'F' )+
        match_count_11 = 0
        while true
          alt_11 = 2
          look_11_0 = @input.peek( 1 )

          if ( look_11_0.between?( 0x30, 0x39 ) || look_11_0.between?( 0x41, 0x46 ) || look_11_0.between?( 0x61, 0x66 ) )
            alt_11 = 1

          end
          case alt_11
          when 1
            # at line 
            if @input.peek( 1 ).between?( 0x30, 0x39 ) || @input.peek( 1 ).between?( 0x41, 0x46 ) || @input.peek( 1 ).between?( 0x61, 0x66 )
              @input.consume
            else
              mse = MismatchedSet( nil )
              recover mse
              raise mse
            end



          else
            match_count_11 > 0 and break
            eee = EarlyExit(11)


            raise eee
          end
          match_count_11 += 1
        end


      when 2
        # at line 603:7: ( '0' .. '9' )+
        # at file 603:7: ( '0' .. '9' )+
        match_count_12 = 0
        while true
          alt_12 = 2
          look_12_0 = @input.peek( 1 )

          if ( look_12_0.between?( 0x30, 0x39 ) )
            alt_12 = 1

          end
          case alt_12
          when 1
            # at line 603:9: '0' .. '9'
            match_range( 0x30, 0x39 )

          else
            match_count_12 > 0 and break
            eee = EarlyExit(12)


            raise eee
          end
          match_count_12 += 1
        end


      end
      # at line 605:5: ( ( 'l' | 'L' ) | ( 'j' | 'J' ) )?
      alt_14 = 3
      look_14_0 = @input.peek( 1 )

      if ( look_14_0 == 0x4c || look_14_0 == 0x6c )
        alt_14 = 1
      elsif ( look_14_0 == 0x4a || look_14_0 == 0x6a )
        alt_14 = 2
      end
      case alt_14
      when 1
        # at line 605:7: ( 'l' | 'L' )
        if @input.peek(1) == 0x4c || @input.peek(1) == 0x6c
          @input.consume
        else
          mse = MismatchedSet( nil )
          recover mse
          raise mse
        end


        # --> action
         type = LONGINT 
        # <-- action

      when 2
        # at line 606:7: ( 'j' | 'J' )
        if @input.peek(1) == 0x4a || @input.peek(1) == 0x6a
          @input.consume
        else
          mse = MismatchedSet( nil )
          recover mse
          raise mse
        end


        # --> action
         type = COMPLEX 
        # <-- action

      end

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 78 )

    end

    # lexer rule name! (NAME)
    # (in Py.g)
    def name!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 79 )

      type = NAME
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 610:7: ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '_' | '0' .. '9' )*
      if @input.peek( 1 ).between?( 0x41, 0x5a ) || @input.peek(1) == 0x5f || @input.peek( 1 ).between?( 0x61, 0x7a )
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse
      end


      # at line 611:9: ( 'a' .. 'z' | 'A' .. 'Z' | '_' | '0' .. '9' )*
      while true # decision 15
        alt_15 = 2
        look_15_0 = @input.peek( 1 )

        if ( look_15_0.between?( 0x30, 0x39 ) || look_15_0.between?( 0x41, 0x5a ) || look_15_0 == 0x5f || look_15_0.between?( 0x61, 0x7a ) )
          alt_15 = 1

        end
        case alt_15
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
          break # out of loop for decision 15
        end
      end # loop for decision 15

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 79 )

    end

    # lexer rule string! (STRING)
    # (in Py.g)
    def string!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 80 )

      type = STRING
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 618:5: ( 'r' | 'u' | 'ur' | 'R' | 'U' | 'UR' | 'Ur' | 'uR' )? ( '\\'\\'\\'' ( options {greedy=false; } : TRIAPOS )* '\\'\\'\\'' | '\"\"\"' ( options {greedy=false; } : TRIQUOTE )* '\"\"\"' | '\"' ( ESC | ~ ( '\\\\' | '\\n' | '\"' ) )* '\"' | '\\'' ( ESC | ~ ( '\\\\' | '\\n' | '\\'' ) )* '\\'' )
      # at line 618:5: ( 'r' | 'u' | 'ur' | 'R' | 'U' | 'UR' | 'Ur' | 'uR' )?
      alt_16 = 9
      alt_16 = @dfa16.predict( @input )
      case alt_16
      when 1
        # at line 618:7: 'r'
        match( 0x72 )

      when 2
        # at line 618:13: 'u'
        match( 0x75 )

      when 3
        # at line 618:19: 'ur'
        match( "ur" )

      when 4
        # at line 618:26: 'R'
        match( 0x52 )

      when 5
        # at line 618:32: 'U'
        match( 0x55 )

      when 6
        # at line 618:38: 'UR'
        match( "UR" )

      when 7
        # at line 618:45: 'Ur'
        match( "Ur" )

      when 8
        # at line 618:52: 'uR'
        match( "uR" )

      end
      # at line 619:5: ( '\\'\\'\\'' ( options {greedy=false; } : TRIAPOS )* '\\'\\'\\'' | '\"\"\"' ( options {greedy=false; } : TRIQUOTE )* '\"\"\"' | '\"' ( ESC | ~ ( '\\\\' | '\\n' | '\"' ) )* '\"' | '\\'' ( ESC | ~ ( '\\\\' | '\\n' | '\\'' ) )* '\\'' )
      alt_21 = 4
      look_21_0 = @input.peek( 1 )

      if ( look_21_0 == 0x27 )
        look_21_1 = @input.peek( 2 )

        if ( look_21_1 == 0x27 )
          look_21_3 = @input.peek( 3 )

          if ( look_21_3 == 0x27 )
            alt_21 = 1
          else
            alt_21 = 4
          end
        elsif ( look_21_1.between?( 0x0, 0x9 ) || look_21_1.between?( 0xb, 0x26 ) || look_21_1.between?( 0x28, 0xffff ) )
          alt_21 = 4
        else
          raise NoViableAlternative( "", 21, 1 )
        end
      elsif ( look_21_0 == 0x22 )
        look_21_2 = @input.peek( 2 )

        if ( look_21_2 == 0x22 )
          look_21_5 = @input.peek( 3 )

          if ( look_21_5 == 0x22 )
            alt_21 = 2
          else
            alt_21 = 3
          end
        elsif ( look_21_2.between?( 0x0, 0x9 ) || look_21_2.between?( 0xb, 0x21 ) || look_21_2.between?( 0x23, 0xffff ) )
          alt_21 = 3
        else
          raise NoViableAlternative( "", 21, 2 )
        end
      else
        raise NoViableAlternative( "", 21, 0 )
      end
      case alt_21
      when 1
        # at line 619:7: '\\'\\'\\'' ( options {greedy=false; } : TRIAPOS )* '\\'\\'\\''
        match( "'''" )
        # at line 619:16: ( options {greedy=false; } : TRIAPOS )*
        while true # decision 17
          alt_17 = 2
          look_17_0 = @input.peek( 1 )

          if ( look_17_0 == 0x27 )
            look_17_1 = @input.peek( 2 )

            if ( look_17_1 == 0x27 )
              look_17_3 = @input.peek( 3 )

              if ( look_17_3 == 0x27 )
                alt_17 = 2
              elsif ( look_17_3.between?( 0x0, 0x26 ) || look_17_3.between?( 0x28, 0xffff ) )
                alt_17 = 1

              end
            elsif ( look_17_1.between?( 0x0, 0x26 ) || look_17_1.between?( 0x28, 0xffff ) )
              alt_17 = 1

            end
          elsif ( look_17_0.between?( 0x0, 0x26 ) || look_17_0.between?( 0x28, 0xffff ) )
            alt_17 = 1

          end
          case alt_17
          when 1
            # at line 619:42: TRIAPOS
            triapos!

          else
            break # out of loop for decision 17
          end
        end # loop for decision 17
        match( "'''" )
        # --> action
         type = DOCUMENT 
        # <-- action

      when 2
        # at line 620:7: '\"\"\"' ( options {greedy=false; } : TRIQUOTE )* '\"\"\"'
        match( "\"\"\"" )
        # at line 620:13: ( options {greedy=false; } : TRIQUOTE )*
        while true # decision 18
          alt_18 = 2
          look_18_0 = @input.peek( 1 )

          if ( look_18_0 == 0x22 )
            look_18_1 = @input.peek( 2 )

            if ( look_18_1 == 0x22 )
              look_18_3 = @input.peek( 3 )

              if ( look_18_3 == 0x22 )
                alt_18 = 2
              elsif ( look_18_3.between?( 0x0, 0x21 ) || look_18_3.between?( 0x23, 0xffff ) )
                alt_18 = 1

              end
            elsif ( look_18_1.between?( 0x0, 0x21 ) || look_18_1.between?( 0x23, 0xffff ) )
              alt_18 = 1

            end
          elsif ( look_18_0.between?( 0x0, 0x21 ) || look_18_0.between?( 0x23, 0xffff ) )
            alt_18 = 1

          end
          case alt_18
          when 1
            # at line 620:39: TRIQUOTE
            triquote!

          else
            break # out of loop for decision 18
          end
        end # loop for decision 18
        match( "\"\"\"" )
        # --> action
         type = DOCUMENT 
        # <-- action

      when 3
        # at line 621:7: '\"' ( ESC | ~ ( '\\\\' | '\\n' | '\"' ) )* '\"'
        match( 0x22 )
        # at line 621:11: ( ESC | ~ ( '\\\\' | '\\n' | '\"' ) )*
        while true # decision 19
          alt_19 = 3
          look_19_0 = @input.peek( 1 )

          if ( look_19_0 == 0x5c )
            alt_19 = 1
          elsif ( look_19_0.between?( 0x0, 0x9 ) || look_19_0.between?( 0xb, 0x21 ) || look_19_0.between?( 0x23, 0x5b ) || look_19_0.between?( 0x5d, 0xffff ) )
            alt_19 = 2

          end
          case alt_19
          when 1
            # at line 621:13: ESC
            esc!

          when 2
            # at line 621:19: ~ ( '\\\\' | '\\n' | '\"' )
            if @input.peek( 1 ).between?( 0x0, 0x9 ) || @input.peek( 1 ).between?( 0xb, 0x21 ) || @input.peek( 1 ).between?( 0x23, 0x5b ) || @input.peek( 1 ).between?( 0x5d, 0xff )
              @input.consume
            else
              mse = MismatchedSet( nil )
              recover mse
              raise mse
            end



          else
            break # out of loop for decision 19
          end
        end # loop for decision 19
        match( 0x22 )

      when 4
        # at line 622:7: '\\'' ( ESC | ~ ( '\\\\' | '\\n' | '\\'' ) )* '\\''
        match( 0x27 )
        # at line 622:12: ( ESC | ~ ( '\\\\' | '\\n' | '\\'' ) )*
        while true # decision 20
          alt_20 = 3
          look_20_0 = @input.peek( 1 )

          if ( look_20_0 == 0x5c )
            alt_20 = 1
          elsif ( look_20_0.between?( 0x0, 0x9 ) || look_20_0.between?( 0xb, 0x26 ) || look_20_0.between?( 0x28, 0x5b ) || look_20_0.between?( 0x5d, 0xffff ) )
            alt_20 = 2

          end
          case alt_20
          when 1
            # at line 622:14: ESC
            esc!

          when 2
            # at line 622:20: ~ ( '\\\\' | '\\n' | '\\'' )
            if @input.peek( 1 ).between?( 0x0, 0x9 ) || @input.peek( 1 ).between?( 0xb, 0x26 ) || @input.peek( 1 ).between?( 0x28, 0x5b ) || @input.peek( 1 ).between?( 0x5d, 0xff )
              @input.consume
            else
              mse = MismatchedSet( nil )
              recover mse
              raise mse
            end



          else
            break # out of loop for decision 20
          end
        end # loop for decision 20
        match( 0x27 )

      end

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 80 )

    end

    # lexer rule continued_line! (CONTINUED_LINE)
    # (in Py.g)
    def continued_line!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 81 )

      type = CONTINUED_LINE
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 631:5: '\\\\' ( '\\r' )? '\\n' ( ' ' | '\\t' )* ( NEWLINE | )
      match( 0x5c )
      # at line 631:10: ( '\\r' )?
      alt_22 = 2
      look_22_0 = @input.peek( 1 )

      if ( look_22_0 == 0xd )
        alt_22 = 1
      end
      case alt_22
      when 1
        # at line 631:10: '\\r'
        match( 0xd )

      end
      match( 0xa )
      # at line 631:21: ( ' ' | '\\t' )*
      while true # decision 23
        alt_23 = 2
        look_23_0 = @input.peek( 1 )

        if ( look_23_0 == 0x9 || look_23_0 == 0x20 )
          alt_23 = 1

        end
        case alt_23
        when 1
          # at line 
          if @input.peek(1) == 0x9 || @input.peek(1) == 0x20
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end



        else
          break # out of loop for decision 23
        end
      end # loop for decision 23
      # at line 632:5: ( NEWLINE | )
      alt_24 = 2
      look_24_0 = @input.peek( 1 )

      if ( look_24_0 == 0xa || look_24_0.between?( 0xc, 0xd ) )
        alt_24 = 1
      else
        alt_24 = 2
      end
      case alt_24
      when 1
        # at line 632:7: NEWLINE
        newline!
        # --> action

                type = NEWLINE
                # self.text = $nl.text
              
        # <-- action

      when 2
        # at line 637:7: 
        # --> action
         channel = HIDDEN 
        # <-- action

      end

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 81 )

    end

    # lexer rule newline! (NEWLINE)
    # (in Py.g)
    def newline!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 82 )

      type = NEWLINE
      channel = ANTLR3::DEFAULT_CHANNEL
      # - - - - @init action - - - -

        if @input.beginning_of_line? or @line_join_level > 0
          channel = HIDDEN
        end


      
      # - - - - main rule block - - - -
      # at line 653:5: ( ( '\\u000C' )? ( '\\r' )? '\\n' )+
      # at file 653:5: ( ( '\\u000C' )? ( '\\r' )? '\\n' )+
      match_count_27 = 0
      while true
        alt_27 = 2
        look_27_0 = @input.peek( 1 )

        if ( look_27_0 == 0xa || look_27_0.between?( 0xc, 0xd ) )
          alt_27 = 1

        end
        case alt_27
        when 1
          # at line 653:7: ( '\\u000C' )? ( '\\r' )? '\\n'
          # at line 653:7: ( '\\u000C' )?
          alt_25 = 2
          look_25_0 = @input.peek( 1 )

          if ( look_25_0 == 0xc )
            alt_25 = 1
          end
          case alt_25
          when 1
            # at line 653:7: '\\u000C'
            match( 0xc )

          end
          # at line 653:17: ( '\\r' )?
          alt_26 = 2
          look_26_0 = @input.peek( 1 )

          if ( look_26_0 == 0xd )
            alt_26 = 1
          end
          case alt_26
          when 1
            # at line 653:17: '\\r'
            match( 0xd )

          end
          match( 0xa )

        else
          match_count_27 > 0 and break
          eee = EarlyExit(27)


          raise eee
        end
        match_count_27 += 1
      end


      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 82 )

    end

    # lexer rule leading_ws! (LEADING_WS)
    # (in Py.g)
    def leading_ws!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 83 )

      type = LEADING_WS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 664:5: {...}? => ({...}? ( ' ' | '\\t' )+ | ( ' ' | '\\t' )+ ( '#' (~ '\\n' )* ( ( '\\r' )? '\\n' )* )? ( ( '\\r' )? '\\n' )* )
      raise FailedPredicate( "LEADING_WS", " in_indent? " ) unless ( (  in_indent?  ) )
      # at line 665:5: ({...}? ( ' ' | '\\t' )+ | ( ' ' | '\\t' )+ ( '#' (~ '\\n' )* ( ( '\\r' )? '\\n' )* )? ( ( '\\r' )? '\\n' )* )
      alt_36 = 2
      look_36_0 = @input.peek( 1 )

      if ( look_36_0 == 0x9 || look_36_0 == 0x20 )
        look_36_1 = @input.peek( 2 )

        if ( (  @line_join_level > 0  ) )
          alt_36 = 1
        elsif ( true )
          alt_36 = 2
        else
          raise NoViableAlternative( "", 36, 1 )
        end
      else
        raise NoViableAlternative( "", 36, 0 )
      end
      case alt_36
      when 1
        # at line 665:7: {...}? ( ' ' | '\\t' )+
        raise FailedPredicate( "LEADING_WS", " @line_join_level > 0 " ) unless ( (  @line_join_level > 0  ) )
        # at file 665:33: ( ' ' | '\\t' )+
        match_count_28 = 0
        while true
          alt_28 = 2
          look_28_0 = @input.peek( 1 )

          if ( look_28_0 == 0x9 || look_28_0 == 0x20 )
            alt_28 = 1

          end
          case alt_28
          when 1
            # at line 
            if @input.peek(1) == 0x9 || @input.peek(1) == 0x20
              @input.consume
            else
              mse = MismatchedSet( nil )
              recover mse
              raise mse
            end



          else
            match_count_28 > 0 and break
            eee = EarlyExit(28)


            raise eee
          end
          match_count_28 += 1
        end

        # --> action
         channel = HIDDEN 
        # <-- action

      when 2
        # at line 666:7: ( ' ' | '\\t' )+ ( '#' (~ '\\n' )* ( ( '\\r' )? '\\n' )* )? ( ( '\\r' )? '\\n' )*
        # at file 666:7: ( ' ' | '\\t' )+
        match_count_29 = 0
        while true
          alt_29 = 2
          look_29_0 = @input.peek( 1 )

          if ( look_29_0 == 0x9 || look_29_0 == 0x20 )
            alt_29 = 1

          end
          case alt_29
          when 1
            # at line 
            if @input.peek(1) == 0x9 || @input.peek(1) == 0x20
              @input.consume
            else
              mse = MismatchedSet( nil )
              recover mse
              raise mse
            end



          else
            match_count_29 > 0 and break
            eee = EarlyExit(29)


            raise eee
          end
          match_count_29 += 1
        end

        # at line 667:7: ( '#' (~ '\\n' )* ( ( '\\r' )? '\\n' )* )?
        alt_33 = 2
        look_33_0 = @input.peek( 1 )

        if ( look_33_0 == 0x23 )
          alt_33 = 1
        end
        case alt_33
        when 1
          # at line 667:9: '#' (~ '\\n' )* ( ( '\\r' )? '\\n' )*
          match( 0x23 )
          # at line 667:13: (~ '\\n' )*
          while true # decision 30
            alt_30 = 2
            look_30_0 = @input.peek( 1 )

            if ( look_30_0.between?( 0x0, 0x9 ) || look_30_0.between?( 0xb, 0xffff ) )
              alt_30 = 1

            end
            case alt_30
            when 1
              # at line 667:13: ~ '\\n'
              if @input.peek( 1 ).between?( 0x0, 0x9 ) || @input.peek( 1 ).between?( 0xb, 0xff )
                @input.consume
              else
                mse = MismatchedSet( nil )
                recover mse
                raise mse
              end



            else
              break # out of loop for decision 30
            end
          end # loop for decision 30
          # at line 667:20: ( ( '\\r' )? '\\n' )*
          while true # decision 32
            alt_32 = 2
            look_32_0 = @input.peek( 1 )

            if ( look_32_0 == 0xd )
              look_32_1 = @input.peek( 2 )

              if ( look_32_1 == 0xa )
                alt_32 = 1

              end
            elsif ( look_32_0 == 0xa )
              alt_32 = 1

            end
            case alt_32
            when 1
              # at line 667:21: ( '\\r' )? '\\n'
              # at line 667:21: ( '\\r' )?
              alt_31 = 2
              look_31_0 = @input.peek( 1 )

              if ( look_31_0 == 0xd )
                alt_31 = 1
              end
              case alt_31
              when 1
                # at line 667:21: '\\r'
                match( 0xd )

              end
              match( 0xa )

            else
              break # out of loop for decision 32
            end
          end # loop for decision 32
          # --> action

                    type = COMMENT
                    channel = HIDDEN
                  
          # <-- action

        end
        # at line 673:7: ( ( '\\r' )? '\\n' )*
        while true # decision 35
          alt_35 = 2
          look_35_0 = @input.peek( 1 )

          if ( look_35_0 == 0xa || look_35_0 == 0xd )
            alt_35 = 1

          end
          case alt_35
          when 1
            # at line 673:9: ( '\\r' )? '\\n'
            # at line 673:9: ( '\\r' )?
            alt_34 = 2
            look_34_0 = @input.peek( 1 )

            if ( look_34_0 == 0xd )
              alt_34 = 1
            end
            case alt_34
            when 1
              # at line 673:9: '\\r'
              match( 0xd )

            end
            match( 0xa )
            # --> action
             channel = HIDDEN 
            # <-- action

          else
            break # out of loop for decision 35
          end
        end # loop for decision 35

      end

      
      @state.type = type
      @state.channel = channel
    # --> action
     @in_indent = false 
    # <-- action
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 83 )

    end

    # lexer rule comment! (COMMENT)
    # (in Py.g)
    def comment!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 84 )

      type = COMMENT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 697:5: '#' (~ '\\n' )*
      match( 0x23 )
      # at line 697:9: (~ '\\n' )*
      while true # decision 37
        alt_37 = 2
        look_37_0 = @input.peek( 1 )

        if ( look_37_0.between?( 0x0, 0x9 ) || look_37_0.between?( 0xb, 0xffff ) )
          alt_37 = 1

        end
        case alt_37
        when 1
          # at line 697:9: ~ '\\n'
          if @input.peek( 1 ).between?( 0x0, 0x9 ) || @input.peek( 1 ).between?( 0xb, 0xff )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end



        else
          break # out of loop for decision 37
        end
      end # loop for decision 37
      # --> action
       channel = HIDDEN 
      # <-- action

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 84 )

    end

    # lexer rule ws! (WS)
    # (in Py.g)
    def ws!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 85 )

      type = WS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 701:5: ( ' ' | '\\t' )+
      # at file 701:5: ( ' ' | '\\t' )+
      match_count_38 = 0
      while true
        alt_38 = 2
        look_38_0 = @input.peek( 1 )

        if ( look_38_0 == 0x9 || look_38_0 == 0x20 )
          alt_38 = 1

        end
        case alt_38
        when 1
          # at line 
          if @input.peek(1) == 0x9 || @input.peek(1) == 0x20
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end



        else
          match_count_38 > 0 and break
          eee = EarlyExit(38)


          raise eee
        end
        match_count_38 += 1
      end

      # --> action
      channel=HIDDEN
      # <-- action

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 85 )

    end

    # lexer rule triquote! (TRIQUOTE)
    # (in Py.g)
    def triquote!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 86 )

      
      # - - - - main rule block - - - -
      # at line 706:5: ( '\"' )? ( '\"' )? ( ESC | ~ ( '\\\\' | '\"' ) )+
      # at line 706:5: ( '\"' )?
      alt_39 = 2
      look_39_0 = @input.peek( 1 )

      if ( look_39_0 == 0x22 )
        alt_39 = 1
      end
      case alt_39
      when 1
        # at line 706:5: '\"'
        match( 0x22 )

      end
      # at line 706:10: ( '\"' )?
      alt_40 = 2
      look_40_0 = @input.peek( 1 )

      if ( look_40_0 == 0x22 )
        alt_40 = 1
      end
      case alt_40
      when 1
        # at line 706:10: '\"'
        match( 0x22 )

      end
      # at file 706:15: ( ESC | ~ ( '\\\\' | '\"' ) )+
      match_count_41 = 0
      while true
        alt_41 = 3
        look_41_0 = @input.peek( 1 )

        if ( look_41_0 == 0x5c )
          alt_41 = 1
        elsif ( look_41_0.between?( 0x0, 0x21 ) || look_41_0.between?( 0x23, 0x5b ) || look_41_0.between?( 0x5d, 0xffff ) )
          alt_41 = 2

        end
        case alt_41
        when 1
          # at line 706:17: ESC
          esc!

        when 2
          # at line 706:23: ~ ( '\\\\' | '\"' )
          if @input.peek( 1 ).between?( 0x0, 0x21 ) || @input.peek( 1 ).between?( 0x23, 0x5b ) || @input.peek( 1 ).between?( 0x5d, 0xff )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end



        else
          match_count_41 > 0 and break
          eee = EarlyExit(41)


          raise eee
        end
        match_count_41 += 1
      end


    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 86 )

    end

    # lexer rule triapos! (TRIAPOS)
    # (in Py.g)
    def triapos!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 87 )

      
      # - - - - main rule block - - - -
      # at line 711:5: ( '\\'' )? ( '\\'' )? ( ESC | ~ ( '\\\\' | '\\'' ) )+
      # at line 711:5: ( '\\'' )?
      alt_42 = 2
      look_42_0 = @input.peek( 1 )

      if ( look_42_0 == 0x27 )
        alt_42 = 1
      end
      case alt_42
      when 1
        # at line 711:5: '\\''
        match( 0x27 )

      end
      # at line 711:11: ( '\\'' )?
      alt_43 = 2
      look_43_0 = @input.peek( 1 )

      if ( look_43_0 == 0x27 )
        alt_43 = 1
      end
      case alt_43
      when 1
        # at line 711:11: '\\''
        match( 0x27 )

      end
      # at file 711:17: ( ESC | ~ ( '\\\\' | '\\'' ) )+
      match_count_44 = 0
      while true
        alt_44 = 3
        look_44_0 = @input.peek( 1 )

        if ( look_44_0 == 0x5c )
          alt_44 = 1
        elsif ( look_44_0.between?( 0x0, 0x26 ) || look_44_0.between?( 0x28, 0x5b ) || look_44_0.between?( 0x5d, 0xffff ) )
          alt_44 = 2

        end
        case alt_44
        when 1
          # at line 711:19: ESC
          esc!

        when 2
          # at line 711:25: ~ ( '\\\\' | '\\'' )
          if @input.peek( 1 ).between?( 0x0, 0x26 ) || @input.peek( 1 ).between?( 0x28, 0x5b ) || @input.peek( 1 ).between?( 0x5d, 0xff )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end



        else
          match_count_44 > 0 and break
          eee = EarlyExit(44)


          raise eee
        end
        match_count_44 += 1
      end


    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 87 )

    end

    # lexer rule esc! (ESC)
    # (in Py.g)
    def esc!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 88 )

      
      # - - - - main rule block - - - -
      # at line 716:5: '\\\\' .
      match( 0x5c )
      match_any

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 88 )

    end

    # lexer rule exp! (EXP)
    # (in Py.g)
    def exp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 89 )

      
      # - - - - main rule block - - - -
      # at line 721:5: ( 'e' | 'E' ) ( '+' | '-' )? ( '0' .. '9' )+
      if @input.peek(1) == 0x45 || @input.peek(1) == 0x65
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse
      end


      # at line 721:19: ( '+' | '-' )?
      alt_45 = 2
      look_45_0 = @input.peek( 1 )

      if ( look_45_0 == 0x2b || look_45_0 == 0x2d )
        alt_45 = 1
      end
      case alt_45
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
      # at file 721:34: ( '0' .. '9' )+
      match_count_46 = 0
      while true
        alt_46 = 2
        look_46_0 = @input.peek( 1 )

        if ( look_46_0.between?( 0x30, 0x39 ) )
          alt_46 = 1

        end
        case alt_46
        when 1
          # at line 721:36: '0' .. '9'
          match_range( 0x30, 0x39 )

        else
          match_count_46 > 0 and break
          eee = EarlyExit(46)


          raise eee
        end
        match_count_46 += 1
      end


    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 89 )

    end

    # main rule used to study the input at the current position,
    # and choose the proper lexer rule to call in order to
    # fetch the next token
    # 
    # usually, you don't make direct calls to this method,
    # but instead use the next_token method, which will
    # build and emit the actual next token
    def token!
      # at line 1:8: ( T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | T__45 | T__46 | T__47 | T__48 | T__49 | T__50 | T__51 | T__52 | T__53 | T__54 | T__55 | T__56 | T__57 | T__58 | T__59 | T__60 | T__61 | T__62 | T__63 | T__64 | T__65 | T__66 | T__67 | T__68 | T__69 | T__70 | T__71 | T__72 | T__73 | T__74 | T__75 | T__76 | T__77 | T__78 | T__79 | T__80 | T__81 | T__82 | T__83 | T__84 | T__85 | T__86 | T__87 | T__88 | T__89 | T__90 | T__91 | T__92 | T__93 | T__94 | T__95 | T__96 | T__97 | T__98 | T__99 | T__100 | T__101 | T__102 | T__103 | T__104 | T__105 | T__106 | T__107 | LPAREN | RPAREN | LBRACK | RBRACK | LCURLY | RCURLY | FLOAT | INT | NAME | STRING | CONTINUED_LINE | NEWLINE | LEADING_WS | COMMENT | WS )
      alt_47 = 85
      alt_47 = @dfa47.predict( @input )
      case alt_47
      when 1
        # at line 1:10: T__38
        t__38!

      when 2
        # at line 1:16: T__39
        t__39!

      when 3
        # at line 1:22: T__40
        t__40!

      when 4
        # at line 1:28: T__41
        t__41!

      when 5
        # at line 1:34: T__42
        t__42!

      when 6
        # at line 1:40: T__43
        t__43!

      when 7
        # at line 1:46: T__44
        t__44!

      when 8
        # at line 1:52: T__45
        t__45!

      when 9
        # at line 1:58: T__46
        t__46!

      when 10
        # at line 1:64: T__47
        t__47!

      when 11
        # at line 1:70: T__48
        t__48!

      when 12
        # at line 1:76: T__49
        t__49!

      when 13
        # at line 1:82: T__50
        t__50!

      when 14
        # at line 1:88: T__51
        t__51!

      when 15
        # at line 1:94: T__52
        t__52!

      when 16
        # at line 1:100: T__53
        t__53!

      when 17
        # at line 1:106: T__54
        t__54!

      when 18
        # at line 1:112: T__55
        t__55!

      when 19
        # at line 1:118: T__56
        t__56!

      when 20
        # at line 1:124: T__57
        t__57!

      when 21
        # at line 1:130: T__58
        t__58!

      when 22
        # at line 1:136: T__59
        t__59!

      when 23
        # at line 1:142: T__60
        t__60!

      when 24
        # at line 1:148: T__61
        t__61!

      when 25
        # at line 1:154: T__62
        t__62!

      when 26
        # at line 1:160: T__63
        t__63!

      when 27
        # at line 1:166: T__64
        t__64!

      when 28
        # at line 1:172: T__65
        t__65!

      when 29
        # at line 1:178: T__66
        t__66!

      when 30
        # at line 1:184: T__67
        t__67!

      when 31
        # at line 1:190: T__68
        t__68!

      when 32
        # at line 1:196: T__69
        t__69!

      when 33
        # at line 1:202: T__70
        t__70!

      when 34
        # at line 1:208: T__71
        t__71!

      when 35
        # at line 1:214: T__72
        t__72!

      when 36
        # at line 1:220: T__73
        t__73!

      when 37
        # at line 1:226: T__74
        t__74!

      when 38
        # at line 1:232: T__75
        t__75!

      when 39
        # at line 1:238: T__76
        t__76!

      when 40
        # at line 1:244: T__77
        t__77!

      when 41
        # at line 1:250: T__78
        t__78!

      when 42
        # at line 1:256: T__79
        t__79!

      when 43
        # at line 1:262: T__80
        t__80!

      when 44
        # at line 1:268: T__81
        t__81!

      when 45
        # at line 1:274: T__82
        t__82!

      when 46
        # at line 1:280: T__83
        t__83!

      when 47
        # at line 1:286: T__84
        t__84!

      when 48
        # at line 1:292: T__85
        t__85!

      when 49
        # at line 1:298: T__86
        t__86!

      when 50
        # at line 1:304: T__87
        t__87!

      when 51
        # at line 1:310: T__88
        t__88!

      when 52
        # at line 1:316: T__89
        t__89!

      when 53
        # at line 1:322: T__90
        t__90!

      when 54
        # at line 1:328: T__91
        t__91!

      when 55
        # at line 1:334: T__92
        t__92!

      when 56
        # at line 1:340: T__93
        t__93!

      when 57
        # at line 1:346: T__94
        t__94!

      when 58
        # at line 1:352: T__95
        t__95!

      when 59
        # at line 1:358: T__96
        t__96!

      when 60
        # at line 1:364: T__97
        t__97!

      when 61
        # at line 1:370: T__98
        t__98!

      when 62
        # at line 1:376: T__99
        t__99!

      when 63
        # at line 1:382: T__100
        t__100!

      when 64
        # at line 1:389: T__101
        t__101!

      when 65
        # at line 1:396: T__102
        t__102!

      when 66
        # at line 1:403: T__103
        t__103!

      when 67
        # at line 1:410: T__104
        t__104!

      when 68
        # at line 1:417: T__105
        t__105!

      when 69
        # at line 1:424: T__106
        t__106!

      when 70
        # at line 1:431: T__107
        t__107!

      when 71
        # at line 1:438: LPAREN
        lparen!

      when 72
        # at line 1:445: RPAREN
        rparen!

      when 73
        # at line 1:452: LBRACK
        lbrack!

      when 74
        # at line 1:459: RBRACK
        rbrack!

      when 75
        # at line 1:466: LCURLY
        lcurly!

      when 76
        # at line 1:473: RCURLY
        rcurly!

      when 77
        # at line 1:480: FLOAT
        float!

      when 78
        # at line 1:486: INT
        int!

      when 79
        # at line 1:490: NAME
        name!

      when 80
        # at line 1:495: STRING
        string!

      when 81
        # at line 1:502: CONTINUED_LINE
        continued_line!

      when 82
        # at line 1:517: NEWLINE
        newline!

      when 83
        # at line 1:525: LEADING_WS
        leading_ws!

      when 84
        # at line 1:536: COMMENT
        comment!

      when 85
        # at line 1:544: WS
        ws!

      end
    end

    
    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA9 < ANTLR3::DFA
      EOT = unpack( 3, -1, 1, 5, 2, -1 )
      EOF = unpack( 6, -1 )
      MIN = unpack( 1, 46, 1, -1, 1, 46, 1, 69, 2, -1 )
      MAX = unpack( 1, 57, 1, -1, 2, 101, 2, -1 )
      ACCEPT = unpack( 1, -1, 1, 1, 2, -1, 1, 2, 1, 3 )
      SPECIAL = unpack( 6, -1 )
      TRANSITION = [
        unpack( 1, 1, 1, -1, 10, 2 ),
        unpack(  ),
        unpack( 1, 3, 1, -1, 10, 2, 11, -1, 1, 4, 31, -1, 1, 4 ),
        unpack( 1, 4, 31, -1, 1, 4 ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 9
      

      def description
        <<-'__dfa_description__'.strip!
          593:5: ( '.' ( '0' .. '9' )+ ( EXP )? | ( '0' .. '9' )+ ( '.' )? EXP | ( '0' .. '9' )+ '.' ( ( '0' .. '9' )+ ( EXP )? )? )
        __dfa_description__
      end
    end
    class DFA16 < ANTLR3::DFA
      EOT = unpack( 12, -1 )
      EOF = unpack( 12, -1 )
      MIN = unpack( 1, 34, 1, -1, 1, 34, 1, -1, 1, 34, 7, -1 )
      MAX = unpack( 1, 117, 1, -1, 1, 114, 1, -1, 1, 114, 7, -1 )
      ACCEPT = unpack( 1, -1, 1, 1, 1, -1, 1, 4, 1, -1, 1, 9, 1, 3, 1, 8, 
                       1, 2, 1, 6, 1, 7, 1, 5 )
      SPECIAL = unpack( 12, -1 )
      TRANSITION = [
        unpack( 1, 5, 4, -1, 1, 5, 42, -1, 1, 3, 2, -1, 1, 4, 28, -1, 1, 
                1, 2, -1, 1, 2 ),
        unpack(  ),
        unpack( 1, 8, 4, -1, 1, 8, 42, -1, 1, 7, 31, -1, 1, 6 ),
        unpack(  ),
        unpack( 1, 11, 4, -1, 1, 11, 42, -1, 1, 9, 31, -1, 1, 10 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 16
      

      def description
        <<-'__dfa_description__'.strip!
          618:5: ( 'r' | 'u' | 'ur' | 'R' | 'U' | 'UR' | 'Ur' | 'uR' )?
        __dfa_description__
      end
    end
    class DFA47 < ANTLR3::DFA
      EOT = unpack( 2, -1, 1, 53, 1, 47, 2, -1, 1, 58, 1, 60, 1, -1, 1, 
                    62, 1, 64, 1, 67, 1, 69, 1, 71, 1, 73, 1, 75, 1, 79, 
                    1, 82, 13, 47, 3, -1, 2, 47, 6, -1, 2, 109, 3, 47, 4, 
                    -1, 1, 114, 3, -1, 1, 47, 1, 119, 9, -1, 1, 121, 9, 
                    -1, 1, 123, 3, -1, 1, 125, 2, -1, 8, 47, 1, 134, 1, 
                    135, 1, 136, 3, 47, 1, 141, 7, 47, 1, 151, 3, 47, 1, 
                    -1, 4, 47, 2, -1, 1, 156, 1, 157, 8, -1, 8, 47, 3, -1, 
                    1, 47, 1, 167, 2, 47, 1, -1, 1, 170, 7, 47, 1, 178, 
                    1, -1, 1, 179, 2, 47, 3, -1, 1, 47, 1, 183, 6, 47, 1, 
                    190, 1, -1, 2, 47, 1, -1, 1, 47, 1, 194, 1, 47, 1, 196, 
                    1, 197, 1, 47, 1, 199, 2, -1, 2, 47, 1, 202, 1, -1, 
                    1, 203, 1, 47, 1, 205, 1, 47, 1, 207, 1, 47, 1, -1, 
                    3, 47, 1, -1, 1, 47, 2, -1, 1, 213, 1, -1, 1, 47, 1, 
                    215, 2, -1, 1, 47, 1, -1, 1, 217, 1, -1, 1, 218, 1, 
                    47, 1, 220, 1, 221, 1, 222, 1, -1, 1, 223, 1, -1, 1, 
                    47, 2, -1, 1, 225, 4, -1, 1, 226, 2, -1 )
      EOF = unpack( 227, -1 )
      MIN = unpack( 1, 9, 1, -1, 1, 48, 1, 101, 2, -1, 1, 42, 1, 61, 1, 
                    -1, 2, 61, 1, 47, 4, 61, 1, 60, 1, 61, 1, 97, 1, 114, 
                    1, 108, 1, 34, 1, 102, 1, 105, 1, 110, 2, 108, 1, 104, 
                    2, 114, 1, 111, 3, -1, 1, 97, 1, 105, 6, -1, 2, 46, 
                    3, 34, 4, -1, 1, 9, 3, -1, 1, 102, 1, 61, 9, -1, 1, 
                    61, 9, -1, 1, 61, 3, -1, 1, 61, 2, -1, 1, 105, 1, 115, 
                    1, 101, 1, 110, 1, 97, 1, 116, 1, 105, 1, 112, 3, 48, 
                    1, 111, 1, 114, 1, 110, 1, 48, 1, 100, 1, 111, 1, 99, 
                    2, 105, 1, 116, 1, 121, 1, 48, 1, 116, 1, 109, 1, 101, 
                    1, -1, 4, 34, 1, 0, 1, -1, 2, 48, 8, -1, 1, 110, 1, 
                    115, 1, 97, 1, 116, 1, 115, 1, 117, 1, 115, 1, 111, 
                    3, -1, 1, 109, 1, 48, 1, 97, 1, 101, 1, -1, 1, 48, 1, 
                    98, 1, 99, 2, 101, 1, 102, 1, 108, 1, 104, 1, 48, 1, 
                    -1, 1, 48, 1, 98, 1, 108, 3, -1, 1, 116, 1, 48, 1, 107, 
                    1, 105, 1, 115, 1, 114, 1, 101, 1, 114, 1, 48, 1, -1, 
                    1, 108, 1, 114, 1, -1, 1, 97, 1, 48, 1, 112, 2, 48, 
                    1, 101, 1, 48, 2, -1, 2, 100, 1, 48, 1, -1, 1, 48, 1, 
                    110, 1, 48, 1, 110, 1, 48, 1, 116, 1, -1, 1, 108, 1, 
                    116, 1, 108, 1, -1, 1, 116, 2, -1, 1, 48, 1, -1, 1, 
                    97, 1, 48, 2, -1, 1, 117, 1, -1, 1, 48, 1, -1, 1, 48, 
                    1, 121, 3, 48, 1, -1, 1, 48, 1, -1, 1, 101, 2, -1, 1, 
                    48, 4, -1, 1, 48, 2, -1 )
      MAX = unpack( 1, 126, 1, -1, 1, 57, 1, 101, 2, -1, 2, 61, 1, -1, 7, 
                    61, 2, 62, 2, 114, 1, 111, 1, 101, 1, 115, 1, 114, 1, 
                    115, 1, 108, 1, 120, 1, 105, 2, 114, 1, 111, 3, -1, 
                    1, 97, 1, 105, 6, -1, 2, 101, 1, 114, 1, 39, 1, 114, 
                    4, -1, 1, 35, 3, -1, 1, 108, 1, 61, 9, -1, 1, 61, 9, 
                    -1, 1, 61, 3, -1, 1, 61, 2, -1, 1, 105, 1, 115, 1, 101, 
                    1, 110, 1, 97, 1, 116, 1, 105, 1, 112, 3, 122, 1, 111, 
                    1, 114, 1, 110, 1, 122, 1, 100, 1, 111, 1, 101, 1, 115, 
                    1, 105, 1, 116, 1, 121, 1, 122, 1, 116, 1, 109, 1, 101, 
                    1, -1, 4, 39, 1, 0, 1, -1, 2, 122, 8, -1, 1, 110, 1, 
                    115, 1, 97, 1, 116, 1, 115, 1, 117, 1, 115, 1, 111, 
                    3, -1, 1, 109, 1, 122, 1, 97, 1, 101, 1, -1, 1, 122, 
                    1, 98, 1, 99, 2, 101, 1, 102, 1, 108, 1, 104, 1, 122, 
                    1, -1, 1, 122, 1, 98, 1, 108, 3, -1, 1, 116, 1, 122, 
                    1, 107, 1, 105, 1, 115, 1, 114, 1, 101, 1, 114, 1, 122, 
                    1, -1, 1, 108, 1, 114, 1, -1, 1, 97, 1, 122, 1, 112, 
                    2, 122, 1, 101, 1, 122, 2, -1, 2, 100, 1, 122, 1, -1, 
                    1, 122, 1, 110, 1, 122, 1, 110, 1, 122, 1, 116, 1, -1, 
                    1, 108, 1, 116, 1, 108, 1, -1, 1, 116, 2, -1, 1, 122, 
                    1, -1, 1, 97, 1, 122, 2, -1, 1, 117, 1, -1, 1, 122, 
                    1, -1, 1, 122, 1, 121, 3, 122, 1, -1, 1, 122, 1, -1, 
                    1, 101, 2, -1, 1, 122, 4, -1, 1, 122, 2, -1 )
      ACCEPT = unpack( 1, -1, 1, 1, 2, -1, 1, 4, 1, 5, 2, -1, 1, 9, 22, 
                       -1, 1, 55, 1, 66, 1, 67, 2, -1, 1, 71, 1, 72, 1, 
                       73, 1, 74, 1, 75, 1, 76, 5, -1, 1, 79, 1, 80, 1, 
                       81, 1, 82, 1, -1, 1, 84, 1, 2, 1, 77, 2, -1, 1, 12, 
                       1, 6, 1, 51, 1, 8, 1, 10, 1, 61, 1, 11, 1, 62, 1, 
                       13, 1, -1, 1, 63, 1, 14, 1, 64, 1, 15, 1, 59, 1, 
                       16, 1, 57, 1, 17, 1, 58, 1, -1, 1, 53, 1, 54, 1, 
                       49, 1, -1, 1, 52, 1, 50, 26, -1, 1, 78, 5, -1, 1, 
                       83, 2, -1, 1, 20, 1, 7, 1, 21, 1, 65, 1, 18, 1, 60, 
                       1, 19, 1, 23, 8, -1, 1, 35, 1, 37, 1, 56, 4, -1, 
                       1, 32, 9, -1, 1, 46, 3, -1, 1, 85, 1, 3, 1, 24, 9, 
                       -1, 1, 41, 2, -1, 1, 47, 7, -1, 1, 42, 1, 48, 3, 
                       -1, 1, 25, 6, -1, 1, 31, 3, -1, 1, 34, 1, -1, 1, 
                       38, 1, 39, 1, -1, 1, 44, 2, -1, 1, 22, 1, 26, 1, 
                       -1, 1, 69, 1, -1, 1, 29, 5, -1, 1, 40, 1, -1, 1, 
                       70, 1, -1, 1, 28, 1, 30, 1, -1, 1, 36, 1, 33, 1, 
                       45, 1, 68, 1, -1, 1, 43, 1, 27 )
      SPECIAL = unpack( 51, -1, 1, 0, 62, -1, 1, 1, 112, -1 )
      TRANSITION = [
        unpack( 1, 51, 1, 50, 1, -1, 2, 50, 18, -1, 1, 51, 1, 31, 1, 48, 
                1, 52, 1, -1, 1, 12, 1, 13, 1, 48, 1, 36, 1, 37, 1, 6, 1, 
                9, 1, 5, 1, 10, 1, 2, 1, 11, 1, 42, 9, 43, 1, 4, 1, 8, 1, 
                16, 1, 7, 1, 17, 1, -1, 1, 1, 17, 47, 1, 45, 2, 47, 1, 46, 
                5, 47, 1, 38, 1, 49, 1, 39, 1, 15, 1, 47, 1, 33, 1, 24, 
                1, 19, 1, 20, 1, 3, 1, 26, 1, 23, 1, 25, 1, 47, 1, 22, 2, 
                47, 1, 34, 1, 47, 1, 30, 1, 29, 1, 18, 1, 47, 1, 21, 1, 
                47, 1, 28, 1, 44, 1, 47, 1, 27, 1, 47, 1, 35, 1, 47, 1, 
                40, 1, 14, 1, 41, 1, 32 ),
        unpack(  ),
        unpack( 10, 54 ),
        unpack( 1, 55 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 56, 18, -1, 1, 57 ),
        unpack( 1, 59 ),
        unpack(  ),
        unpack( 1, 61 ),
        unpack( 1, 63 ),
        unpack( 1, 66, 13, -1, 1, 65 ),
        unpack( 1, 68 ),
        unpack( 1, 70 ),
        unpack( 1, 72 ),
        unpack( 1, 74 ),
        unpack( 1, 76, 1, 77, 1, 78 ),
        unpack( 1, 81, 1, 80 ),
        unpack( 1, 84, 16, -1, 1, 83 ),
        unpack( 1, 85 ),
        unpack( 1, 87, 2, -1, 1, 86 ),
        unpack( 1, 48, 4, -1, 1, 48, 57, -1, 1, 89, 3, -1, 1, 88 ),
        unpack( 1, 92, 6, -1, 1, 90, 1, 91, 4, -1, 1, 93 ),
        unpack( 1, 96, 5, -1, 1, 95, 2, -1, 1, 94 ),
        unpack( 1, 98, 4, -1, 1, 97 ),
        unpack( 1, 99 ),
        unpack( 1, 101, 11, -1, 1, 100 ),
        unpack( 1, 102, 1, 103 ),
        unpack( 1, 104 ),
        unpack( 1, 105 ),
        unpack( 1, 106 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 107 ),
        unpack( 1, 108 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 54, 1, -1, 10, 43, 11, -1, 1, 54, 31, -1, 1, 54 ),
        unpack( 1, 54, 1, -1, 10, 43, 11, -1, 1, 54, 31, -1, 1, 54 ),
        unpack( 1, 48, 4, -1, 1, 48, 42, -1, 1, 111, 31, -1, 1, 110 ),
        unpack( 1, 48, 4, -1, 1, 48 ),
        unpack( 1, 48, 4, -1, 1, 48, 42, -1, 1, 112, 31, -1, 1, 113 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 51, 1, 115, 2, -1, 1, 115, 18, -1, 1, 51, 2, -1, 1, 
                 115 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 116, 5, -1, 1, 117 ),
        unpack( 1, 118 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 120 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 122 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 124 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 126 ),
        unpack( 1, 127 ),
        unpack( 1, 128 ),
        unpack( 1, 129 ),
        unpack( 1, 130 ),
        unpack( 1, 131 ),
        unpack( 1, 132 ),
        unpack( 1, 133 ),
        unpack( 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, -1, 26, 47 ),
        unpack( 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, -1, 26, 47 ),
        unpack( 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, -1, 26, 47 ),
        unpack( 1, 137 ),
        unpack( 1, 138 ),
        unpack( 1, 139 ),
        unpack( 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, -1, 18, 47, 1, 
                 140, 7, 47 ),
        unpack( 1, 142 ),
        unpack( 1, 143 ),
        unpack( 1, 145, 1, -1, 1, 144 ),
        unpack( 1, 147, 9, -1, 1, 146 ),
        unpack( 1, 148 ),
        unpack( 1, 149 ),
        unpack( 1, 150 ),
        unpack( 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, -1, 26, 47 ),
        unpack( 1, 152 ),
        unpack( 1, 153 ),
        unpack( 1, 154 ),
        unpack(  ),
        unpack( 1, 48, 4, -1, 1, 48 ),
        unpack( 1, 48, 4, -1, 1, 48 ),
        unpack( 1, 48, 4, -1, 1, 48 ),
        unpack( 1, 48, 4, -1, 1, 48 ),
        unpack( 1, -1 ),
        unpack(  ),
        unpack( 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, -1, 26, 47 ),
        unpack( 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, -1, 26, 47 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 158 ),
        unpack( 1, 159 ),
        unpack( 1, 160 ),
        unpack( 1, 161 ),
        unpack( 1, 162 ),
        unpack( 1, 163 ),
        unpack( 1, 164 ),
        unpack( 1, 165 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 166 ),
        unpack( 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, -1, 26, 47 ),
        unpack( 1, 168 ),
        unpack( 1, 169 ),
        unpack(  ),
        unpack( 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, -1, 26, 47 ),
        unpack( 1, 171 ),
        unpack( 1, 172 ),
        unpack( 1, 173 ),
        unpack( 1, 174 ),
        unpack( 1, 175 ),
        unpack( 1, 176 ),
        unpack( 1, 177 ),
        unpack( 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, -1, 26, 47 ),
        unpack(  ),
        unpack( 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, -1, 26, 47 ),
        unpack( 1, 180 ),
        unpack( 1, 181 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 182 ),
        unpack( 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, -1, 26, 47 ),
        unpack( 1, 184 ),
        unpack( 1, 185 ),
        unpack( 1, 186 ),
        unpack( 1, 187 ),
        unpack( 1, 188 ),
        unpack( 1, 189 ),
        unpack( 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, -1, 26, 47 ),
        unpack(  ),
        unpack( 1, 191 ),
        unpack( 1, 192 ),
        unpack(  ),
        unpack( 1, 193 ),
        unpack( 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, -1, 26, 47 ),
        unpack( 1, 195 ),
        unpack( 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, -1, 26, 47 ),
        unpack( 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, -1, 26, 47 ),
        unpack( 1, 198 ),
        unpack( 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, -1, 26, 47 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 200 ),
        unpack( 1, 201 ),
        unpack( 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, -1, 26, 47 ),
        unpack(  ),
        unpack( 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, -1, 26, 47 ),
        unpack( 1, 204 ),
        unpack( 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, -1, 26, 47 ),
        unpack( 1, 206 ),
        unpack( 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, -1, 26, 47 ),
        unpack( 1, 208 ),
        unpack(  ),
        unpack( 1, 209 ),
        unpack( 1, 210 ),
        unpack( 1, 211 ),
        unpack(  ),
        unpack( 1, 212 ),
        unpack(  ),
        unpack(  ),
        unpack( 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, -1, 26, 47 ),
        unpack(  ),
        unpack( 1, 214 ),
        unpack( 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, -1, 26, 47 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 216 ),
        unpack(  ),
        unpack( 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, -1, 26, 47 ),
        unpack(  ),
        unpack( 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, -1, 26, 47 ),
        unpack( 1, 219 ),
        unpack( 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, -1, 26, 47 ),
        unpack( 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, -1, 26, 47 ),
        unpack( 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, -1, 26, 47 ),
        unpack(  ),
        unpack( 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, -1, 26, 47 ),
        unpack(  ),
        unpack( 1, 224 ),
        unpack(  ),
        unpack(  ),
        unpack( 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, -1, 26, 47 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 10, 47, 7, -1, 26, 47, 4, -1, 1, 47, 1, -1, 26, 47 ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 47
      

      def description
        <<-'__dfa_description__'.strip!
          1:1: Tokens : ( T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | T__45 | T__46 | T__47 | T__48 | T__49 | T__50 | T__51 | T__52 | T__53 | T__54 | T__55 | T__56 | T__57 | T__58 | T__59 | T__60 | T__61 | T__62 | T__63 | T__64 | T__65 | T__66 | T__67 | T__68 | T__69 | T__70 | T__71 | T__72 | T__73 | T__74 | T__75 | T__76 | T__77 | T__78 | T__79 | T__80 | T__81 | T__82 | T__83 | T__84 | T__85 | T__86 | T__87 | T__88 | T__89 | T__90 | T__91 | T__92 | T__93 | T__94 | T__95 | T__96 | T__97 | T__98 | T__99 | T__100 | T__101 | T__102 | T__103 | T__104 | T__105 | T__106 | T__107 | LPAREN | RPAREN | LBRACK | RBRACK | LCURLY | RCURLY | FLOAT | INT | NAME | STRING | CONTINUED_LINE | NEWLINE | LEADING_WS | COMMENT | WS );
        __dfa_description__
      end
    end

    
    private
    
    def initialize_dfas
      super rescue nil
      @dfa9 = DFA9.new( self, 9 )
      @dfa16 = DFA16.new( self, 16 )
      @dfa47 = DFA47.new( self, 47 ) do |s|
        case s
        when 0
          look_47_51 = @input.peek
          index_47_51 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( look_47_51 == 0x9 || look_47_51 == 0x20 )
            s = 51
          elsif ( look_47_51 == 0xa || look_47_51 == 0xd || look_47_51 == 0x23 ) and ( (  in_indent?  ) )
            s = 115
          else
            s = 114
          end
           
          @input.seek( index_47_51 )

        when 1
          look_47_114 = @input.peek
          index_47_114 = @input.index
          @input.rewind( @input.last_marker, false )
          s = -1
          if ( ( ( (  in_indent?  ) ) and ( (  @line_join_level > 0  ) ) ) or ( (  in_indent?  ) ) )
            s = 115
          elsif ( true )
            s = 155
          end
           
          @input.seek( index_47_114 )

        end
        
        if s < 0
          nva = ANTLR3::Error::NoViableAlternative.new( @dfa47.description, 47, s, input )
          @dfa47.error( nva )
          raise nva
        end
        
        s
      end

    end
  end # class Lexer < ANTLR3::Lexer

  at_exit { Lexer.main( ARGV ) } if __FILE__ == $0
end

