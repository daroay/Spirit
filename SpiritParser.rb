#!/usr/bin/env ruby
#
# Spirit.g
# --
# Generated using ANTLR version: 3.2.1-SNAPSHOT Jul 31, 2010 19:34:52
# Ruby runtime library version: 1.8.11
# Input grammar file: Spirit.g
# Generated at: 2012-03-11 19:13:06
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

# - - - - - - begin action @parser::header - - - - - -
# Spirit.g



  class Stack < Array
    def pop
      delete_at(self.size - 1)
    end
  end
  
  class String
    def temporal?
      self[0..1] == "&t"
    end
  end
  
  #Contiene nombre, tipo y direccion de una variable
  class VariableSymbol
    attr_accessor :name, :type, :address
    
    def initialize(n, t)
      @name = n
      @type = t
      @address = "dir#{n}" #Cambiar esto y poner direccion
    end
    
  end
  
  #Contiene nombre, hash de variables de instancia, hash de metodos y super clase
  class ClassSymbol
    attr_accessor :name, :instance_variables, :instance_methods, :parent_class
    
    def initialize(n, p = nil)
      @name = n #String
      @parent_class = p #ClassSymbol
      @instance_variables = Hash.new #VariableSymbol
      @instance_methods = Hash.new #MethodSymbol
    end
    
  end
  
  #Contiene tipo de retorno, lista de variables locales, lista de variables de parametro, 
  class MethodSymbol
    attr_accessor :name, :return_type, :local_variables, :parameter_variables, :container_class
    
    def initialize(n, r = nil, c = nil)
      @name = n #String
      @return_type = r #ClassSymbol
      @container_class = c #ClassSymbol
      @local_variables = Hash.new #VariableSymbol
      @parameter_variables = Hash.new #VariableSymbol
    end
    
  end


# - - - - - - end action @parser::header - - - - - - -


module Spirit
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?( :TokenData ) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens( :EXPONENT => 14, :T__29 => 29, :T__28 => 28, :T__27 => 27, 
                   :T__26 => 26, :T__25 => 25, :T__24 => 24, :T__23 => 23, 
                   :T__22 => 22, :T__21 => 21, :T__20 => 20, :OCTAL_ESC => 19, 
                   :CHAR => 10, :BINARYOPERATORS => 11, :FLOAT => 9, :EOF => -1, 
                   :ADDITIONSUBSTRACTIONOPERATORS => 7, :ESC_SEQ => 13, 
                   :IDENTIFIER => 4, :MULTIPLICATIONDIVISIONOPERATORS => 8, 
                   :T__50 => 50, :T__42 => 42, :INTEGER => 5, :T__43 => 43, 
                   :T__40 => 40, :T__41 => 41, :T__46 => 46, :T__47 => 47, 
                   :T__44 => 44, :T__45 => 45, :T__48 => 48, :T__49 => 49, 
                   :UNICODE_ESC => 18, :HEX_DIGIT => 17, :T__30 => 30, :T__31 => 31, 
                   :T__32 => 32, :WS => 15, :T__33 => 33, :T__34 => 34, 
                   :T__35 => 35, :T__36 => 36, :T__37 => 37, :T__38 => 38, 
                   :T__39 => 39, :ARRAYIDENTIFIER => 12, :STRING => 16, 
                   :COMPARITIONOPERATORS => 6 )

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "IDENTIFIER", "INTEGER", "COMPARITIONOPERATORS", "ADDITIONSUBSTRACTIONOPERATORS", 
                    "MULTIPLICATIONDIVISIONOPERATORS", "FLOAT", "CHAR", 
                    "BINARYOPERATORS", "ARRAYIDENTIFIER", "ESC_SEQ", "EXPONENT", 
                    "WS", "STRING", "HEX_DIGIT", "UNICODE_ESC", "OCTAL_ESC", 
                    "'class'", "'Main'", "'{'", "'}'", "'method'", "'void'", 
                    "'main'", "'('", "')'", "'extends'", "';'", "','", "'int'", 
                    "'char'", "'float'", "'boolean'", "'['", "']'", "'='", 
                    "'.'", "'this'", "'new'", "'return'", "'if'", "'elsif'", 
                    "'else'", "'while'", "'print'", "'readint'", "'readdouble'", 
                    "'readchar'" )
    
  end


  class Parser < ANTLR3::Parser
    @grammar_home = Spirit

    RULE_METHODS = [ :goal, :mainclass, :methodmain, :classdeclaration, 
                     :inherits, :vardeclaration, :methoddeclaration, :parameters, 
                     :primitivetype, :arraytype, :classtype, :type, :statement, 
                     :assignment, :lhsassignment, :rhsassignment, :returnstmt, 
                     :conditional, :loop, :print, :expression, :exp, :term, 
                     :factor, :arrayaccess, :read, :invocation, :arguments ].freeze


    include TokenData

    begin
      generated_using( "Spirit.g", "3.2.1-SNAPSHOT Jul 31, 2010 19:34:52", "1.8.11" )
    rescue NoMethodError => error
      # ignore
    end

    def initialize( input, options = {} )
      super( input, options )

      # - - - - - - begin action @parser::init - - - - - -
      # Spirit.g



        @classes = {} #ClassSymbol
        
        # Creamos clases ficticias de los primitivos
        @classes['int'] = ClassSymbol.new('int')
        @classes['char'] = ClassSymbol.new('char')
        @classes['float'] = ClassSymbol.new('float')
        @classes['boolean'] = ClassSymbol.new('boolean')
        @current_class = nil
        @current_method = nil

        #Creamos direcciones temporales
        @avail = ["&t0", "&t1", "&t2","&t3", "&t4","&t5", "&t6","&t7", "&t8","&t9"]  
        
        @stack_operators = Stack.new
        @stack_operands = Stack.new
        @stack_types = Stack.new
        @stack_jumps = Stack.new
        @fourfold = Stack.new
        @cont = 0
        
        
        def get_avail
          return @avail.delete_at(0)
        end
        
        def free_avail(a)
          if(a.temporal?) then
            @avail.insert(0,a)
          end
        end
        
        def fill(dir,cont)
          puts "Si que si!"
        end
        
        def generate(oper,a,b,c)
          @fourfold << [oper,a,b,c]
          @cont += 1    
        end
        
        def print_fourfold
      		@fourfold.size.times do |i|
      		  @fourfold[i].size.times do |j|
      		    $stdout.print "#{@fourfold[i][j]}, "
      		  end
      		  $stdout.print "\n"
      		end
        end

      # - - - - - - end action @parser::init - - - - - - -


    end
    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    # 
    # parser rule goal
    # 
    # (in Spirit.g)
    # 115:1: goal : ( classdeclaration )* mainclass ;
    # 
    def goal
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )

      begin
        # at line 116:5: ( classdeclaration )* mainclass
        # at line 116:5: ( classdeclaration )*
        while true # decision 1
          alt_1 = 2
          look_1_0 = @input.peek( 1 )

          if ( look_1_0 == T__20 )
            look_1_1 = @input.peek( 2 )

            if ( look_1_1 == IDENTIFIER )
              alt_1 = 1

            end

          end
          case alt_1
          when 1
            # at line 116:5: classdeclaration
            @state.following.push( TOKENS_FOLLOWING_classdeclaration_IN_goal_56 )
            classdeclaration
            @state.following.pop

          else
            break # out of loop for decision 1
          end
        end # loop for decision 1
        @state.following.push( TOKENS_FOLLOWING_mainclass_IN_goal_65 )
        mainclass
        @state.following.pop
        # --> action

        	      print_fourfold
        	    
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 1 )

      end
      
      return 
    end


    # 
    # parser rule mainclass
    # 
    # (in Spirit.g)
    # 122:1: mainclass : 'class' 'Main' '{' ( vardeclaration )* ( methoddeclaration )* methodmain '}' ;
    # 
    def mainclass
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )

      begin
        # at line 123:4: 'class' 'Main' '{' ( vardeclaration )* ( methoddeclaration )* methodmain '}'
        match( T__20, TOKENS_FOLLOWING_T__20_IN_mainclass_83 )
        match( T__21, TOKENS_FOLLOWING_T__21_IN_mainclass_85 )
        # --> action

        	    @classes['Main'] = ClassSymbol.new('Main')
        	    @current_class = @classes['Main']
        	  
        # <-- action
        match( T__22, TOKENS_FOLLOWING_T__22_IN_mainclass_97 )
        # at line 128:8: ( vardeclaration )*
        while true # decision 2
          alt_2 = 2
          look_2_0 = @input.peek( 1 )

          if ( look_2_0 == IDENTIFIER || look_2_0.between?( T__32, T__35 ) )
            alt_2 = 1

          end
          case alt_2
          when 1
            # at line 128:8: vardeclaration
            @state.following.push( TOKENS_FOLLOWING_vardeclaration_IN_mainclass_99 )
            vardeclaration
            @state.following.pop

          else
            break # out of loop for decision 2
          end
        end # loop for decision 2
        # at line 128:24: ( methoddeclaration )*
        while true # decision 3
          alt_3 = 2
          look_3_0 = @input.peek( 1 )

          if ( look_3_0 == T__24 )
            look_3_1 = @input.peek( 2 )

            if ( look_3_1 == T__25 )
              look_3_2 = @input.peek( 3 )

              if ( look_3_2 == IDENTIFIER )
                alt_3 = 1

              end
            elsif ( look_3_1 == IDENTIFIER || look_3_1.between?( T__32, T__35 ) )
              alt_3 = 1

            end

          end
          case alt_3
          when 1
            # at line 128:24: methoddeclaration
            @state.following.push( TOKENS_FOLLOWING_methoddeclaration_IN_mainclass_102 )
            methoddeclaration
            @state.following.pop

          else
            break # out of loop for decision 3
          end
        end # loop for decision 3
        @state.following.push( TOKENS_FOLLOWING_methodmain_IN_mainclass_105 )
        methodmain
        @state.following.pop
        match( T__23, TOKENS_FOLLOWING_T__23_IN_mainclass_107 )
        # --> action

        	    @current_class = nil
        	  
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 2 )

      end
      
      return 
    end


    # 
    # parser rule methodmain
    # 
    # (in Spirit.g)
    # 133:1: methodmain : 'method' 'void' 'main' '(' ')' '{' ( vardeclaration )* ( statement )* '}' ;
    # 
    def methodmain
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )

      begin
        # at line 134:4: 'method' 'void' 'main' '(' ')' '{' ( vardeclaration )* ( statement )* '}'
        match( T__24, TOKENS_FOLLOWING_T__24_IN_methodmain_122 )
        match( T__25, TOKENS_FOLLOWING_T__25_IN_methodmain_124 )
        match( T__26, TOKENS_FOLLOWING_T__26_IN_methodmain_126 )
        # --> action
         
        	    @current_class.instance_methods['main'] = MethodSymbol.new('main')
        	    @current_method = @current_class.instance_methods['main']
        	  
        # <-- action
        match( T__27, TOKENS_FOLLOWING_T__27_IN_methodmain_137 )
        match( T__28, TOKENS_FOLLOWING_T__28_IN_methodmain_139 )
        match( T__22, TOKENS_FOLLOWING_T__22_IN_methodmain_141 )
        # at line 139:16: ( vardeclaration )*
        while true # decision 4
          alt_4 = 2
          look_4_0 = @input.peek( 1 )

          if ( look_4_0 == IDENTIFIER )
            look_4_1 = @input.peek( 2 )

            if ( look_4_1 == IDENTIFIER )
              alt_4 = 1

            end
          elsif ( look_4_0.between?( T__32, T__35 ) )
            alt_4 = 1

          end
          case alt_4
          when 1
            # at line 139:16: vardeclaration
            @state.following.push( TOKENS_FOLLOWING_vardeclaration_IN_methodmain_143 )
            vardeclaration
            @state.following.pop

          else
            break # out of loop for decision 4
          end
        end # loop for decision 4
        # at line 139:32: ( statement )*
        while true # decision 5
          alt_5 = 2
          look_5_0 = @input.peek( 1 )

          if ( look_5_0 == IDENTIFIER || look_5_0 == T__30 || look_5_0 == T__40 || look_5_0.between?( T__42, T__43 ) || look_5_0.between?( T__46, T__47 ) )
            alt_5 = 1

          end
          case alt_5
          when 1
            # at line 139:32: statement
            @state.following.push( TOKENS_FOLLOWING_statement_IN_methodmain_146 )
            statement
            @state.following.pop

          else
            break # out of loop for decision 5
          end
        end # loop for decision 5
        match( T__23, TOKENS_FOLLOWING_T__23_IN_methodmain_149 )
        # --> action

        	    @current_method = nil
        	  
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 3 )

      end
      
      return 
    end


    # 
    # parser rule classdeclaration
    # 
    # (in Spirit.g)
    # 144:1: classdeclaration : 'class' IDENTIFIER ( inherits )? '{' ( vardeclaration )* ( methoddeclaration )* '}' ;
    # 
    def classdeclaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )

      begin
        # at line 145:5: 'class' IDENTIFIER ( inherits )? '{' ( vardeclaration )* ( methoddeclaration )* '}'
        match( T__20, TOKENS_FOLLOWING_T__20_IN_classdeclaration_166 )
        match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_classdeclaration_168 )
        # at line 145:24: ( inherits )?
        alt_6 = 2
        look_6_0 = @input.peek( 1 )

        if ( look_6_0 == T__29 )
          alt_6 = 1
        end
        case alt_6
        when 1
          # at line 145:24: inherits
          @state.following.push( TOKENS_FOLLOWING_inherits_IN_classdeclaration_170 )
          inherits
          @state.following.pop

        end
        match( T__22, TOKENS_FOLLOWING_T__22_IN_classdeclaration_174 )
        # at line 145:39: ( vardeclaration )*
        while true # decision 7
          alt_7 = 2
          look_7_0 = @input.peek( 1 )

          if ( look_7_0 == IDENTIFIER || look_7_0.between?( T__32, T__35 ) )
            alt_7 = 1

          end
          case alt_7
          when 1
            # at line 145:39: vardeclaration
            @state.following.push( TOKENS_FOLLOWING_vardeclaration_IN_classdeclaration_176 )
            vardeclaration
            @state.following.pop

          else
            break # out of loop for decision 7
          end
        end # loop for decision 7
        # at line 145:55: ( methoddeclaration )*
        while true # decision 8
          alt_8 = 2
          look_8_0 = @input.peek( 1 )

          if ( look_8_0 == T__24 )
            alt_8 = 1

          end
          case alt_8
          when 1
            # at line 145:55: methoddeclaration
            @state.following.push( TOKENS_FOLLOWING_methoddeclaration_IN_classdeclaration_179 )
            methoddeclaration
            @state.following.pop

          else
            break # out of loop for decision 8
          end
        end # loop for decision 8
        match( T__23, TOKENS_FOLLOWING_T__23_IN_classdeclaration_182 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 4 )

      end
      
      return 
    end


    # 
    # parser rule inherits
    # 
    # (in Spirit.g)
    # 147:1: inherits : 'extends' IDENTIFIER ;
    # 
    def inherits
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )

      begin
        # at line 148:4: 'extends' IDENTIFIER
        match( T__29, TOKENS_FOLLOWING_T__29_IN_inherits_192 )
        match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_inherits_194 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 5 )

      end
      
      return 
    end


    # 
    # parser rule vardeclaration
    # 
    # (in Spirit.g)
    # 150:1: vardeclaration : t= type IDENTIFIER ';' ;
    # 
    def vardeclaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )
      __IDENTIFIER1__ = nil
      t = nil

      begin
        # at line 151:4: t= type IDENTIFIER ';'
        @state.following.push( TOKENS_FOLLOWING_type_IN_vardeclaration_207 )
        t = type
        @state.following.pop
        __IDENTIFIER1__ = match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_vardeclaration_209 )
        # --> action

        	    if(not @current_method.nil?)
        	      @current_method.local_variables[__IDENTIFIER1__.text] = VariableSymbol.new(__IDENTIFIER1__.text, t)
        	    elsif(not @current_class.nil?)
        	      @current_class.instance_variables[__IDENTIFIER1__.text] = VariableSymbol.new(__IDENTIFIER1__.text, t)
        	    else
        	      raise "Cant declare variables outside any scope"
        	    end
        	  
        # <-- action
        match( T__30, TOKENS_FOLLOWING_T__30_IN_vardeclaration_219 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 6 )

      end
      
      return 
    end


    # 
    # parser rule methoddeclaration
    # 
    # (in Spirit.g)
    # 163:1: methoddeclaration : 'method' ( primitivetype | classtype | 'void' ) IDENTIFIER '(' ( parameters )? ')' '{' ( vardeclaration )* ( statement )* '}' ;
    # 
    def methoddeclaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )

      begin
        # at line 164:5: 'method' ( primitivetype | classtype | 'void' ) IDENTIFIER '(' ( parameters )? ')' '{' ( vardeclaration )* ( statement )* '}'
        match( T__24, TOKENS_FOLLOWING_T__24_IN_methoddeclaration_231 )
        # at line 164:14: ( primitivetype | classtype | 'void' )
        alt_9 = 3
        case look_9 = @input.peek( 1 )
        when T__32, T__33, T__34, T__35 then alt_9 = 1
        when IDENTIFIER then alt_9 = 2
        when T__25 then alt_9 = 3
        else
          raise NoViableAlternative( "", 9, 0 )
        end
        case alt_9
        when 1
          # at line 164:15: primitivetype
          @state.following.push( TOKENS_FOLLOWING_primitivetype_IN_methoddeclaration_234 )
          primitivetype
          @state.following.pop

        when 2
          # at line 164:31: classtype
          @state.following.push( TOKENS_FOLLOWING_classtype_IN_methoddeclaration_238 )
          classtype
          @state.following.pop

        when 3
          # at line 164:43: 'void'
          match( T__25, TOKENS_FOLLOWING_T__25_IN_methoddeclaration_242 )

        end
        match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_methoddeclaration_245 )
        match( T__27, TOKENS_FOLLOWING_T__27_IN_methoddeclaration_247 )
        # at line 164:66: ( parameters )?
        alt_10 = 2
        look_10_0 = @input.peek( 1 )

        if ( look_10_0 == IDENTIFIER || look_10_0.between?( T__32, T__35 ) )
          alt_10 = 1
        end
        case alt_10
        when 1
          # at line 164:66: parameters
          @state.following.push( TOKENS_FOLLOWING_parameters_IN_methoddeclaration_249 )
          parameters
          @state.following.pop

        end
        match( T__28, TOKENS_FOLLOWING_T__28_IN_methoddeclaration_252 )
        match( T__22, TOKENS_FOLLOWING_T__22_IN_methoddeclaration_254 )
        # at line 164:86: ( vardeclaration )*
        while true # decision 11
          alt_11 = 2
          look_11_0 = @input.peek( 1 )

          if ( look_11_0 == IDENTIFIER )
            look_11_1 = @input.peek( 2 )

            if ( look_11_1 == IDENTIFIER )
              alt_11 = 1

            end
          elsif ( look_11_0.between?( T__32, T__35 ) )
            alt_11 = 1

          end
          case alt_11
          when 1
            # at line 164:86: vardeclaration
            @state.following.push( TOKENS_FOLLOWING_vardeclaration_IN_methoddeclaration_256 )
            vardeclaration
            @state.following.pop

          else
            break # out of loop for decision 11
          end
        end # loop for decision 11
        # at line 164:102: ( statement )*
        while true # decision 12
          alt_12 = 2
          look_12_0 = @input.peek( 1 )

          if ( look_12_0 == IDENTIFIER || look_12_0 == T__30 || look_12_0 == T__40 || look_12_0.between?( T__42, T__43 ) || look_12_0.between?( T__46, T__47 ) )
            alt_12 = 1

          end
          case alt_12
          when 1
            # at line 164:102: statement
            @state.following.push( TOKENS_FOLLOWING_statement_IN_methoddeclaration_259 )
            statement
            @state.following.pop

          else
            break # out of loop for decision 12
          end
        end # loop for decision 12
        match( T__23, TOKENS_FOLLOWING_T__23_IN_methoddeclaration_262 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 7 )

      end
      
      return 
    end


    # 
    # parser rule parameters
    # 
    # (in Spirit.g)
    # 166:1: parameters : type IDENTIFIER ( ',' type IDENTIFIER )* ;
    # 
    def parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )

      begin
        # at line 167:4: type IDENTIFIER ( ',' type IDENTIFIER )*
        @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_272 )
        type
        @state.following.pop
        match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_parameters_274 )
        # at line 167:20: ( ',' type IDENTIFIER )*
        while true # decision 13
          alt_13 = 2
          look_13_0 = @input.peek( 1 )

          if ( look_13_0 == T__31 )
            alt_13 = 1

          end
          case alt_13
          when 1
            # at line 167:21: ',' type IDENTIFIER
            match( T__31, TOKENS_FOLLOWING_T__31_IN_parameters_277 )
            @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_279 )
            type
            @state.following.pop
            match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_parameters_281 )

          else
            break # out of loop for decision 13
          end
        end # loop for decision 13

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 8 )

      end
      
      return 
    end


    # 
    # parser rule primitivetype
    # 
    # (in Spirit.g)
    # 169:1: primitivetype returns [type_a] : t= ( 'int' | 'char' | 'float' | 'boolean' ) ;
    # 
    def primitivetype
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )
      type_a = nil
      t = nil

      begin
        # at line 171:2: t= ( 'int' | 'char' | 'float' | 'boolean' )
        t = @input.look
        if @input.peek( 1 ).between?( T__32, T__35 )
          @input.consume
          @state.error_recovery = false
        else
          mse = MismatchedSet( nil )
          raise mse
        end


        # --> action
        type_a = t.text
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 9 )

      end
      
      return type_a
    end


    # 
    # parser rule arraytype
    # 
    # (in Spirit.g)
    # 173:1: arraytype : primitivetype '[' INTEGER ']' ;
    # 
    def arraytype
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )

      begin
        # at line 174:4: primitivetype '[' INTEGER ']'
        @state.following.push( TOKENS_FOLLOWING_primitivetype_IN_arraytype_327 )
        primitivetype
        @state.following.pop
        match( T__36, TOKENS_FOLLOWING_T__36_IN_arraytype_328 )
        match( INTEGER, TOKENS_FOLLOWING_INTEGER_IN_arraytype_330 )
        match( T__37, TOKENS_FOLLOWING_T__37_IN_arraytype_332 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 10 )

      end
      
      return 
    end


    # 
    # parser rule classtype
    # 
    # (in Spirit.g)
    # 176:1: classtype : IDENTIFIER ;
    # 
    def classtype
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )

      begin
        # at line 177:4: IDENTIFIER
        match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_classtype_342 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 11 )

      end
      
      return 
    end


    # 
    # parser rule type
    # 
    # (in Spirit.g)
    # 179:1: type returns [type_a] : (t= primitivetype | arraytype | classtype ) ;
    # 
    def type
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )
      type_a = nil
      t = nil

      begin
        # at line 181:2: (t= primitivetype | arraytype | classtype )
        # at line 181:2: (t= primitivetype | arraytype | classtype )
        alt_14 = 3
        look_14_0 = @input.peek( 1 )

        if ( look_14_0.between?( T__32, T__35 ) )
          look_14_1 = @input.peek( 2 )

          if ( look_14_1 == IDENTIFIER )
            alt_14 = 1
          elsif ( look_14_1 == T__36 )
            alt_14 = 2
          else
            raise NoViableAlternative( "", 14, 1 )
          end
        elsif ( look_14_0 == IDENTIFIER )
          alt_14 = 3
        else
          raise NoViableAlternative( "", 14, 0 )
        end
        case alt_14
        when 1
          # at line 181:3: t= primitivetype
          @state.following.push( TOKENS_FOLLOWING_primitivetype_IN_type_363 )
          t = primitivetype
          @state.following.pop

        when 2
          # at line 181:23: arraytype
          @state.following.push( TOKENS_FOLLOWING_arraytype_IN_type_367 )
          arraytype
          @state.following.pop

        when 3
          # at line 181:35: classtype
          @state.following.push( TOKENS_FOLLOWING_classtype_IN_type_371 )
          classtype
          @state.following.pop

        end
        # --> action
        type_a = t
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 12 )

      end
      
      return type_a
    end


    # 
    # parser rule statement
    # 
    # (in Spirit.g)
    # 183:1: statement : ( assignment | conditional | invocation ';' | loop | print | returnstmt | ';' );
    # 
    def statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )

      begin
        # at line 184:2: ( assignment | conditional | invocation ';' | loop | print | returnstmt | ';' )
        alt_15 = 7
        alt_15 = @dfa15.predict( @input )
        case alt_15
        when 1
          # at line 184:4: assignment
          @state.following.push( TOKENS_FOLLOWING_assignment_IN_statement_383 )
          assignment
          @state.following.pop

        when 2
          # at line 184:18: conditional
          @state.following.push( TOKENS_FOLLOWING_conditional_IN_statement_388 )
          conditional
          @state.following.pop

        when 3
          # at line 184:32: invocation ';'
          @state.following.push( TOKENS_FOLLOWING_invocation_IN_statement_392 )
          invocation
          @state.following.pop
          match( T__30, TOKENS_FOLLOWING_T__30_IN_statement_394 )

        when 4
          # at line 184:49: loop
          @state.following.push( TOKENS_FOLLOWING_loop_IN_statement_398 )
          loop
          @state.following.pop

        when 5
          # at line 184:56: print
          @state.following.push( TOKENS_FOLLOWING_print_IN_statement_402 )
          print
          @state.following.pop

        when 6
          # at line 184:64: returnstmt
          @state.following.push( TOKENS_FOLLOWING_returnstmt_IN_statement_406 )
          returnstmt
          @state.following.pop

        when 7
          # at line 184:77: ';'
          match( T__30, TOKENS_FOLLOWING_T__30_IN_statement_410 )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 13 )

      end
      
      return 
    end


    # 
    # parser rule assignment
    # 
    # (in Spirit.g)
    # 186:1: assignment : lhsassignment '=' rhsassignment ';' ;
    # 
    def assignment
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )

      begin
        # at line 187:4: lhsassignment '=' rhsassignment ';'
        @state.following.push( TOKENS_FOLLOWING_lhsassignment_IN_assignment_421 )
        lhsassignment
        @state.following.pop
        match( T__38, TOKENS_FOLLOWING_T__38_IN_assignment_423 )
        @state.following.push( TOKENS_FOLLOWING_rhsassignment_IN_assignment_425 )
        rhsassignment
        @state.following.pop
        match( T__30, TOKENS_FOLLOWING_T__30_IN_assignment_427 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 14 )

      end
      
      return 
    end


    # 
    # parser rule lhsassignment
    # 
    # (in Spirit.g)
    # 189:1: lhsassignment : ( arrayaccess | IDENTIFIER '.' IDENTIFIER | 'this' '.' IDENTIFIER | IDENTIFIER );
    # 
    def lhsassignment
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )
      __IDENTIFIER2__ = nil

      begin
        # at line 190:2: ( arrayaccess | IDENTIFIER '.' IDENTIFIER | 'this' '.' IDENTIFIER | IDENTIFIER )
        alt_16 = 4
        look_16_0 = @input.peek( 1 )

        if ( look_16_0 == IDENTIFIER )
          case look_16 = @input.peek( 2 )
          when T__36 then alt_16 = 1
          when T__39 then alt_16 = 2
          when T__38 then alt_16 = 4
          else
            raise NoViableAlternative( "", 16, 1 )
          end
        elsif ( look_16_0 == T__40 )
          alt_16 = 3
        else
          raise NoViableAlternative( "", 16, 0 )
        end
        case alt_16
        when 1
          # at line 190:5: arrayaccess
          @state.following.push( TOKENS_FOLLOWING_arrayaccess_IN_lhsassignment_438 )
          arrayaccess
          @state.following.pop

        when 2
          # at line 191:5: IDENTIFIER '.' IDENTIFIER
          match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_lhsassignment_444 )
          match( T__39, TOKENS_FOLLOWING_T__39_IN_lhsassignment_446 )
          match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_lhsassignment_448 )

        when 3
          # at line 192:5: 'this' '.' IDENTIFIER
          match( T__40, TOKENS_FOLLOWING_T__40_IN_lhsassignment_455 )
          match( T__39, TOKENS_FOLLOWING_T__39_IN_lhsassignment_457 )
          match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_lhsassignment_459 )

        when 4
          # at line 193:5: IDENTIFIER
          __IDENTIFIER2__ = match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_lhsassignment_467 )
          # --> action

          	      # Verificar que exista en algun scope y meterlo en pila de operandos
          			  if(not @current_method.nil?)
          			    if(not @current_method.local_variables[__IDENTIFIER2__.text].nil?)
          			      @stack_operands.push(@current_method.local_variables[__IDENTIFIER2__.text].address)
          			    elsif( not @current_class.instance_variables[__IDENTIFIER2__.text].nil?)
          			      @stack_operands.push(@current_class.instance_variables[__IDENTIFIER2__.text].address)
          			    else
          			      raise "Variable #{__IDENTIFIER2__.text} not declared"
          			    end
          			  elsif(not @current_class.nil?)
          			  	if( not @current_class.instance_variables[__IDENTIFIER2__.text].nil?)
          			  	  @stack_operands.push(@current_class.instance_variables[__IDENTIFIER2__.text].address)
          			    else
          			      raise "Variable #{__IDENTIFIER2__.text} not declared"
          			    end
          			  end
          	    
          # <-- action

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 15 )

      end
      
      return 
    end


    # 
    # parser rule rhsassignment
    # 
    # (in Spirit.g)
    # 214:1: rhsassignment : ( expression | 'new' IDENTIFIER '(' ')' );
    # 
    def rhsassignment
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )

      begin
        # at line 215:2: ( expression | 'new' IDENTIFIER '(' ')' )
        alt_17 = 2
        look_17_0 = @input.peek( 1 )

        if ( look_17_0.between?( IDENTIFIER, INTEGER ) || look_17_0.between?( FLOAT, CHAR ) || look_17_0 == T__27 || look_17_0 == T__40 || look_17_0.between?( T__48, T__50 ) )
          alt_17 = 1
        elsif ( look_17_0 == T__41 )
          alt_17 = 2
        else
          raise NoViableAlternative( "", 17, 0 )
        end
        case alt_17
        when 1
          # at line 215:4: expression
          @state.following.push( TOKENS_FOLLOWING_expression_IN_rhsassignment_489 )
          expression
          @state.following.pop
          # --> action

                rh = @stack_operands.pop
                lh = @stack_operands.pop
                generate('=', rh, nil ,lh )
                free_avail(rh)
              
          # <-- action

        when 2
          # at line 222:6: 'new' IDENTIFIER '(' ')'
          match( T__41, TOKENS_FOLLOWING_T__41_IN_rhsassignment_503 )
          match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_rhsassignment_505 )
          match( T__27, TOKENS_FOLLOWING_T__27_IN_rhsassignment_507 )
          match( T__28, TOKENS_FOLLOWING_T__28_IN_rhsassignment_509 )

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 16 )

      end
      
      return 
    end


    # 
    # parser rule returnstmt
    # 
    # (in Spirit.g)
    # 225:1: returnstmt : 'return' ( expression )? ';' ;
    # 
    def returnstmt
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )

      begin
        # at line 226:4: 'return' ( expression )? ';'
        match( T__42, TOKENS_FOLLOWING_T__42_IN_returnstmt_523 )
        # at line 226:13: ( expression )?
        alt_18 = 2
        look_18_0 = @input.peek( 1 )

        if ( look_18_0.between?( IDENTIFIER, INTEGER ) || look_18_0.between?( FLOAT, CHAR ) || look_18_0 == T__27 || look_18_0 == T__40 || look_18_0.between?( T__48, T__50 ) )
          alt_18 = 1
        end
        case alt_18
        when 1
          # at line 226:13: expression
          @state.following.push( TOKENS_FOLLOWING_expression_IN_returnstmt_525 )
          expression
          @state.following.pop

        end
        match( T__30, TOKENS_FOLLOWING_T__30_IN_returnstmt_528 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 17 )

      end
      
      return 
    end


    # 
    # parser rule conditional
    # 
    # (in Spirit.g)
    # 228:1: conditional : 'if' '(' expression ')' '{' ( statement )* '}' ( 'elsif' '(' expression ')' '{' ( statement )* '}' )* ( 'else' '{' ( statement )* '}' )? ;
    # 
    def conditional
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )

      begin
        # at line 229:5: 'if' '(' expression ')' '{' ( statement )* '}' ( 'elsif' '(' expression ')' '{' ( statement )* '}' )* ( 'else' '{' ( statement )* '}' )?
        match( T__43, TOKENS_FOLLOWING_T__43_IN_conditional_540 )
        match( T__27, TOKENS_FOLLOWING_T__27_IN_conditional_542 )
        @state.following.push( TOKENS_FOLLOWING_expression_IN_conditional_544 )
        expression
        @state.following.pop
        match( T__28, TOKENS_FOLLOWING_T__28_IN_conditional_546 )
        match( T__22, TOKENS_FOLLOWING_T__22_IN_conditional_548 )
        # at line 229:33: ( statement )*
        while true # decision 19
          alt_19 = 2
          look_19_0 = @input.peek( 1 )

          if ( look_19_0 == IDENTIFIER || look_19_0 == T__30 || look_19_0 == T__40 || look_19_0.between?( T__42, T__43 ) || look_19_0.between?( T__46, T__47 ) )
            alt_19 = 1

          end
          case alt_19
          when 1
            # at line 229:33: statement
            @state.following.push( TOKENS_FOLLOWING_statement_IN_conditional_550 )
            statement
            @state.following.pop

          else
            break # out of loop for decision 19
          end
        end # loop for decision 19
        match( T__23, TOKENS_FOLLOWING_T__23_IN_conditional_553 )
        # at line 229:48: ( 'elsif' '(' expression ')' '{' ( statement )* '}' )*
        while true # decision 21
          alt_21 = 2
          look_21_0 = @input.peek( 1 )

          if ( look_21_0 == T__44 )
            alt_21 = 1

          end
          case alt_21
          when 1
            # at line 229:49: 'elsif' '(' expression ')' '{' ( statement )* '}'
            match( T__44, TOKENS_FOLLOWING_T__44_IN_conditional_556 )
            match( T__27, TOKENS_FOLLOWING_T__27_IN_conditional_558 )
            @state.following.push( TOKENS_FOLLOWING_expression_IN_conditional_560 )
            expression
            @state.following.pop
            match( T__28, TOKENS_FOLLOWING_T__28_IN_conditional_562 )
            match( T__22, TOKENS_FOLLOWING_T__22_IN_conditional_564 )
            # at line 229:80: ( statement )*
            while true # decision 20
              alt_20 = 2
              look_20_0 = @input.peek( 1 )

              if ( look_20_0 == IDENTIFIER || look_20_0 == T__30 || look_20_0 == T__40 || look_20_0.between?( T__42, T__43 ) || look_20_0.between?( T__46, T__47 ) )
                alt_20 = 1

              end
              case alt_20
              when 1
                # at line 229:80: statement
                @state.following.push( TOKENS_FOLLOWING_statement_IN_conditional_566 )
                statement
                @state.following.pop

              else
                break # out of loop for decision 20
              end
            end # loop for decision 20
            match( T__23, TOKENS_FOLLOWING_T__23_IN_conditional_569 )

          else
            break # out of loop for decision 21
          end
        end # loop for decision 21
        # at line 229:98: ( 'else' '{' ( statement )* '}' )?
        alt_23 = 2
        look_23_0 = @input.peek( 1 )

        if ( look_23_0 == T__45 )
          alt_23 = 1
        end
        case alt_23
        when 1
          # at line 229:99: 'else' '{' ( statement )* '}'
          match( T__45, TOKENS_FOLLOWING_T__45_IN_conditional_575 )
          match( T__22, TOKENS_FOLLOWING_T__22_IN_conditional_577 )
          # at line 229:110: ( statement )*
          while true # decision 22
            alt_22 = 2
            look_22_0 = @input.peek( 1 )

            if ( look_22_0 == IDENTIFIER || look_22_0 == T__30 || look_22_0 == T__40 || look_22_0.between?( T__42, T__43 ) || look_22_0.between?( T__46, T__47 ) )
              alt_22 = 1

            end
            case alt_22
            when 1
              # at line 229:110: statement
              @state.following.push( TOKENS_FOLLOWING_statement_IN_conditional_579 )
              statement
              @state.following.pop

            else
              break # out of loop for decision 22
            end
          end # loop for decision 22
          match( T__23, TOKENS_FOLLOWING_T__23_IN_conditional_582 )

        end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 18 )

      end
      
      return 
    end


    # 
    # parser rule loop
    # 
    # (in Spirit.g)
    # 231:1: loop : 'while' '(' expression ')' '{' ( statement )* '}' ;
    # 
    def loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )

      begin
        # at line 232:5: 'while' '(' expression ')' '{' ( statement )* '}'
        match( T__46, TOKENS_FOLLOWING_T__46_IN_loop_597 )
        match( T__27, TOKENS_FOLLOWING_T__27_IN_loop_599 )
        @state.following.push( TOKENS_FOLLOWING_expression_IN_loop_601 )
        expression
        @state.following.pop
        match( T__28, TOKENS_FOLLOWING_T__28_IN_loop_603 )
        match( T__22, TOKENS_FOLLOWING_T__22_IN_loop_605 )
        # at line 232:36: ( statement )*
        while true # decision 24
          alt_24 = 2
          look_24_0 = @input.peek( 1 )

          if ( look_24_0 == IDENTIFIER || look_24_0 == T__30 || look_24_0 == T__40 || look_24_0.between?( T__42, T__43 ) || look_24_0.between?( T__46, T__47 ) )
            alt_24 = 1

          end
          case alt_24
          when 1
            # at line 232:36: statement
            @state.following.push( TOKENS_FOLLOWING_statement_IN_loop_607 )
            statement
            @state.following.pop

          else
            break # out of loop for decision 24
          end
        end # loop for decision 24
        match( T__23, TOKENS_FOLLOWING_T__23_IN_loop_610 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 19 )

      end
      
      return 
    end


    # 
    # parser rule print
    # 
    # (in Spirit.g)
    # 234:1: print : 'print' '(' expression ')' ';' ;
    # 
    def print
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )

      begin
        # at line 235:5: 'print' '(' expression ')' ';'
        match( T__47, TOKENS_FOLLOWING_T__47_IN_print_622 )
        match( T__27, TOKENS_FOLLOWING_T__27_IN_print_624 )
        @state.following.push( TOKENS_FOLLOWING_expression_IN_print_626 )
        expression
        @state.following.pop
        match( T__28, TOKENS_FOLLOWING_T__28_IN_print_628 )
        match( T__30, TOKENS_FOLLOWING_T__30_IN_print_630 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 20 )

      end
      
      return 
    end


    # 
    # parser rule expression
    # 
    # (in Spirit.g)
    # 237:1: expression : exp ( COMPARITIONOPERATORS exp )? ;
    # 
    def expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )

      begin
        # at line 238:5: exp ( COMPARITIONOPERATORS exp )?
        @state.following.push( TOKENS_FOLLOWING_exp_IN_expression_641 )
        exp
        @state.following.pop
        # at line 238:9: ( COMPARITIONOPERATORS exp )?
        alt_25 = 2
        look_25_0 = @input.peek( 1 )

        if ( look_25_0 == COMPARITIONOPERATORS )
          alt_25 = 1
        end
        case alt_25
        when 1
          # at line 238:10: COMPARITIONOPERATORS exp
          match( COMPARITIONOPERATORS, TOKENS_FOLLOWING_COMPARITIONOPERATORS_IN_expression_644 )
          @state.following.push( TOKENS_FOLLOWING_exp_IN_expression_646 )
          exp
          @state.following.pop

        end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 21 )

      end
      
      return 
    end


    # 
    # parser rule exp
    # 
    # (in Spirit.g)
    # 240:1: exp : term ( ADDITIONSUBSTRACTIONOPERATORS term )* ;
    # 
    def exp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )
      __ADDITIONSUBSTRACTIONOPERATORS3__ = nil

      begin
        # at line 241:5: term ( ADDITIONSUBSTRACTIONOPERATORS term )*
        @state.following.push( TOKENS_FOLLOWING_term_IN_exp_659 )
        term
        @state.following.pop
        # at line 241:10: ( ADDITIONSUBSTRACTIONOPERATORS term )*
        while true # decision 26
          alt_26 = 2
          look_26_0 = @input.peek( 1 )

          if ( look_26_0 == ADDITIONSUBSTRACTIONOPERATORS )
            alt_26 = 1

          end
          case alt_26
          when 1
            # at line 241:11: ADDITIONSUBSTRACTIONOPERATORS term
            __ADDITIONSUBSTRACTIONOPERATORS3__ = match( ADDITIONSUBSTRACTIONOPERATORS, TOKENS_FOLLOWING_ADDITIONSUBSTRACTIONOPERATORS_IN_exp_662 )
            # --> action
             #Regla 2 GC
                         @stack_operators.push(__ADDITIONSUBSTRACTIONOPERATORS3__.text)
                       
            # <-- action
            @state.following.push( TOKENS_FOLLOWING_term_IN_exp_689 )
            term
            @state.following.pop
            # --> action
             #Regla 4 GC
                         if(@stack_operators.last == '+' or @stack_operators.last == '-') then
                           operator = @stack_operators.pop
                           operand_b = @stack_operands.pop
                           operand_a = @stack_operands.pop
                           result = get_avail
                           generate(operator, operand_a, operand_b, result)
                           free_avail(operand_a)
                           free_avail(operand_b)
                           @stack_operands.push(result)
                         end
                       
            # <-- action

          else
            break # out of loop for decision 26
          end
        end # loop for decision 26

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 22 )

      end
      
      return 
    end


    # 
    # parser rule term
    # 
    # (in Spirit.g)
    # 260:1: term : factor ( MULTIPLICATIONDIVISIONOPERATORS factor )* ;
    # 
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )
      __MULTIPLICATIONDIVISIONOPERATORS4__ = nil

      begin
        # at line 261:5: factor ( MULTIPLICATIONDIVISIONOPERATORS factor )*
        @state.following.push( TOKENS_FOLLOWING_factor_IN_term_727 )
        factor
        @state.following.pop
        # at line 261:12: ( MULTIPLICATIONDIVISIONOPERATORS factor )*
        while true # decision 27
          alt_27 = 2
          look_27_0 = @input.peek( 1 )

          if ( look_27_0 == MULTIPLICATIONDIVISIONOPERATORS )
            alt_27 = 1

          end
          case alt_27
          when 1
            # at line 261:13: MULTIPLICATIONDIVISIONOPERATORS factor
            __MULTIPLICATIONDIVISIONOPERATORS4__ = match( MULTIPLICATIONDIVISIONOPERATORS, TOKENS_FOLLOWING_MULTIPLICATIONDIVISIONOPERATORS_IN_term_730 )
            # --> action
             #Regla 3 GC
            		           @stack_operators.push(__MULTIPLICATIONDIVISIONOPERATORS4__.text)
            		         
            # <-- action
            @state.following.push( TOKENS_FOLLOWING_factor_IN_term_757 )
            factor
            @state.following.pop
            # --> action
             #Regla 5 GC
            		           if(@stack_operators.last == '*' or @stack_operators.last == '/') then
            		             operator = @stack_operators.pop
            		             operand_b = @stack_operands.pop
            		             operand_a = @stack_operands.pop
            		             result = get_avail
            		             generate(operator, operand_a, operand_b, result)
            		             free_avail(operand_a)
            		             free_avail(operand_b)
            		             @stack_operands.push(result)
            		           end
            		         
            # <-- action

          else
            break # out of loop for decision 27
          end
        end # loop for decision 27

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 23 )

      end
      
      return 
    end


    # 
    # parser rule factor
    # 
    # (in Spirit.g)
    # 280:1: factor : ( IDENTIFIER '.' IDENTIFIER | 'this' '.' IDENTIFIER | IDENTIFIER | INTEGER | FLOAT | CHAR | read | invocation | arrayaccess | '(' expression ')' );
    # 
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )
      __IDENTIFIER5__ = nil
      __INTEGER6__ = nil

      begin
        # at line 281:2: ( IDENTIFIER '.' IDENTIFIER | 'this' '.' IDENTIFIER | IDENTIFIER | INTEGER | FLOAT | CHAR | read | invocation | arrayaccess | '(' expression ')' )
        alt_28 = 10
        alt_28 = @dfa28.predict( @input )
        case alt_28
        when 1
          # at line 282:3: IDENTIFIER '.' IDENTIFIER
          match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_factor_797 )
          match( T__39, TOKENS_FOLLOWING_T__39_IN_factor_799 )
          match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_factor_801 )

        when 2
          # at line 283:5: 'this' '.' IDENTIFIER
          match( T__40, TOKENS_FOLLOWING_T__40_IN_factor_808 )
          match( T__39, TOKENS_FOLLOWING_T__39_IN_factor_810 )
          match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_factor_812 )

        when 3
          # at line 284:5: IDENTIFIER
          __IDENTIFIER5__ = match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_factor_820 )
          # --> action
           #Regla 1 GC
          			  # Verificar que exista en algun scope y meterlo en pila de operandos
          			  if(not @current_method.nil?)
          			    if(not @current_method.local_variables[__IDENTIFIER5__.text].nil?)
          			      @stack_operands.push(@current_method.local_variables[__IDENTIFIER5__.text].address)
          			    elsif( not @current_class.instance_variables[__IDENTIFIER5__.text].nil?)
          			      @stack_operands.push(@current_class.instance_variables[__IDENTIFIER5__.text].address)
          			    else
          			      raise "Variable #{__IDENTIFIER5__.text} not declared"
          			    end
          			  elsif(not @current_class.nil?)
          			  	if( not @current_class.instance_variables[__IDENTIFIER5__.text].nil?)
          			  	  @stack_operands.push(@current_class.instance_variables[__IDENTIFIER5__.text].address)
          			    else
          			      raise "Variable #{__IDENTIFIER5__.text} not declared"
          			    end
          			  end 
          			
          # <-- action

        when 4
          # at line 303:5: INTEGER
          __INTEGER6__ = match( INTEGER, TOKENS_FOLLOWING_INTEGER_IN_factor_831 )
          # --> action
           #Regla 1 GC
          				@stack_operands.push(__INTEGER6__.text) 
          		  
          # <-- action

        when 5
          # at line 307:5: FLOAT
          match( FLOAT, TOKENS_FOLLOWING_FLOAT_IN_factor_844 )

        when 6
          # at line 308:5: CHAR
          match( CHAR, TOKENS_FOLLOWING_CHAR_IN_factor_850 )

        when 7
          # at line 309:5: read
          @state.following.push( TOKENS_FOLLOWING_read_IN_factor_856 )
          read
          @state.following.pop

        when 8
          # at line 310:5: invocation
          @state.following.push( TOKENS_FOLLOWING_invocation_IN_factor_862 )
          invocation
          @state.following.pop

        when 9
          # at line 311:5: arrayaccess
          @state.following.push( TOKENS_FOLLOWING_arrayaccess_IN_factor_868 )
          arrayaccess
          @state.following.pop

        when 10
          # at line 312:5: '(' expression ')'
          match( T__27, TOKENS_FOLLOWING_T__27_IN_factor_877 )
          # --> action
           #Regla 6 GC
          		    @stack_operators.push('(')
          		  
          # <-- action
          @state.following.push( TOKENS_FOLLOWING_expression_IN_factor_889 )
          expression
          @state.following.pop
          match( T__28, TOKENS_FOLLOWING_T__28_IN_factor_896 )
          # --> action
           #Regla 7 GC
          		    @stack_operators.pop
          		  
          # <-- action

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 24 )

      end
      
      return 
    end


    # 
    # parser rule arrayaccess
    # 
    # (in Spirit.g)
    # 323:1: arrayaccess : IDENTIFIER '[' expression ']' ;
    # 
    def arrayaccess
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )

      begin
        # at line 324:4: IDENTIFIER '[' expression ']'
        match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_arrayaccess_913 )
        match( T__36, TOKENS_FOLLOWING_T__36_IN_arrayaccess_914 )
        @state.following.push( TOKENS_FOLLOWING_expression_IN_arrayaccess_916 )
        expression
        @state.following.pop
        match( T__37, TOKENS_FOLLOWING_T__37_IN_arrayaccess_918 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 25 )

      end
      
      return 
    end


    # 
    # parser rule read
    # 
    # (in Spirit.g)
    # 326:1: read : ( 'readint' | 'readdouble' | 'readchar' ) '(' ')' ;
    # 
    def read
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )

      begin
        # at line 326:8: ( 'readint' | 'readdouble' | 'readchar' ) '(' ')'
        if @input.peek( 1 ).between?( T__48, T__50 )
          @input.consume
          @state.error_recovery = false
        else
          mse = MismatchedSet( nil )
          raise mse
        end


        match( T__27, TOKENS_FOLLOWING_T__27_IN_read_939 )
        match( T__28, TOKENS_FOLLOWING_T__28_IN_read_941 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 26 )

      end
      
      return 
    end


    # 
    # parser rule invocation
    # 
    # (in Spirit.g)
    # 328:1: invocation : ( IDENTIFIER | 'this' ) '.' IDENTIFIER '(' ( arguments )? ')' ;
    # 
    def invocation
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )

      begin
        # at line 329:5: ( IDENTIFIER | 'this' ) '.' IDENTIFIER '(' ( arguments )? ')'
        if @input.peek(1) == IDENTIFIER || @input.peek(1) == T__40
          @input.consume
          @state.error_recovery = false
        else
          mse = MismatchedSet( nil )
          raise mse
        end


        match( T__39, TOKENS_FOLLOWING_T__39_IN_invocation_959 )
        match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_invocation_961 )
        match( T__27, TOKENS_FOLLOWING_T__27_IN_invocation_963 )
        # at line 329:46: ( arguments )?
        alt_29 = 2
        look_29_0 = @input.peek( 1 )

        if ( look_29_0.between?( IDENTIFIER, INTEGER ) || look_29_0.between?( FLOAT, CHAR ) || look_29_0 == T__27 || look_29_0 == T__40 || look_29_0.between?( T__48, T__50 ) )
          alt_29 = 1
        end
        case alt_29
        when 1
          # at line 329:46: arguments
          @state.following.push( TOKENS_FOLLOWING_arguments_IN_invocation_965 )
          arguments
          @state.following.pop

        end
        match( T__28, TOKENS_FOLLOWING_T__28_IN_invocation_968 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 27 )

      end
      
      return 
    end


    # 
    # parser rule arguments
    # 
    # (in Spirit.g)
    # 331:1: arguments : expression ( ',' expression )* ;
    # 
    def arguments
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )

      begin
        # at line 332:4: expression ( ',' expression )*
        @state.following.push( TOKENS_FOLLOWING_expression_IN_arguments_978 )
        expression
        @state.following.pop
        # at line 332:15: ( ',' expression )*
        while true # decision 30
          alt_30 = 2
          look_30_0 = @input.peek( 1 )

          if ( look_30_0 == T__31 )
            alt_30 = 1

          end
          case alt_30
          when 1
            # at line 332:16: ',' expression
            match( T__31, TOKENS_FOLLOWING_T__31_IN_arguments_981 )
            @state.following.push( TOKENS_FOLLOWING_expression_IN_arguments_983 )
            expression
            @state.following.pop

          else
            break # out of loop for decision 30
          end
        end # loop for decision 30

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 28 )

      end
      
      return 
    end



    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA15 < ANTLR3::DFA
      EOT = unpack( 14, -1 )
      EOF = unpack( 14, -1 )
      MIN = unpack( 1, 4, 1, 36, 1, 39, 6, -1, 2, 4, 2, 27, 1, -1 )
      MAX = unpack( 1, 47, 2, 39, 6, -1, 2, 4, 2, 38, 1, -1 )
      ACCEPT = unpack( 3, -1, 1, 2, 1, 4, 1, 5, 1, 6, 1, 7, 1, 1, 4, -1, 
                       1, 3 )
      SPECIAL = unpack( 14, -1 )
      TRANSITION = [
        unpack( 1, 1, 25, -1, 1, 7, 9, -1, 1, 2, 1, -1, 1, 6, 1, 3, 2, -1, 
                1, 4, 1, 5 ),
        unpack( 1, 8, 1, -1, 1, 8, 1, 9 ),
        unpack( 1, 10 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 11 ),
        unpack( 1, 12 ),
        unpack( 1, 13, 10, -1, 1, 8 ),
        unpack( 1, 13, 10, -1, 1, 8 ),
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
          183:1: statement : ( assignment | conditional | invocation ';' | loop | print | returnstmt | ';' );
        __dfa_description__
      end
    end
    class DFA28 < ANTLR3::DFA
      EOT = unpack( 17, -1 )
      EOF = unpack( 17, -1 )
      MIN = unpack( 1, 4, 1, 6, 1, 39, 5, -1, 1, 4, 2, -1, 1, 4, 2, 6, 3, 
                    -1 )
      MAX = unpack( 1, 50, 2, 39, 5, -1, 1, 4, 2, -1, 1, 4, 2, 37, 3, -1 )
      ACCEPT = unpack( 3, -1, 1, 4, 1, 5, 1, 6, 1, 7, 1, 10, 1, -1, 1, 9, 
                       1, 3, 3, -1, 1, 8, 1, 1, 1, 2 )
      SPECIAL = unpack( 17, -1 )
      TRANSITION = [
        unpack( 1, 1, 1, 3, 3, -1, 1, 4, 1, 5, 16, -1, 1, 7, 12, -1, 1, 
                2, 7, -1, 3, 6 ),
        unpack( 3, 10, 19, -1, 1, 10, 1, -1, 2, 10, 4, -1, 1, 9, 1, 10, 
                 1, -1, 1, 8 ),
        unpack( 1, 11 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 12 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 13 ),
        unpack( 3, 15, 18, -1, 1, 14, 1, 15, 1, -1, 2, 15, 5, -1, 1, 15 ),
        unpack( 3, 16, 18, -1, 1, 14, 1, 16, 1, -1, 2, 16, 5, -1, 1, 16 ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 28
      

      def description
        <<-'__dfa_description__'.strip!
          280:1: factor : ( IDENTIFIER '.' IDENTIFIER | 'this' '.' IDENTIFIER | IDENTIFIER | INTEGER | FLOAT | CHAR | read | invocation | arrayaccess | '(' expression ')' );
        __dfa_description__
      end
    end


    private

    def initialize_dfas
      super rescue nil
      @dfa15 = DFA15.new( self, 15 )
      @dfa28 = DFA28.new( self, 28 )

    end
    TOKENS_FOLLOWING_classdeclaration_IN_goal_56 = Set[ 20 ]
    TOKENS_FOLLOWING_mainclass_IN_goal_65 = Set[ 1 ]
    TOKENS_FOLLOWING_T__20_IN_mainclass_83 = Set[ 21 ]
    TOKENS_FOLLOWING_T__21_IN_mainclass_85 = Set[ 22 ]
    TOKENS_FOLLOWING_T__22_IN_mainclass_97 = Set[ 4, 24, 32, 33, 34, 35 ]
    TOKENS_FOLLOWING_vardeclaration_IN_mainclass_99 = Set[ 4, 24, 32, 33, 34, 35 ]
    TOKENS_FOLLOWING_methoddeclaration_IN_mainclass_102 = Set[ 4, 24, 32, 33, 34, 35 ]
    TOKENS_FOLLOWING_methodmain_IN_mainclass_105 = Set[ 23 ]
    TOKENS_FOLLOWING_T__23_IN_mainclass_107 = Set[ 1 ]
    TOKENS_FOLLOWING_T__24_IN_methodmain_122 = Set[ 25 ]
    TOKENS_FOLLOWING_T__25_IN_methodmain_124 = Set[ 26 ]
    TOKENS_FOLLOWING_T__26_IN_methodmain_126 = Set[ 27 ]
    TOKENS_FOLLOWING_T__27_IN_methodmain_137 = Set[ 28 ]
    TOKENS_FOLLOWING_T__28_IN_methodmain_139 = Set[ 22 ]
    TOKENS_FOLLOWING_T__22_IN_methodmain_141 = Set[ 4, 23, 30, 32, 33, 34, 35, 40, 42, 43, 46, 47 ]
    TOKENS_FOLLOWING_vardeclaration_IN_methodmain_143 = Set[ 4, 23, 30, 32, 33, 34, 35, 40, 42, 43, 46, 47 ]
    TOKENS_FOLLOWING_statement_IN_methodmain_146 = Set[ 4, 23, 30, 40, 42, 43, 46, 47 ]
    TOKENS_FOLLOWING_T__23_IN_methodmain_149 = Set[ 1 ]
    TOKENS_FOLLOWING_T__20_IN_classdeclaration_166 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_classdeclaration_168 = Set[ 22, 29 ]
    TOKENS_FOLLOWING_inherits_IN_classdeclaration_170 = Set[ 22 ]
    TOKENS_FOLLOWING_T__22_IN_classdeclaration_174 = Set[ 4, 23, 24, 32, 33, 34, 35 ]
    TOKENS_FOLLOWING_vardeclaration_IN_classdeclaration_176 = Set[ 4, 23, 24, 32, 33, 34, 35 ]
    TOKENS_FOLLOWING_methoddeclaration_IN_classdeclaration_179 = Set[ 23, 24 ]
    TOKENS_FOLLOWING_T__23_IN_classdeclaration_182 = Set[ 1 ]
    TOKENS_FOLLOWING_T__29_IN_inherits_192 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_inherits_194 = Set[ 1 ]
    TOKENS_FOLLOWING_type_IN_vardeclaration_207 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_vardeclaration_209 = Set[ 30 ]
    TOKENS_FOLLOWING_T__30_IN_vardeclaration_219 = Set[ 1 ]
    TOKENS_FOLLOWING_T__24_IN_methoddeclaration_231 = Set[ 4, 25, 32, 33, 34, 35 ]
    TOKENS_FOLLOWING_primitivetype_IN_methoddeclaration_234 = Set[ 4 ]
    TOKENS_FOLLOWING_classtype_IN_methoddeclaration_238 = Set[ 4 ]
    TOKENS_FOLLOWING_T__25_IN_methoddeclaration_242 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_methoddeclaration_245 = Set[ 27 ]
    TOKENS_FOLLOWING_T__27_IN_methoddeclaration_247 = Set[ 4, 28, 32, 33, 34, 35 ]
    TOKENS_FOLLOWING_parameters_IN_methoddeclaration_249 = Set[ 28 ]
    TOKENS_FOLLOWING_T__28_IN_methoddeclaration_252 = Set[ 22 ]
    TOKENS_FOLLOWING_T__22_IN_methoddeclaration_254 = Set[ 4, 23, 30, 32, 33, 34, 35, 40, 42, 43, 46, 47 ]
    TOKENS_FOLLOWING_vardeclaration_IN_methoddeclaration_256 = Set[ 4, 23, 30, 32, 33, 34, 35, 40, 42, 43, 46, 47 ]
    TOKENS_FOLLOWING_statement_IN_methoddeclaration_259 = Set[ 4, 23, 30, 40, 42, 43, 46, 47 ]
    TOKENS_FOLLOWING_T__23_IN_methoddeclaration_262 = Set[ 1 ]
    TOKENS_FOLLOWING_type_IN_parameters_272 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_parameters_274 = Set[ 1, 31 ]
    TOKENS_FOLLOWING_T__31_IN_parameters_277 = Set[ 4, 32, 33, 34, 35 ]
    TOKENS_FOLLOWING_type_IN_parameters_279 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_parameters_281 = Set[ 1, 31 ]
    TOKENS_FOLLOWING_set_IN_primitivetype_301 = Set[ 1 ]
    TOKENS_FOLLOWING_primitivetype_IN_arraytype_327 = Set[ 36 ]
    TOKENS_FOLLOWING_T__36_IN_arraytype_328 = Set[ 5 ]
    TOKENS_FOLLOWING_INTEGER_IN_arraytype_330 = Set[ 37 ]
    TOKENS_FOLLOWING_T__37_IN_arraytype_332 = Set[ 1 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_classtype_342 = Set[ 1 ]
    TOKENS_FOLLOWING_primitivetype_IN_type_363 = Set[ 1 ]
    TOKENS_FOLLOWING_arraytype_IN_type_367 = Set[ 1 ]
    TOKENS_FOLLOWING_classtype_IN_type_371 = Set[ 1 ]
    TOKENS_FOLLOWING_assignment_IN_statement_383 = Set[ 1 ]
    TOKENS_FOLLOWING_conditional_IN_statement_388 = Set[ 1 ]
    TOKENS_FOLLOWING_invocation_IN_statement_392 = Set[ 30 ]
    TOKENS_FOLLOWING_T__30_IN_statement_394 = Set[ 1 ]
    TOKENS_FOLLOWING_loop_IN_statement_398 = Set[ 1 ]
    TOKENS_FOLLOWING_print_IN_statement_402 = Set[ 1 ]
    TOKENS_FOLLOWING_returnstmt_IN_statement_406 = Set[ 1 ]
    TOKENS_FOLLOWING_T__30_IN_statement_410 = Set[ 1 ]
    TOKENS_FOLLOWING_lhsassignment_IN_assignment_421 = Set[ 38 ]
    TOKENS_FOLLOWING_T__38_IN_assignment_423 = Set[ 4, 5, 9, 10, 27, 40, 41, 48, 49, 50 ]
    TOKENS_FOLLOWING_rhsassignment_IN_assignment_425 = Set[ 30 ]
    TOKENS_FOLLOWING_T__30_IN_assignment_427 = Set[ 1 ]
    TOKENS_FOLLOWING_arrayaccess_IN_lhsassignment_438 = Set[ 1 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_lhsassignment_444 = Set[ 39 ]
    TOKENS_FOLLOWING_T__39_IN_lhsassignment_446 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_lhsassignment_448 = Set[ 1 ]
    TOKENS_FOLLOWING_T__40_IN_lhsassignment_455 = Set[ 39 ]
    TOKENS_FOLLOWING_T__39_IN_lhsassignment_457 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_lhsassignment_459 = Set[ 1 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_lhsassignment_467 = Set[ 1 ]
    TOKENS_FOLLOWING_expression_IN_rhsassignment_489 = Set[ 1 ]
    TOKENS_FOLLOWING_T__41_IN_rhsassignment_503 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_rhsassignment_505 = Set[ 27 ]
    TOKENS_FOLLOWING_T__27_IN_rhsassignment_507 = Set[ 28 ]
    TOKENS_FOLLOWING_T__28_IN_rhsassignment_509 = Set[ 1 ]
    TOKENS_FOLLOWING_T__42_IN_returnstmt_523 = Set[ 4, 5, 9, 10, 27, 30, 40, 48, 49, 50 ]
    TOKENS_FOLLOWING_expression_IN_returnstmt_525 = Set[ 30 ]
    TOKENS_FOLLOWING_T__30_IN_returnstmt_528 = Set[ 1 ]
    TOKENS_FOLLOWING_T__43_IN_conditional_540 = Set[ 27 ]
    TOKENS_FOLLOWING_T__27_IN_conditional_542 = Set[ 4, 5, 9, 10, 27, 40, 48, 49, 50 ]
    TOKENS_FOLLOWING_expression_IN_conditional_544 = Set[ 28 ]
    TOKENS_FOLLOWING_T__28_IN_conditional_546 = Set[ 22 ]
    TOKENS_FOLLOWING_T__22_IN_conditional_548 = Set[ 4, 23, 30, 40, 42, 43, 46, 47 ]
    TOKENS_FOLLOWING_statement_IN_conditional_550 = Set[ 4, 23, 30, 40, 42, 43, 46, 47 ]
    TOKENS_FOLLOWING_T__23_IN_conditional_553 = Set[ 1, 44, 45 ]
    TOKENS_FOLLOWING_T__44_IN_conditional_556 = Set[ 27 ]
    TOKENS_FOLLOWING_T__27_IN_conditional_558 = Set[ 4, 5, 9, 10, 27, 40, 48, 49, 50 ]
    TOKENS_FOLLOWING_expression_IN_conditional_560 = Set[ 28 ]
    TOKENS_FOLLOWING_T__28_IN_conditional_562 = Set[ 22 ]
    TOKENS_FOLLOWING_T__22_IN_conditional_564 = Set[ 4, 23, 30, 40, 42, 43, 46, 47 ]
    TOKENS_FOLLOWING_statement_IN_conditional_566 = Set[ 4, 23, 30, 40, 42, 43, 46, 47 ]
    TOKENS_FOLLOWING_T__23_IN_conditional_569 = Set[ 1, 44, 45 ]
    TOKENS_FOLLOWING_T__45_IN_conditional_575 = Set[ 22 ]
    TOKENS_FOLLOWING_T__22_IN_conditional_577 = Set[ 4, 23, 30, 40, 42, 43, 46, 47 ]
    TOKENS_FOLLOWING_statement_IN_conditional_579 = Set[ 4, 23, 30, 40, 42, 43, 46, 47 ]
    TOKENS_FOLLOWING_T__23_IN_conditional_582 = Set[ 1 ]
    TOKENS_FOLLOWING_T__46_IN_loop_597 = Set[ 27 ]
    TOKENS_FOLLOWING_T__27_IN_loop_599 = Set[ 4, 5, 9, 10, 27, 40, 48, 49, 50 ]
    TOKENS_FOLLOWING_expression_IN_loop_601 = Set[ 28 ]
    TOKENS_FOLLOWING_T__28_IN_loop_603 = Set[ 22 ]
    TOKENS_FOLLOWING_T__22_IN_loop_605 = Set[ 4, 23, 30, 40, 42, 43, 46, 47 ]
    TOKENS_FOLLOWING_statement_IN_loop_607 = Set[ 4, 23, 30, 40, 42, 43, 46, 47 ]
    TOKENS_FOLLOWING_T__23_IN_loop_610 = Set[ 1 ]
    TOKENS_FOLLOWING_T__47_IN_print_622 = Set[ 27 ]
    TOKENS_FOLLOWING_T__27_IN_print_624 = Set[ 4, 5, 9, 10, 27, 40, 48, 49, 50 ]
    TOKENS_FOLLOWING_expression_IN_print_626 = Set[ 28 ]
    TOKENS_FOLLOWING_T__28_IN_print_628 = Set[ 30 ]
    TOKENS_FOLLOWING_T__30_IN_print_630 = Set[ 1 ]
    TOKENS_FOLLOWING_exp_IN_expression_641 = Set[ 1, 6 ]
    TOKENS_FOLLOWING_COMPARITIONOPERATORS_IN_expression_644 = Set[ 4, 5, 9, 10, 27, 40, 48, 49, 50 ]
    TOKENS_FOLLOWING_exp_IN_expression_646 = Set[ 1 ]
    TOKENS_FOLLOWING_term_IN_exp_659 = Set[ 1, 7 ]
    TOKENS_FOLLOWING_ADDITIONSUBSTRACTIONOPERATORS_IN_exp_662 = Set[ 4, 5, 9, 10, 27, 40, 48, 49, 50 ]
    TOKENS_FOLLOWING_term_IN_exp_689 = Set[ 1, 7 ]
    TOKENS_FOLLOWING_factor_IN_term_727 = Set[ 1, 8 ]
    TOKENS_FOLLOWING_MULTIPLICATIONDIVISIONOPERATORS_IN_term_730 = Set[ 4, 5, 9, 10, 27, 40, 48, 49, 50 ]
    TOKENS_FOLLOWING_factor_IN_term_757 = Set[ 1, 8 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_factor_797 = Set[ 39 ]
    TOKENS_FOLLOWING_T__39_IN_factor_799 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_factor_801 = Set[ 1 ]
    TOKENS_FOLLOWING_T__40_IN_factor_808 = Set[ 39 ]
    TOKENS_FOLLOWING_T__39_IN_factor_810 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_factor_812 = Set[ 1 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_factor_820 = Set[ 1 ]
    TOKENS_FOLLOWING_INTEGER_IN_factor_831 = Set[ 1 ]
    TOKENS_FOLLOWING_FLOAT_IN_factor_844 = Set[ 1 ]
    TOKENS_FOLLOWING_CHAR_IN_factor_850 = Set[ 1 ]
    TOKENS_FOLLOWING_read_IN_factor_856 = Set[ 1 ]
    TOKENS_FOLLOWING_invocation_IN_factor_862 = Set[ 1 ]
    TOKENS_FOLLOWING_arrayaccess_IN_factor_868 = Set[ 1 ]
    TOKENS_FOLLOWING_T__27_IN_factor_877 = Set[ 4, 5, 9, 10, 27, 40, 48, 49, 50 ]
    TOKENS_FOLLOWING_expression_IN_factor_889 = Set[ 28 ]
    TOKENS_FOLLOWING_T__28_IN_factor_896 = Set[ 1 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_arrayaccess_913 = Set[ 36 ]
    TOKENS_FOLLOWING_T__36_IN_arrayaccess_914 = Set[ 4, 5, 9, 10, 27, 40, 48, 49, 50 ]
    TOKENS_FOLLOWING_expression_IN_arrayaccess_916 = Set[ 37 ]
    TOKENS_FOLLOWING_T__37_IN_arrayaccess_918 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_read_927 = Set[ 27 ]
    TOKENS_FOLLOWING_T__27_IN_read_939 = Set[ 28 ]
    TOKENS_FOLLOWING_T__28_IN_read_941 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_invocation_951 = Set[ 39 ]
    TOKENS_FOLLOWING_T__39_IN_invocation_959 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_invocation_961 = Set[ 27 ]
    TOKENS_FOLLOWING_T__27_IN_invocation_963 = Set[ 4, 5, 9, 10, 27, 28, 40, 48, 49, 50 ]
    TOKENS_FOLLOWING_arguments_IN_invocation_965 = Set[ 28 ]
    TOKENS_FOLLOWING_T__28_IN_invocation_968 = Set[ 1 ]
    TOKENS_FOLLOWING_expression_IN_arguments_978 = Set[ 1, 31 ]
    TOKENS_FOLLOWING_T__31_IN_arguments_981 = Set[ 4, 5, 9, 10, 27, 40, 48, 49, 50 ]
    TOKENS_FOLLOWING_expression_IN_arguments_983 = Set[ 1, 31 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0
end

