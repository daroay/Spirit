#!/usr/bin/env ruby
#
# Spirit.g
# --
# Generated using ANTLR version: 3.2.1-SNAPSHOT Jul 31, 2010 19:34:52
# Ruby runtime library version: 1.8.11
# Input grammar file: Spirit.g
# Generated at: 2012-03-21 22:03:29
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
  
  class Integer
    def temporal?
      if(self >= 4000 and self <= 4999) then
        return true
      end
      return false
    end
    
     def constant?
      if(self >= 3000 and self <= 3999) then
        return true
      end
      return false
    end
  end
  
  class String
    def temporal?
      return self.to_i.temporal?
    end
    
    def constant?
      return self.to_i.constant?
    end
  end
  
  #Contiene nombre, tipo y direccion de una variable
  class VariableSymbol
    attr_accessor :name, :type, :address
    
    def initialize(n, t)
      @name = n
      @type = t
      @address = nil
    end
    
  end
  
  #Contiene nombre, hash de variables de instancia, hash de metodos y super clase
  class ClassSymbol
    attr_accessor :name, :instance_methods, :parent_class
    attr_reader :instance_variables
    
    START_ADDRESS = 2000
    FINISH_ADDRESS = 2999
    
    def initialize(n, p = nil)
      @name = n #String
      @parent_class = p #ClassSymbol
      @instance_variables = Hash.new #VariableSymbol
      @instance_methods = Hash.new #MethodSymbol
      @next_address = START_ADDRESS
    end
    
    def set_to_instance_variables(key, vs)
      vs.address = @next_address
      @next_address += 1
      @instance_variables[key] = vs
    end
    
  end
  
  #Contiene tipo de retorno, lista de variables locales, lista de variables de parametro, 
  class MethodSymbol
    attr_accessor :name, :return_type, :parameter_variables, :container_class
    attr_reader :local_variables
    
    START_ADDRESS = 1000
    FINISH_ADDRESS = 1999
    
    def initialize(n, r = nil, c = nil)
      @name = n #String
      @return_type = r #ClassSymbol
      @container_class = c #ClassSymbol
      @local_variables = Hash.new #VariableSymbol
      @parameter_variables = Hash.new #VariableSymbol
      @next_address = START_ADDRESS
    end
    
    def set_to_local_variables(key, vs)
      vs.address = @next_address
      @next_address += 1
      @local_variables[key] = vs
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
    define_tokens( :EXPONENT => 13, :T__29 => 29, :T__28 => 28, :T__27 => 27, 
                   :T__26 => 26, :T__25 => 25, :T__24 => 24, :T__23 => 23, 
                   :T__22 => 22, :T__21 => 21, :T__20 => 20, :OCTAL_ESC => 18, 
                   :CHAR => 10, :FLOAT => 9, :EOF => -1, :T__19 => 19, :ADDITIONSUBSTRACTIONOPERATORS => 7, 
                   :ESC_SEQ => 12, :IDENTIFIER => 4, :MULTIPLICATIONDIVISIONOPERATORS => 8, 
                   :T__42 => 42, :INTEGER => 5, :T__43 => 43, :T__40 => 40, 
                   :T__41 => 41, :T__46 => 46, :T__47 => 47, :T__44 => 44, 
                   :T__45 => 45, :T__48 => 48, :UNICODE_ESC => 17, :HEX_DIGIT => 16, 
                   :T__30 => 30, :T__31 => 31, :T__32 => 32, :WS => 14, 
                   :T__33 => 33, :T__34 => 34, :T__35 => 35, :T__36 => 36, 
                   :T__37 => 37, :T__38 => 38, :T__39 => 39, :ARRAYIDENTIFIER => 11, 
                   :STRING => 15, :COMPARITIONOPERATORS => 6 )

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "IDENTIFIER", "INTEGER", "COMPARITIONOPERATORS", "ADDITIONSUBSTRACTIONOPERATORS", 
                    "MULTIPLICATIONDIVISIONOPERATORS", "FLOAT", "CHAR", 
                    "ARRAYIDENTIFIER", "ESC_SEQ", "EXPONENT", "WS", "STRING", 
                    "HEX_DIGIT", "UNICODE_ESC", "OCTAL_ESC", "'class'", 
                    "'Main'", "'{'", "'}'", "'method'", "'void'", "'main'", 
                    "'('", "')'", "'extends'", "';'", "','", "'int'", "'char'", 
                    "'float'", "'boolean'", "'['", "']'", "'='", "'.'", 
                    "'this'", "'new'", "'return'", "'if'", "'else'", "'while'", 
                    "'print'", "'readint'", "'readdouble'", "'readchar'" )
    
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
        @avail = []
        create_avail = Proc.new {
          1000.times do |i|
            @avail << "#{i + 4000}"
          end
        }
        create_avail.call()
        
        def get_avail
          return @avail.delete_at(0)
        end
        
        def free_avail(a)
          if(a.temporal?) then
            @avail.insert(0,a)
          end
        end
        
        #Creamos direcciones de constantes
        @avail_const = []
        create_avail_const = Proc.new {
          1000.times do |i|
            @avail_const << "#{i + 3000}"
          end
        }
        create_avail_const.call()
        
        def get_avail_const
          return @avail_const.delete_at(0)
        end
        
        def free_avail_const(a)
          if(a.constant?) then
            @avail_const.insert(0,a)
          end
        end
        
        @stack_operators = Stack.new
        @stack_operands = Stack.new
        @stack_types = Stack.new
        @stack_jumps = Stack.new
        @fourfold = Stack.new
        @cont = 0
        
        def resulting_type(type_a, type_b, operator)
          
          case
          when operator == '*' || operator == '+' || operator == '-'
            case
            when type_a == 'int' && type_b == 'int'
              return 'int'
            when type_a == 'int' && type_b == 'float'
              return 'float'
            when type_a == 'float' && type_b == 'int'
              return 'float'
            when type_a == 'float' && type_b == 'float'
              return 'float'
            else
              raise "Cant apply #{operator} to #{type_a} and #{type_b}"
            end
          when operator == '/'
            if((type_a == 'int' || type_a == 'float') && (type_b == 'int' || type_b == 'float'))
              return 'float'
            else
              raise "Cant apply #{operator} to #{type_a} and #{type_b}"
            end
          when operator == 'mod'
            if(type_a == 'int' && type_b == 'int')
              return 'int'
            else
              raise "Cant apply #{operator} to #{type_a} and #{type_b}"
            end
          when operator == '&&' || operator == '||'
            if(type_a == 'boolean' && type_b == 'boolean')
              return 'boolean'
            else
              raise "Cant apply #{operator} to #{type_a} and #{type_b}"
            end
          when (operator == '==' ||  operator == '!=')
            if(type_a != type_b)
              raise "Cant apply #{operator} to #{type_a} and #{type_b}"
            else
              return 'boolean'
            end
          when (operator == '<' || operator == '>' || operator == '<=' || operator == '>=')
            if((type_a == 'int' || type_a == 'float') && (type_b == 'int' || type_b == 'float'))
              if(type_a != type_b)
                raise "Cant apply #{operator} to #{type_a} and #{type_b}"
              else
                return 'boolean'
              end
            else
              raise "Cant apply #{operator} to #{type_a} and #{type_b}"
            end
          end
        end
        
        
        def fill(dir,value)
          @fourfold[dir][3] = value
        end
        
        def generate(oper,a,b,c)
          @fourfold << [oper,a,b,c]
          @cont += 1    
        end
        
        def print_fourfold
      		@fourfold.size.times do |i|
      		  $stdout.print "#{i}) "
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
    # 236:1: goal : ( classdeclaration )* mainclass ;
    # 
    def goal
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )

      begin
        # at line 237:5: ( classdeclaration )* mainclass
        # at line 237:5: ( classdeclaration )*
        while true # decision 1
          alt_1 = 2
          look_1_0 = @input.peek( 1 )

          if ( look_1_0 == T__19 )
            look_1_1 = @input.peek( 2 )

            if ( look_1_1 == IDENTIFIER )
              alt_1 = 1

            end

          end
          case alt_1
          when 1
            # at line 237:5: classdeclaration
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
    # 243:1: mainclass : 'class' 'Main' '{' ( vardeclaration )* ( methoddeclaration )* methodmain '}' ;
    # 
    def mainclass
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )

      begin
        # at line 244:4: 'class' 'Main' '{' ( vardeclaration )* ( methoddeclaration )* methodmain '}'
        match( T__19, TOKENS_FOLLOWING_T__19_IN_mainclass_83 )
        match( T__20, TOKENS_FOLLOWING_T__20_IN_mainclass_89 )
        # --> action

        	    @classes['Main'] = ClassSymbol.new('Main')
        	    @current_class = @classes['Main']
        	  
        # <-- action
        match( T__21, TOKENS_FOLLOWING_T__21_IN_mainclass_101 )
        # at line 251:4: ( vardeclaration )*
        while true # decision 2
          alt_2 = 2
          look_2_0 = @input.peek( 1 )

          if ( look_2_0 == IDENTIFIER || look_2_0 == T__24 || look_2_0.between?( T__31, T__34 ) )
            alt_2 = 1

          end
          case alt_2
          when 1
            # at line 251:4: vardeclaration
            @state.following.push( TOKENS_FOLLOWING_vardeclaration_IN_mainclass_107 )
            vardeclaration
            @state.following.pop

          else
            break # out of loop for decision 2
          end
        end # loop for decision 2
        # at line 252:4: ( methoddeclaration )*
        while true # decision 3
          alt_3 = 2
          look_3_0 = @input.peek( 1 )

          if ( look_3_0 == T__23 )
            look_3_1 = @input.peek( 2 )

            if ( look_3_1 == T__24 )
              look_3_2 = @input.peek( 3 )

              if ( look_3_2 == IDENTIFIER )
                alt_3 = 1

              end
            elsif ( look_3_1 == IDENTIFIER || look_3_1.between?( T__31, T__34 ) )
              alt_3 = 1

            end

          end
          case alt_3
          when 1
            # at line 252:4: methoddeclaration
            @state.following.push( TOKENS_FOLLOWING_methoddeclaration_IN_mainclass_113 )
            methoddeclaration
            @state.following.pop

          else
            break # out of loop for decision 3
          end
        end # loop for decision 3
        @state.following.push( TOKENS_FOLLOWING_methodmain_IN_mainclass_120 )
        methodmain
        @state.following.pop
        match( T__22, TOKENS_FOLLOWING_T__22_IN_mainclass_126 )
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
    # 259:1: methodmain : 'method' 'void' 'main' '(' ')' '{' ( vardeclaration )* ( statement )* '}' ;
    # 
    def methodmain
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )

      begin
        # at line 260:4: 'method' 'void' 'main' '(' ')' '{' ( vardeclaration )* ( statement )* '}'
        match( T__23, TOKENS_FOLLOWING_T__23_IN_methodmain_141 )
        match( T__24, TOKENS_FOLLOWING_T__24_IN_methodmain_147 )
        match( T__25, TOKENS_FOLLOWING_T__25_IN_methodmain_153 )
        # --> action
         
        	    @current_class.instance_methods['main'] = MethodSymbol.new('main', 'void', @current_class)
        	    @current_method = @current_class.instance_methods['main']
        	  
        # <-- action
        match( T__26, TOKENS_FOLLOWING_T__26_IN_methodmain_164 )
        match( T__27, TOKENS_FOLLOWING_T__27_IN_methodmain_166 )
        match( T__21, TOKENS_FOLLOWING_T__21_IN_methodmain_168 )
        # at line 267:16: ( vardeclaration )*
        while true # decision 4
          alt_4 = 2
          look_4_0 = @input.peek( 1 )

          if ( look_4_0 == IDENTIFIER )
            look_4_1 = @input.peek( 2 )

            if ( look_4_1 == IDENTIFIER )
              alt_4 = 1

            end
          elsif ( look_4_0 == T__24 || look_4_0.between?( T__31, T__34 ) )
            alt_4 = 1

          end
          case alt_4
          when 1
            # at line 267:16: vardeclaration
            @state.following.push( TOKENS_FOLLOWING_vardeclaration_IN_methodmain_170 )
            vardeclaration
            @state.following.pop

          else
            break # out of loop for decision 4
          end
        end # loop for decision 4
        # at line 267:32: ( statement )*
        while true # decision 5
          alt_5 = 2
          look_5_0 = @input.peek( 1 )

          if ( look_5_0 == IDENTIFIER || look_5_0 == T__29 || look_5_0 == T__39 || look_5_0.between?( T__41, T__42 ) || look_5_0.between?( T__44, T__45 ) )
            alt_5 = 1

          end
          case alt_5
          when 1
            # at line 267:32: statement
            @state.following.push( TOKENS_FOLLOWING_statement_IN_methodmain_173 )
            statement
            @state.following.pop

          else
            break # out of loop for decision 5
          end
        end # loop for decision 5
        match( T__22, TOKENS_FOLLOWING_T__22_IN_methodmain_176 )
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
    # 272:1: classdeclaration : 'class' IDENTIFIER ( inherits )? '{' ( vardeclaration )* ( methoddeclaration )* '}' ;
    # 
    def classdeclaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )

      begin
        # at line 273:5: 'class' IDENTIFIER ( inherits )? '{' ( vardeclaration )* ( methoddeclaration )* '}'
        match( T__19, TOKENS_FOLLOWING_T__19_IN_classdeclaration_193 )
        match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_classdeclaration_195 )
        # at line 273:24: ( inherits )?
        alt_6 = 2
        look_6_0 = @input.peek( 1 )

        if ( look_6_0 == T__28 )
          alt_6 = 1
        end
        case alt_6
        when 1
          # at line 273:24: inherits
          @state.following.push( TOKENS_FOLLOWING_inherits_IN_classdeclaration_197 )
          inherits
          @state.following.pop

        end
        match( T__21, TOKENS_FOLLOWING_T__21_IN_classdeclaration_201 )
        # at line 273:39: ( vardeclaration )*
        while true # decision 7
          alt_7 = 2
          look_7_0 = @input.peek( 1 )

          if ( look_7_0 == IDENTIFIER || look_7_0 == T__24 || look_7_0.between?( T__31, T__34 ) )
            alt_7 = 1

          end
          case alt_7
          when 1
            # at line 273:39: vardeclaration
            @state.following.push( TOKENS_FOLLOWING_vardeclaration_IN_classdeclaration_203 )
            vardeclaration
            @state.following.pop

          else
            break # out of loop for decision 7
          end
        end # loop for decision 7
        # at line 273:55: ( methoddeclaration )*
        while true # decision 8
          alt_8 = 2
          look_8_0 = @input.peek( 1 )

          if ( look_8_0 == T__23 )
            alt_8 = 1

          end
          case alt_8
          when 1
            # at line 273:55: methoddeclaration
            @state.following.push( TOKENS_FOLLOWING_methoddeclaration_IN_classdeclaration_206 )
            methoddeclaration
            @state.following.pop

          else
            break # out of loop for decision 8
          end
        end # loop for decision 8
        match( T__22, TOKENS_FOLLOWING_T__22_IN_classdeclaration_209 )

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
    # 275:1: inherits : 'extends' IDENTIFIER ;
    # 
    def inherits
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )

      begin
        # at line 276:4: 'extends' IDENTIFIER
        match( T__28, TOKENS_FOLLOWING_T__28_IN_inherits_219 )
        match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_inherits_221 )

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
    # 278:1: vardeclaration : t= type IDENTIFIER ';' ;
    # 
    def vardeclaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )
      __IDENTIFIER1__ = nil
      t = nil

      begin
        # at line 279:4: t= type IDENTIFIER ';'
        @state.following.push( TOKENS_FOLLOWING_type_IN_vardeclaration_234 )
        t = type
        @state.following.pop
        __IDENTIFIER1__ = match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_vardeclaration_236 )
        # --> action

        	    if(not @current_method.nil?)
        	      @current_method.set_to_local_variables(__IDENTIFIER1__.text,VariableSymbol.new(__IDENTIFIER1__.text, t))
        	    else
        	      @current_class.set_to_instance_variables(__IDENTIFIER1__.text, VariableSymbol.new(__IDENTIFIER1__.text, t))
        	    end
        	  
        # <-- action
        match( T__29, TOKENS_FOLLOWING_T__29_IN_vardeclaration_246 )

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
    # 290:1: methoddeclaration : 'method' t= ( primitivetype | classtype ) IDENTIFIER '(' ( parameters )? ')' '{' ( vardeclaration )* ( statement )* '}' ;
    # 
    def methoddeclaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )
      t = nil
      __IDENTIFIER2__ = nil

      begin
        # at line 291:5: 'method' t= ( primitivetype | classtype ) IDENTIFIER '(' ( parameters )? ')' '{' ( vardeclaration )* ( statement )* '}'
        match( T__23, TOKENS_FOLLOWING_T__23_IN_methoddeclaration_258 )
        # at line 292:10: ( primitivetype | classtype )
        alt_9 = 2
        look_9_0 = @input.peek( 1 )

        if ( look_9_0 == T__24 || look_9_0.between?( T__31, T__34 ) )
          alt_9 = 1
        elsif ( look_9_0 == IDENTIFIER )
          alt_9 = 2
        else
          raise NoViableAlternative( "", 9, 0 )
        end
        case alt_9
        when 1
          # at line 292:11: primitivetype
          @state.following.push( TOKENS_FOLLOWING_primitivetype_IN_methoddeclaration_271 )
          primitivetype
          @state.following.pop

        when 2
          # at line 292:27: classtype
          @state.following.push( TOKENS_FOLLOWING_classtype_IN_methoddeclaration_275 )
          classtype
          @state.following.pop

        end
        __IDENTIFIER2__ = match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_methoddeclaration_284 )
        # --> action
         
        	      @current_class.instance_methods[__IDENTIFIER2__.text] = MethodSymbol.new(__IDENTIFIER2__.text, t.type_a, @current_class)
        	      @current_method = @current_class.instance_methods[__IDENTIFIER2__.text]
        	    
        # <-- action
        match( T__26, TOKENS_FOLLOWING_T__26_IN_methoddeclaration_298 )
        # at line 298:10: ( parameters )?
        alt_10 = 2
        look_10_0 = @input.peek( 1 )

        if ( look_10_0 == IDENTIFIER || look_10_0 == T__24 || look_10_0.between?( T__31, T__34 ) )
          alt_10 = 1
        end
        case alt_10
        when 1
          # at line 298:10: parameters
          @state.following.push( TOKENS_FOLLOWING_parameters_IN_methoddeclaration_300 )
          parameters
          @state.following.pop

        end
        match( T__27, TOKENS_FOLLOWING_T__27_IN_methoddeclaration_303 )
        match( T__21, TOKENS_FOLLOWING_T__21_IN_methoddeclaration_311 )
        # at line 299:10: ( vardeclaration )*
        while true # decision 11
          alt_11 = 2
          look_11_0 = @input.peek( 1 )

          if ( look_11_0 == IDENTIFIER )
            look_11_1 = @input.peek( 2 )

            if ( look_11_1 == IDENTIFIER )
              alt_11 = 1

            end
          elsif ( look_11_0 == T__24 || look_11_0.between?( T__31, T__34 ) )
            alt_11 = 1

          end
          case alt_11
          when 1
            # at line 299:10: vardeclaration
            @state.following.push( TOKENS_FOLLOWING_vardeclaration_IN_methoddeclaration_313 )
            vardeclaration
            @state.following.pop

          else
            break # out of loop for decision 11
          end
        end # loop for decision 11
        # at line 299:26: ( statement )*
        while true # decision 12
          alt_12 = 2
          look_12_0 = @input.peek( 1 )

          if ( look_12_0 == IDENTIFIER || look_12_0 == T__29 || look_12_0 == T__39 || look_12_0.between?( T__41, T__42 ) || look_12_0.between?( T__44, T__45 ) )
            alt_12 = 1

          end
          case alt_12
          when 1
            # at line 299:26: statement
            @state.following.push( TOKENS_FOLLOWING_statement_IN_methoddeclaration_316 )
            statement
            @state.following.pop

          else
            break # out of loop for decision 12
          end
        end # loop for decision 12
        match( T__22, TOKENS_FOLLOWING_T__22_IN_methoddeclaration_319 )
        # --> action

        	      @current_method = nil
        	    
        # <-- action

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
    # 305:1: parameters : type IDENTIFIER ( ',' type IDENTIFIER )* ;
    # 
    def parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )

      begin
        # at line 306:4: type IDENTIFIER ( ',' type IDENTIFIER )*
        @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_342 )
        type
        @state.following.pop
        match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_parameters_344 )
        # at line 306:20: ( ',' type IDENTIFIER )*
        while true # decision 13
          alt_13 = 2
          look_13_0 = @input.peek( 1 )

          if ( look_13_0 == T__30 )
            alt_13 = 1

          end
          case alt_13
          when 1
            # at line 306:21: ',' type IDENTIFIER
            match( T__30, TOKENS_FOLLOWING_T__30_IN_parameters_347 )
            @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_349 )
            type
            @state.following.pop
            match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_parameters_351 )

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
    # 308:1: primitivetype returns [type_a] : t= ( 'int' | 'char' | 'float' | 'boolean' | 'void' ) ;
    # 
    def primitivetype
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )
      type_a = nil
      t = nil

      begin
        # at line 310:2: t= ( 'int' | 'char' | 'float' | 'boolean' | 'void' )
        t = @input.look
        if @input.peek(1) == T__24 || @input.peek( 1 ).between?( T__31, T__34 )
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
    # 312:1: arraytype : primitivetype '[' INTEGER ']' ;
    # 
    def arraytype
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )

      begin
        # at line 313:4: primitivetype '[' INTEGER ']'
        @state.following.push( TOKENS_FOLLOWING_primitivetype_IN_arraytype_401 )
        primitivetype
        @state.following.pop
        match( T__35, TOKENS_FOLLOWING_T__35_IN_arraytype_403 )
        match( INTEGER, TOKENS_FOLLOWING_INTEGER_IN_arraytype_405 )
        match( T__36, TOKENS_FOLLOWING_T__36_IN_arraytype_407 )

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
    # 315:1: classtype returns [type_a] : t= IDENTIFIER ;
    # 
    def classtype
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )
      type_a = nil
      t = nil

      begin
        # at line 317:2: t= IDENTIFIER
        t = match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_classtype_426 )
        # --> action
        type_a = t.text
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 11 )

      end
      
      return type_a
    end


    # 
    # parser rule type
    # 
    # (in Spirit.g)
    # 319:1: type returns [type_a] : (t= primitivetype | arraytype | t= classtype ) ;
    # 
    def type
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )
      type_a = nil
      t = nil

      begin
        # at line 321:2: (t= primitivetype | arraytype | t= classtype )
        # at line 321:2: (t= primitivetype | arraytype | t= classtype )
        alt_14 = 3
        look_14_0 = @input.peek( 1 )

        if ( look_14_0 == T__24 || look_14_0.between?( T__31, T__34 ) )
          look_14_1 = @input.peek( 2 )

          if ( look_14_1 == IDENTIFIER )
            alt_14 = 1
          elsif ( look_14_1 == T__35 )
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
          # at line 321:3: t= primitivetype
          @state.following.push( TOKENS_FOLLOWING_primitivetype_IN_type_449 )
          t = primitivetype
          @state.following.pop

        when 2
          # at line 321:23: arraytype
          @state.following.push( TOKENS_FOLLOWING_arraytype_IN_type_453 )
          arraytype
          @state.following.pop

        when 3
          # at line 321:35: t= classtype
          @state.following.push( TOKENS_FOLLOWING_classtype_IN_type_461 )
          t = classtype
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
    # 323:1: statement : ( assignment | conditional | invocation ';' | loop | print | returnstmt | ';' );
    # 
    def statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )

      begin
        # at line 324:2: ( assignment | conditional | invocation ';' | loop | print | returnstmt | ';' )
        alt_15 = 7
        alt_15 = @dfa15.predict( @input )
        case alt_15
        when 1
          # at line 324:4: assignment
          @state.following.push( TOKENS_FOLLOWING_assignment_IN_statement_473 )
          assignment
          @state.following.pop

        when 2
          # at line 324:18: conditional
          @state.following.push( TOKENS_FOLLOWING_conditional_IN_statement_478 )
          conditional
          @state.following.pop

        when 3
          # at line 324:32: invocation ';'
          @state.following.push( TOKENS_FOLLOWING_invocation_IN_statement_482 )
          invocation
          @state.following.pop
          match( T__29, TOKENS_FOLLOWING_T__29_IN_statement_484 )

        when 4
          # at line 324:49: loop
          @state.following.push( TOKENS_FOLLOWING_loop_IN_statement_488 )
          loop
          @state.following.pop

        when 5
          # at line 324:56: print
          @state.following.push( TOKENS_FOLLOWING_print_IN_statement_492 )
          print
          @state.following.pop

        when 6
          # at line 324:64: returnstmt
          @state.following.push( TOKENS_FOLLOWING_returnstmt_IN_statement_496 )
          returnstmt
          @state.following.pop

        when 7
          # at line 324:77: ';'
          match( T__29, TOKENS_FOLLOWING_T__29_IN_statement_500 )

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
    # 326:1: assignment : lhsassignment '=' rhsassignment ';' ;
    # 
    def assignment
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )

      begin
        # at line 327:4: lhsassignment '=' rhsassignment ';'
        @state.following.push( TOKENS_FOLLOWING_lhsassignment_IN_assignment_511 )
        lhsassignment
        @state.following.pop
        match( T__37, TOKENS_FOLLOWING_T__37_IN_assignment_513 )
        @state.following.push( TOKENS_FOLLOWING_rhsassignment_IN_assignment_515 )
        rhsassignment
        @state.following.pop
        match( T__29, TOKENS_FOLLOWING_T__29_IN_assignment_517 )

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
    # 329:1: lhsassignment : ( arrayaccess | IDENTIFIER '.' IDENTIFIER | 'this' '.' IDENTIFIER | IDENTIFIER );
    # 
    def lhsassignment
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )
      __IDENTIFIER3__ = nil

      begin
        # at line 330:2: ( arrayaccess | IDENTIFIER '.' IDENTIFIER | 'this' '.' IDENTIFIER | IDENTIFIER )
        alt_16 = 4
        look_16_0 = @input.peek( 1 )

        if ( look_16_0 == IDENTIFIER )
          case look_16 = @input.peek( 2 )
          when T__35 then alt_16 = 1
          when T__38 then alt_16 = 2
          when T__37 then alt_16 = 4
          else
            raise NoViableAlternative( "", 16, 1 )
          end
        elsif ( look_16_0 == T__39 )
          alt_16 = 3
        else
          raise NoViableAlternative( "", 16, 0 )
        end
        case alt_16
        when 1
          # at line 330:5: arrayaccess
          @state.following.push( TOKENS_FOLLOWING_arrayaccess_IN_lhsassignment_528 )
          arrayaccess
          @state.following.pop

        when 2
          # at line 331:5: IDENTIFIER '.' IDENTIFIER
          match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_lhsassignment_534 )
          match( T__38, TOKENS_FOLLOWING_T__38_IN_lhsassignment_536 )
          match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_lhsassignment_538 )

        when 3
          # at line 332:5: 'this' '.' IDENTIFIER
          match( T__39, TOKENS_FOLLOWING_T__39_IN_lhsassignment_545 )
          match( T__38, TOKENS_FOLLOWING_T__38_IN_lhsassignment_547 )
          match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_lhsassignment_549 )

        when 4
          # at line 333:5: IDENTIFIER
          __IDENTIFIER3__ = match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_lhsassignment_557 )
          # --> action

          	      # Verificar que exista en algun scope y meterlo en pila de operandos
          			  if(not @current_method.nil?)
          			    if(not @current_method.local_variables[__IDENTIFIER3__.text].nil?)
          			      @stack_operands.push(@current_method.local_variables[__IDENTIFIER3__.text].address)
          			      @stack_types.push(@current_method.local_variables[__IDENTIFIER3__.text].type)
          			    elsif( not @current_class.instance_variables[__IDENTIFIER3__.text].nil?)
          			      @stack_operands.push(@current_class.instance_variables[__IDENTIFIER3__.text].address)
          			      @stack_types.push(@current_class.instance_variables[__IDENTIFIER3__.text].type)
          			    else
          			      raise "Variable #{__IDENTIFIER3__.text} not declared in class #{@current_class.name} or method #{@current_method.name}"
          			    end
          			  else
          			  	if( not @current_class.instance_variables[__IDENTIFIER3__.text].nil?)
          			  	  @stack_operands.push(@current_class.instance_variables[__IDENTIFIER3__.text].address)
          			  	  @stack_types.push(@current_class.instance_variables[__IDENTIFIER3__.text].type)
          			    else
          			      raise "Variable #{__IDENTIFIER3__.text} not declared in class #{@current_class.name}"
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
    # 357:1: rhsassignment : ( expression | 'new' IDENTIFIER '(' ')' );
    # 
    def rhsassignment
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )

      begin
        # at line 358:2: ( expression | 'new' IDENTIFIER '(' ')' )
        alt_17 = 2
        look_17_0 = @input.peek( 1 )

        if ( look_17_0.between?( IDENTIFIER, INTEGER ) || look_17_0.between?( FLOAT, CHAR ) || look_17_0 == T__26 || look_17_0 == T__39 || look_17_0.between?( T__46, T__48 ) )
          alt_17 = 1
        elsif ( look_17_0 == T__40 )
          alt_17 = 2
        else
          raise NoViableAlternative( "", 17, 0 )
        end
        case alt_17
        when 1
          # at line 358:4: expression
          @state.following.push( TOKENS_FOLLOWING_expression_IN_rhsassignment_579 )
          expression
          @state.following.pop
          # --> action

                rh = @stack_operands.pop
                rh_t = @stack_types.pop
                lh = @stack_operands.pop
                lh_t = @stack_types.pop
                if(lh_t != rh_t)
                  raise "Tried to assign #{rh_t} to #{lh_t}"
                end
                generate('=', rh, nil ,lh )
                free_avail(rh)
                free_avail_const(rh)
              
          # <-- action

        when 2
          # at line 371:6: 'new' IDENTIFIER '(' ')'
          match( T__40, TOKENS_FOLLOWING_T__40_IN_rhsassignment_593 )
          match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_rhsassignment_595 )
          match( T__26, TOKENS_FOLLOWING_T__26_IN_rhsassignment_597 )
          match( T__27, TOKENS_FOLLOWING_T__27_IN_rhsassignment_599 )

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
    # 374:1: returnstmt : 'return' ( expression )? ';' ;
    # 
    def returnstmt
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )

      begin
        # at line 375:4: 'return' ( expression )? ';'
        match( T__41, TOKENS_FOLLOWING_T__41_IN_returnstmt_613 )
        # at line 375:13: ( expression )?
        alt_18 = 2
        look_18_0 = @input.peek( 1 )

        if ( look_18_0.between?( IDENTIFIER, INTEGER ) || look_18_0.between?( FLOAT, CHAR ) || look_18_0 == T__26 || look_18_0 == T__39 || look_18_0.between?( T__46, T__48 ) )
          alt_18 = 1
        end
        case alt_18
        when 1
          # at line 375:13: expression
          @state.following.push( TOKENS_FOLLOWING_expression_IN_returnstmt_615 )
          expression
          @state.following.pop

        end
        match( T__29, TOKENS_FOLLOWING_T__29_IN_returnstmt_618 )

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
    # 377:1: conditional : 'if' '(' expression ')' '{' ( statement )* '}' ( 'else' '{' ( statement )* '}' )? ;
    # 
    def conditional
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )

      begin
        # at line 378:5: 'if' '(' expression ')' '{' ( statement )* '}' ( 'else' '{' ( statement )* '}' )?
        match( T__42, TOKENS_FOLLOWING_T__42_IN_conditional_630 )
        match( T__26, TOKENS_FOLLOWING_T__26_IN_conditional_632 )
        @state.following.push( TOKENS_FOLLOWING_expression_IN_conditional_634 )
        expression
        @state.following.pop
        match( T__27, TOKENS_FOLLOWING_T__27_IN_conditional_636 )
        # --> action

        	     aux = @stack_types.pop
        	     if (aux != 'boolean') then
        	       raise "Expression inside if-statement is not boolean"
        	     else
        	       result = @stack_operands.pop
        	       generate('gtf', result, nil, '_')
        	       @stack_jumps.push(@cont - 1)
        	     end
        	   
        # <-- action
        match( T__21, TOKENS_FOLLOWING_T__21_IN_conditional_648 )
        # at line 389:9: ( statement )*
        while true # decision 19
          alt_19 = 2
          look_19_0 = @input.peek( 1 )

          if ( look_19_0 == IDENTIFIER || look_19_0 == T__29 || look_19_0 == T__39 || look_19_0.between?( T__41, T__42 ) || look_19_0.between?( T__44, T__45 ) )
            alt_19 = 1

          end
          case alt_19
          when 1
            # at line 389:9: statement
            @state.following.push( TOKENS_FOLLOWING_statement_IN_conditional_650 )
            statement
            @state.following.pop

          else
            break # out of loop for decision 19
          end
        end # loop for decision 19
        match( T__22, TOKENS_FOLLOWING_T__22_IN_conditional_653 )
        # at line 390:5: ( 'else' '{' ( statement )* '}' )?
        alt_21 = 2
        look_21_0 = @input.peek( 1 )

        if ( look_21_0 == T__43 )
          alt_21 = 1
        end
        case alt_21
        when 1
          # at line 390:6: 'else' '{' ( statement )* '}'
          match( T__43, TOKENS_FOLLOWING_T__43_IN_conditional_661 )
          # --> action

          	     generate('gt', nil, nil, '_')
          	     false_result = @stack_jumps.pop
          	     fill(false_result, @cont)
          	     @stack_jumps.push(@cont - 1)
          	   
          # <-- action
          match( T__21, TOKENS_FOLLOWING_T__21_IN_conditional_673 )
          # at line 397:9: ( statement )*
          while true # decision 20
            alt_20 = 2
            look_20_0 = @input.peek( 1 )

            if ( look_20_0 == IDENTIFIER || look_20_0 == T__29 || look_20_0 == T__39 || look_20_0.between?( T__41, T__42 ) || look_20_0.between?( T__44, T__45 ) )
              alt_20 = 1

            end
            case alt_20
            when 1
              # at line 397:9: statement
              @state.following.push( TOKENS_FOLLOWING_statement_IN_conditional_675 )
              statement
              @state.following.pop

            else
              break # out of loop for decision 20
            end
          end # loop for decision 20
          match( T__22, TOKENS_FOLLOWING_T__22_IN_conditional_678 )

        end
        # --> action

        	     fin = @stack_jumps.pop
        	     fill(fin, @cont)
        	   
        # <-- action

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
    # 403:1: loop : 'while' '(' expression ')' '{' ( statement )* '}' ;
    # 
    def loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )

      begin
        # at line 404:5: 'while' '(' expression ')' '{' ( statement )* '}'
        match( T__44, TOKENS_FOLLOWING_T__44_IN_loop_699 )
        # --> action

        	      @stack_jumps.push(@cont)
        	    
        # <-- action
        match( T__26, TOKENS_FOLLOWING_T__26_IN_loop_713 )
        @state.following.push( TOKENS_FOLLOWING_expression_IN_loop_715 )
        expression
        @state.following.pop
        match( T__27, TOKENS_FOLLOWING_T__27_IN_loop_717 )
        # --> action

        	      aux = @stack_types.pop
        	      if(aux != 'boolean') then
        	        raise "Expression inside while-statement is not boolean"
        	      else
        	        result = @stack_operands.pop
        	        generate('gtf', result, nil, '_')
        	        @stack_jumps.push(@cont - 1)
        	      end
        	    
        # <-- action
        match( T__21, TOKENS_FOLLOWING_T__21_IN_loop_731 )
        # at line 419:10: ( statement )*
        while true # decision 22
          alt_22 = 2
          look_22_0 = @input.peek( 1 )

          if ( look_22_0 == IDENTIFIER || look_22_0 == T__29 || look_22_0 == T__39 || look_22_0.between?( T__41, T__42 ) || look_22_0.between?( T__44, T__45 ) )
            alt_22 = 1

          end
          case alt_22
          when 1
            # at line 419:10: statement
            @state.following.push( TOKENS_FOLLOWING_statement_IN_loop_733 )
            statement
            @state.following.pop

          else
            break # out of loop for decision 22
          end
        end # loop for decision 22
        match( T__22, TOKENS_FOLLOWING_T__22_IN_loop_736 )
        # --> action

        	      false_result = @stack_jumps.pop
        	      return_result = @stack_jumps.pop
        	      generate('gt', nil, nil, return_result)
        	      fill(false_result, @cont)
        	    
        # <-- action

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
    # 427:1: print : 'print' '(' expression ')' ';' ;
    # 
    def print
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )

      begin
        # at line 428:5: 'print' '(' expression ')' ';'
        match( T__45, TOKENS_FOLLOWING_T__45_IN_print_755 )
        match( T__26, TOKENS_FOLLOWING_T__26_IN_print_757 )
        @state.following.push( TOKENS_FOLLOWING_expression_IN_print_759 )
        expression
        @state.following.pop
        match( T__27, TOKENS_FOLLOWING_T__27_IN_print_761 )
        match( T__29, TOKENS_FOLLOWING_T__29_IN_print_763 )

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
    # 430:1: expression : exp ( COMPARITIONOPERATORS exp )? ;
    # 
    def expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )
      __COMPARITIONOPERATORS4__ = nil

      begin
        # at line 431:5: exp ( COMPARITIONOPERATORS exp )?
        @state.following.push( TOKENS_FOLLOWING_exp_IN_expression_774 )
        exp
        @state.following.pop
        # at line 431:9: ( COMPARITIONOPERATORS exp )?
        alt_23 = 2
        look_23_0 = @input.peek( 1 )

        if ( look_23_0 == COMPARITIONOPERATORS )
          alt_23 = 1
        end
        case alt_23
        when 1
          # at line 431:10: COMPARITIONOPERATORS exp
          __COMPARITIONOPERATORS4__ = match( COMPARITIONOPERATORS, TOKENS_FOLLOWING_COMPARITIONOPERATORS_IN_expression_777 )
          # --> action
           #Regla 8
          	      @stack_operators.push(__COMPARITIONOPERATORS4__.text)
          	    
          # <-- action
          @state.following.push( TOKENS_FOLLOWING_exp_IN_expression_791 )
          exp
          @state.following.pop
          # --> action
           #Regla 9
          		    operator = @stack_operators.pop
          		    operand_b = @stack_operands.pop
          		    operand_a = @stack_operands.pop
          		    result = get_avail
          		    generate(operator, operand_a, operand_b, result)
          		    free_avail(operand_a)
          		    free_avail(operand_b)
          		    free_avail_const(operand_a)
          		    free_avail_const(operand_b)
          		    @stack_operands.push(result)
          		    @stack_types.push(resulting_type(@stack_types.pop, @stack_types.pop, operator))
          	    
          # <-- action

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
    # 451:1: exp : term ( ADDITIONSUBSTRACTIONOPERATORS term )* ;
    # 
    def exp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )
      __ADDITIONSUBSTRACTIONOPERATORS5__ = nil

      begin
        # at line 452:5: term ( ADDITIONSUBSTRACTIONOPERATORS term )*
        @state.following.push( TOKENS_FOLLOWING_term_IN_exp_817 )
        term
        @state.following.pop
        # at line 452:10: ( ADDITIONSUBSTRACTIONOPERATORS term )*
        while true # decision 24
          alt_24 = 2
          look_24_0 = @input.peek( 1 )

          if ( look_24_0 == ADDITIONSUBSTRACTIONOPERATORS )
            alt_24 = 1

          end
          case alt_24
          when 1
            # at line 452:11: ADDITIONSUBSTRACTIONOPERATORS term
            __ADDITIONSUBSTRACTIONOPERATORS5__ = match( ADDITIONSUBSTRACTIONOPERATORS, TOKENS_FOLLOWING_ADDITIONSUBSTRACTIONOPERATORS_IN_exp_820 )
            # --> action
             #Regla 2 GC
                         @stack_operators.push(__ADDITIONSUBSTRACTIONOPERATORS5__.text)
                       
            # <-- action
            @state.following.push( TOKENS_FOLLOWING_term_IN_exp_847 )
            term
            @state.following.pop
            # --> action
             #Regla 4 GC / VS
                         if(@stack_operators.last == '+' or
                            @stack_operators.last == '-' or
                            @stack_operators.last == '||' ) then
                           operator = @stack_operators.pop
                           operand_b = @stack_operands.pop
                           operand_a = @stack_operands.pop
                           result = get_avail
                           generate(operator, operand_a, operand_b, result)
                           free_avail(operand_a)
                           free_avail(operand_b)
                           free_avail_const(operand_a)
                           free_avail_const(operand_b)
                           @stack_operands.push(result)
                           @stack_types.push(resulting_type(@stack_types.pop, @stack_types.pop, operator))
                         end
                       
            # <-- action

          else
            break # out of loop for decision 24
          end
        end # loop for decision 24

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
    # 476:1: term : factor ( MULTIPLICATIONDIVISIONOPERATORS factor )* ;
    # 
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )
      __MULTIPLICATIONDIVISIONOPERATORS6__ = nil

      begin
        # at line 477:5: factor ( MULTIPLICATIONDIVISIONOPERATORS factor )*
        @state.following.push( TOKENS_FOLLOWING_factor_IN_term_885 )
        factor
        @state.following.pop
        # at line 477:12: ( MULTIPLICATIONDIVISIONOPERATORS factor )*
        while true # decision 25
          alt_25 = 2
          look_25_0 = @input.peek( 1 )

          if ( look_25_0 == MULTIPLICATIONDIVISIONOPERATORS )
            alt_25 = 1

          end
          case alt_25
          when 1
            # at line 477:13: MULTIPLICATIONDIVISIONOPERATORS factor
            __MULTIPLICATIONDIVISIONOPERATORS6__ = match( MULTIPLICATIONDIVISIONOPERATORS, TOKENS_FOLLOWING_MULTIPLICATIONDIVISIONOPERATORS_IN_term_888 )
            # --> action
             #Regla 3 GC
            		           @stack_operators.push(__MULTIPLICATIONDIVISIONOPERATORS6__.text)
            		         
            # <-- action
            @state.following.push( TOKENS_FOLLOWING_factor_IN_term_915 )
            factor
            @state.following.pop
            # --> action
             #Regla 5 GC / VS
            		           if(@stack_operators.last == '*' or
            		              @stack_operators.last == '/' or
            		              @stack_operators.last == '&&') then
            		             operator = @stack_operators.pop
            		             operand_b = @stack_operands.pop
            		             operand_a = @stack_operands.pop
            		             result = get_avail
            		             generate(operator, operand_a, operand_b, result)
            		             free_avail(operand_a)
            		             free_avail(operand_b)
                             free_avail_const(operand_a)
                             free_avail_const(operand_b)
            		             @stack_operands.push(result)
            		             @stack_types.push(resulting_type(@stack_types.pop, @stack_types.pop, operator))
            		           end
            		         
            # <-- action

          else
            break # out of loop for decision 25
          end
        end # loop for decision 25

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
    # 501:1: factor : ( IDENTIFIER '.' IDENTIFIER | 'this' '.' IDENTIFIER | IDENTIFIER | INTEGER | FLOAT | CHAR | read | invocation | arrayaccess | '(' expression ')' );
    # 
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )
      __IDENTIFIER7__ = nil
      __INTEGER8__ = nil
      __FLOAT9__ = nil
      __CHAR10__ = nil

      begin
        # at line 502:2: ( IDENTIFIER '.' IDENTIFIER | 'this' '.' IDENTIFIER | IDENTIFIER | INTEGER | FLOAT | CHAR | read | invocation | arrayaccess | '(' expression ')' )
        alt_26 = 10
        alt_26 = @dfa26.predict( @input )
        case alt_26
        when 1
          # at line 503:3: IDENTIFIER '.' IDENTIFIER
          match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_factor_955 )
          match( T__38, TOKENS_FOLLOWING_T__38_IN_factor_957 )
          match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_factor_959 )

        when 2
          # at line 504:5: 'this' '.' IDENTIFIER
          match( T__39, TOKENS_FOLLOWING_T__39_IN_factor_966 )
          match( T__38, TOKENS_FOLLOWING_T__38_IN_factor_968 )
          match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_factor_970 )

        when 3
          # at line 505:5: IDENTIFIER
          __IDENTIFIER7__ = match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_factor_978 )
          # --> action
           #Regla 1 GC / Regla 1 VS
          			  # Verificar que exista en algun scope y meterlo en pila de operandos
          			  if(not @current_method.nil?)
          			    if(not @current_method.local_variables[__IDENTIFIER7__.text].nil?)
          			      @stack_operands.push(@current_method.local_variables[__IDENTIFIER7__.text].address)
          			      @stack_types.push(@current_method.local_variables[__IDENTIFIER7__.text].type)
          			    elsif( not @current_class.instance_variables[__IDENTIFIER7__.text].nil?)
          			      @stack_operands.push(@current_class.instance_variables[__IDENTIFIER7__.text].address)
          			      @stack_types.push(@current_class.instance_variables[__IDENTIFIER7__.text].type)
          			    else
          			      raise "Variable #{__IDENTIFIER7__.text} not declared"
          			    end
          			  else
          			  	if( not @current_class.instance_variables[__IDENTIFIER7__.text].nil?)
          			  	  @stack_operands.push(@current_class.instance_variables[__IDENTIFIER7__.text].address)
          			  	  @stack_types.push(@current_class.instance_variables[__IDENTIFIER7__.text].type)
          			    else
          			      raise "Variable #{__IDENTIFIER7__.text} not declared"
          			    end
          			  end
          			
          # <-- action

        when 4
          # at line 527:5: INTEGER
          __INTEGER8__ = match( INTEGER, TOKENS_FOLLOWING_INTEGER_IN_factor_989 )
          # --> action
           #Regla 1 GC
          		    dir_const = get_avail_const
          		    generate('ict', __INTEGER8__.text, nil, dir_const )
          				@stack_operands.push(dir_const)
          				@stack_types.push('int')
          		  
          # <-- action

        when 5
          # at line 534:5: FLOAT
          __FLOAT9__ = match( FLOAT, TOKENS_FOLLOWING_FLOAT_IN_factor_1002 )
          # --> action
           #Regla 1 GC
          		    dir_const = get_avail_const
          		    generate('fct', __FLOAT9__.text, nil, dir_const )
          				@stack_operands.push(dir_const)
          				@stack_types.push('float')
          		  
          # <-- action

        when 6
          # at line 541:5: CHAR
          __CHAR10__ = match( CHAR, TOKENS_FOLLOWING_CHAR_IN_factor_1014 )
          # --> action
           #Regla 1 GC
          		    dir_const = get_avail_const
          		    generate('cct', __CHAR10__.text, nil, dir_const )
          				@stack_operands.push(dir_const)
          				@stack_types.push('char')
          		  
          # <-- action

        when 7
          # at line 548:5: read
          @state.following.push( TOKENS_FOLLOWING_read_IN_factor_1026 )
          read
          @state.following.pop

        when 8
          # at line 549:5: invocation
          @state.following.push( TOKENS_FOLLOWING_invocation_IN_factor_1032 )
          invocation
          @state.following.pop

        when 9
          # at line 550:5: arrayaccess
          @state.following.push( TOKENS_FOLLOWING_arrayaccess_IN_factor_1038 )
          arrayaccess
          @state.following.pop

        when 10
          # at line 551:5: '(' expression ')'
          match( T__26, TOKENS_FOLLOWING_T__26_IN_factor_1047 )
          # --> action
           #Regla 6 GC
          		    @stack_operators.push('(')
          		  
          # <-- action
          @state.following.push( TOKENS_FOLLOWING_expression_IN_factor_1059 )
          expression
          @state.following.pop
          match( T__27, TOKENS_FOLLOWING_T__27_IN_factor_1066 )
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
    # 562:1: arrayaccess : IDENTIFIER '[' expression ']' ;
    # 
    def arrayaccess
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )

      begin
        # at line 563:4: IDENTIFIER '[' expression ']'
        match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_arrayaccess_1083 )
        match( T__35, TOKENS_FOLLOWING_T__35_IN_arrayaccess_1084 )
        @state.following.push( TOKENS_FOLLOWING_expression_IN_arrayaccess_1086 )
        expression
        @state.following.pop
        match( T__36, TOKENS_FOLLOWING_T__36_IN_arrayaccess_1088 )

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
    # 565:1: read : ( 'readint' | 'readdouble' | 'readchar' ) '(' ')' ;
    # 
    def read
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )

      begin
        # at line 565:8: ( 'readint' | 'readdouble' | 'readchar' ) '(' ')'
        if @input.peek( 1 ).between?( T__46, T__48 )
          @input.consume
          @state.error_recovery = false
        else
          mse = MismatchedSet( nil )
          raise mse
        end


        match( T__26, TOKENS_FOLLOWING_T__26_IN_read_1109 )
        match( T__27, TOKENS_FOLLOWING_T__27_IN_read_1111 )

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
    # 567:1: invocation : ( IDENTIFIER | 'this' ) '.' IDENTIFIER '(' ( arguments )? ')' ;
    # 
    def invocation
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )

      begin
        # at line 568:5: ( IDENTIFIER | 'this' ) '.' IDENTIFIER '(' ( arguments )? ')'
        if @input.peek(1) == IDENTIFIER || @input.peek(1) == T__39
          @input.consume
          @state.error_recovery = false
        else
          mse = MismatchedSet( nil )
          raise mse
        end


        match( T__38, TOKENS_FOLLOWING_T__38_IN_invocation_1129 )
        match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_invocation_1131 )
        match( T__26, TOKENS_FOLLOWING_T__26_IN_invocation_1133 )
        # at line 568:46: ( arguments )?
        alt_27 = 2
        look_27_0 = @input.peek( 1 )

        if ( look_27_0.between?( IDENTIFIER, INTEGER ) || look_27_0.between?( FLOAT, CHAR ) || look_27_0 == T__26 || look_27_0 == T__39 || look_27_0.between?( T__46, T__48 ) )
          alt_27 = 1
        end
        case alt_27
        when 1
          # at line 568:46: arguments
          @state.following.push( TOKENS_FOLLOWING_arguments_IN_invocation_1135 )
          arguments
          @state.following.pop

        end
        match( T__27, TOKENS_FOLLOWING_T__27_IN_invocation_1138 )

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
    # 570:1: arguments : expression ( ',' expression )* ;
    # 
    def arguments
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )

      begin
        # at line 571:4: expression ( ',' expression )*
        @state.following.push( TOKENS_FOLLOWING_expression_IN_arguments_1148 )
        expression
        @state.following.pop
        # at line 571:15: ( ',' expression )*
        while true # decision 28
          alt_28 = 2
          look_28_0 = @input.peek( 1 )

          if ( look_28_0 == T__30 )
            alt_28 = 1

          end
          case alt_28
          when 1
            # at line 571:16: ',' expression
            match( T__30, TOKENS_FOLLOWING_T__30_IN_arguments_1151 )
            @state.following.push( TOKENS_FOLLOWING_expression_IN_arguments_1153 )
            expression
            @state.following.pop

          else
            break # out of loop for decision 28
          end
        end # loop for decision 28

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
      MIN = unpack( 1, 4, 1, 35, 1, 38, 6, -1, 2, 4, 2, 26, 1, -1 )
      MAX = unpack( 1, 45, 2, 38, 6, -1, 2, 4, 2, 37, 1, -1 )
      ACCEPT = unpack( 3, -1, 1, 2, 1, 4, 1, 5, 1, 6, 1, 7, 1, 1, 4, -1, 
                       1, 3 )
      SPECIAL = unpack( 14, -1 )
      TRANSITION = [
        unpack( 1, 1, 24, -1, 1, 7, 9, -1, 1, 2, 1, -1, 1, 6, 1, 3, 1, -1, 
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
          323:1: statement : ( assignment | conditional | invocation ';' | loop | print | returnstmt | ';' );
        __dfa_description__
      end
    end
    class DFA26 < ANTLR3::DFA
      EOT = unpack( 17, -1 )
      EOF = unpack( 17, -1 )
      MIN = unpack( 1, 4, 1, 6, 1, 38, 5, -1, 1, 4, 2, -1, 1, 4, 2, 6, 3, 
                    -1 )
      MAX = unpack( 1, 48, 2, 38, 5, -1, 1, 4, 2, -1, 1, 4, 2, 36, 3, -1 )
      ACCEPT = unpack( 3, -1, 1, 4, 1, 5, 1, 6, 1, 7, 1, 10, 1, -1, 1, 9, 
                       1, 3, 3, -1, 1, 8, 1, 1, 1, 2 )
      SPECIAL = unpack( 17, -1 )
      TRANSITION = [
        unpack( 1, 1, 1, 3, 3, -1, 1, 4, 1, 5, 15, -1, 1, 7, 12, -1, 1, 
                2, 6, -1, 3, 6 ),
        unpack( 3, 10, 18, -1, 1, 10, 1, -1, 2, 10, 4, -1, 1, 9, 1, 10, 
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
        unpack( 3, 15, 17, -1, 1, 14, 1, 15, 1, -1, 2, 15, 5, -1, 1, 15 ),
        unpack( 3, 16, 17, -1, 1, 14, 1, 16, 1, -1, 2, 16, 5, -1, 1, 16 ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 26
      

      def description
        <<-'__dfa_description__'.strip!
          501:1: factor : ( IDENTIFIER '.' IDENTIFIER | 'this' '.' IDENTIFIER | IDENTIFIER | INTEGER | FLOAT | CHAR | read | invocation | arrayaccess | '(' expression ')' );
        __dfa_description__
      end
    end


    private

    def initialize_dfas
      super rescue nil
      @dfa15 = DFA15.new( self, 15 )
      @dfa26 = DFA26.new( self, 26 )

    end
    TOKENS_FOLLOWING_classdeclaration_IN_goal_56 = Set[ 19 ]
    TOKENS_FOLLOWING_mainclass_IN_goal_65 = Set[ 1 ]
    TOKENS_FOLLOWING_T__19_IN_mainclass_83 = Set[ 20 ]
    TOKENS_FOLLOWING_T__20_IN_mainclass_89 = Set[ 21 ]
    TOKENS_FOLLOWING_T__21_IN_mainclass_101 = Set[ 4, 23, 24, 31, 32, 33, 34 ]
    TOKENS_FOLLOWING_vardeclaration_IN_mainclass_107 = Set[ 4, 23, 24, 31, 32, 33, 34 ]
    TOKENS_FOLLOWING_methoddeclaration_IN_mainclass_113 = Set[ 4, 23, 24, 31, 32, 33, 34 ]
    TOKENS_FOLLOWING_methodmain_IN_mainclass_120 = Set[ 22 ]
    TOKENS_FOLLOWING_T__22_IN_mainclass_126 = Set[ 1 ]
    TOKENS_FOLLOWING_T__23_IN_methodmain_141 = Set[ 24 ]
    TOKENS_FOLLOWING_T__24_IN_methodmain_147 = Set[ 25 ]
    TOKENS_FOLLOWING_T__25_IN_methodmain_153 = Set[ 26 ]
    TOKENS_FOLLOWING_T__26_IN_methodmain_164 = Set[ 27 ]
    TOKENS_FOLLOWING_T__27_IN_methodmain_166 = Set[ 21 ]
    TOKENS_FOLLOWING_T__21_IN_methodmain_168 = Set[ 4, 22, 24, 29, 31, 32, 33, 34, 39, 41, 42, 44, 45 ]
    TOKENS_FOLLOWING_vardeclaration_IN_methodmain_170 = Set[ 4, 22, 24, 29, 31, 32, 33, 34, 39, 41, 42, 44, 45 ]
    TOKENS_FOLLOWING_statement_IN_methodmain_173 = Set[ 4, 22, 29, 39, 41, 42, 44, 45 ]
    TOKENS_FOLLOWING_T__22_IN_methodmain_176 = Set[ 1 ]
    TOKENS_FOLLOWING_T__19_IN_classdeclaration_193 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_classdeclaration_195 = Set[ 21, 28 ]
    TOKENS_FOLLOWING_inherits_IN_classdeclaration_197 = Set[ 21 ]
    TOKENS_FOLLOWING_T__21_IN_classdeclaration_201 = Set[ 4, 22, 23, 24, 31, 32, 33, 34 ]
    TOKENS_FOLLOWING_vardeclaration_IN_classdeclaration_203 = Set[ 4, 22, 23, 24, 31, 32, 33, 34 ]
    TOKENS_FOLLOWING_methoddeclaration_IN_classdeclaration_206 = Set[ 22, 23 ]
    TOKENS_FOLLOWING_T__22_IN_classdeclaration_209 = Set[ 1 ]
    TOKENS_FOLLOWING_T__28_IN_inherits_219 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_inherits_221 = Set[ 1 ]
    TOKENS_FOLLOWING_type_IN_vardeclaration_234 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_vardeclaration_236 = Set[ 29 ]
    TOKENS_FOLLOWING_T__29_IN_vardeclaration_246 = Set[ 1 ]
    TOKENS_FOLLOWING_T__23_IN_methoddeclaration_258 = Set[ 4, 24, 31, 32, 33, 34 ]
    TOKENS_FOLLOWING_primitivetype_IN_methoddeclaration_271 = Set[ 4 ]
    TOKENS_FOLLOWING_classtype_IN_methoddeclaration_275 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_methoddeclaration_284 = Set[ 26 ]
    TOKENS_FOLLOWING_T__26_IN_methoddeclaration_298 = Set[ 4, 24, 27, 31, 32, 33, 34 ]
    TOKENS_FOLLOWING_parameters_IN_methoddeclaration_300 = Set[ 27 ]
    TOKENS_FOLLOWING_T__27_IN_methoddeclaration_303 = Set[ 21 ]
    TOKENS_FOLLOWING_T__21_IN_methoddeclaration_311 = Set[ 4, 22, 24, 29, 31, 32, 33, 34, 39, 41, 42, 44, 45 ]
    TOKENS_FOLLOWING_vardeclaration_IN_methoddeclaration_313 = Set[ 4, 22, 24, 29, 31, 32, 33, 34, 39, 41, 42, 44, 45 ]
    TOKENS_FOLLOWING_statement_IN_methoddeclaration_316 = Set[ 4, 22, 29, 39, 41, 42, 44, 45 ]
    TOKENS_FOLLOWING_T__22_IN_methoddeclaration_319 = Set[ 1 ]
    TOKENS_FOLLOWING_type_IN_parameters_342 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_parameters_344 = Set[ 1, 30 ]
    TOKENS_FOLLOWING_T__30_IN_parameters_347 = Set[ 4, 24, 31, 32, 33, 34 ]
    TOKENS_FOLLOWING_type_IN_parameters_349 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_parameters_351 = Set[ 1, 30 ]
    TOKENS_FOLLOWING_set_IN_primitivetype_371 = Set[ 1 ]
    TOKENS_FOLLOWING_primitivetype_IN_arraytype_401 = Set[ 35 ]
    TOKENS_FOLLOWING_T__35_IN_arraytype_403 = Set[ 5 ]
    TOKENS_FOLLOWING_INTEGER_IN_arraytype_405 = Set[ 36 ]
    TOKENS_FOLLOWING_T__36_IN_arraytype_407 = Set[ 1 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_classtype_426 = Set[ 1 ]
    TOKENS_FOLLOWING_primitivetype_IN_type_449 = Set[ 1 ]
    TOKENS_FOLLOWING_arraytype_IN_type_453 = Set[ 1 ]
    TOKENS_FOLLOWING_classtype_IN_type_461 = Set[ 1 ]
    TOKENS_FOLLOWING_assignment_IN_statement_473 = Set[ 1 ]
    TOKENS_FOLLOWING_conditional_IN_statement_478 = Set[ 1 ]
    TOKENS_FOLLOWING_invocation_IN_statement_482 = Set[ 29 ]
    TOKENS_FOLLOWING_T__29_IN_statement_484 = Set[ 1 ]
    TOKENS_FOLLOWING_loop_IN_statement_488 = Set[ 1 ]
    TOKENS_FOLLOWING_print_IN_statement_492 = Set[ 1 ]
    TOKENS_FOLLOWING_returnstmt_IN_statement_496 = Set[ 1 ]
    TOKENS_FOLLOWING_T__29_IN_statement_500 = Set[ 1 ]
    TOKENS_FOLLOWING_lhsassignment_IN_assignment_511 = Set[ 37 ]
    TOKENS_FOLLOWING_T__37_IN_assignment_513 = Set[ 4, 5, 9, 10, 26, 39, 40, 46, 47, 48 ]
    TOKENS_FOLLOWING_rhsassignment_IN_assignment_515 = Set[ 29 ]
    TOKENS_FOLLOWING_T__29_IN_assignment_517 = Set[ 1 ]
    TOKENS_FOLLOWING_arrayaccess_IN_lhsassignment_528 = Set[ 1 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_lhsassignment_534 = Set[ 38 ]
    TOKENS_FOLLOWING_T__38_IN_lhsassignment_536 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_lhsassignment_538 = Set[ 1 ]
    TOKENS_FOLLOWING_T__39_IN_lhsassignment_545 = Set[ 38 ]
    TOKENS_FOLLOWING_T__38_IN_lhsassignment_547 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_lhsassignment_549 = Set[ 1 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_lhsassignment_557 = Set[ 1 ]
    TOKENS_FOLLOWING_expression_IN_rhsassignment_579 = Set[ 1 ]
    TOKENS_FOLLOWING_T__40_IN_rhsassignment_593 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_rhsassignment_595 = Set[ 26 ]
    TOKENS_FOLLOWING_T__26_IN_rhsassignment_597 = Set[ 27 ]
    TOKENS_FOLLOWING_T__27_IN_rhsassignment_599 = Set[ 1 ]
    TOKENS_FOLLOWING_T__41_IN_returnstmt_613 = Set[ 4, 5, 9, 10, 26, 29, 39, 46, 47, 48 ]
    TOKENS_FOLLOWING_expression_IN_returnstmt_615 = Set[ 29 ]
    TOKENS_FOLLOWING_T__29_IN_returnstmt_618 = Set[ 1 ]
    TOKENS_FOLLOWING_T__42_IN_conditional_630 = Set[ 26 ]
    TOKENS_FOLLOWING_T__26_IN_conditional_632 = Set[ 4, 5, 9, 10, 26, 39, 46, 47, 48 ]
    TOKENS_FOLLOWING_expression_IN_conditional_634 = Set[ 27 ]
    TOKENS_FOLLOWING_T__27_IN_conditional_636 = Set[ 21 ]
    TOKENS_FOLLOWING_T__21_IN_conditional_648 = Set[ 4, 22, 29, 39, 41, 42, 44, 45 ]
    TOKENS_FOLLOWING_statement_IN_conditional_650 = Set[ 4, 22, 29, 39, 41, 42, 44, 45 ]
    TOKENS_FOLLOWING_T__22_IN_conditional_653 = Set[ 1, 43 ]
    TOKENS_FOLLOWING_T__43_IN_conditional_661 = Set[ 21 ]
    TOKENS_FOLLOWING_T__21_IN_conditional_673 = Set[ 4, 22, 29, 39, 41, 42, 44, 45 ]
    TOKENS_FOLLOWING_statement_IN_conditional_675 = Set[ 4, 22, 29, 39, 41, 42, 44, 45 ]
    TOKENS_FOLLOWING_T__22_IN_conditional_678 = Set[ 1 ]
    TOKENS_FOLLOWING_T__44_IN_loop_699 = Set[ 26 ]
    TOKENS_FOLLOWING_T__26_IN_loop_713 = Set[ 4, 5, 9, 10, 26, 39, 46, 47, 48 ]
    TOKENS_FOLLOWING_expression_IN_loop_715 = Set[ 27 ]
    TOKENS_FOLLOWING_T__27_IN_loop_717 = Set[ 21 ]
    TOKENS_FOLLOWING_T__21_IN_loop_731 = Set[ 4, 22, 29, 39, 41, 42, 44, 45 ]
    TOKENS_FOLLOWING_statement_IN_loop_733 = Set[ 4, 22, 29, 39, 41, 42, 44, 45 ]
    TOKENS_FOLLOWING_T__22_IN_loop_736 = Set[ 1 ]
    TOKENS_FOLLOWING_T__45_IN_print_755 = Set[ 26 ]
    TOKENS_FOLLOWING_T__26_IN_print_757 = Set[ 4, 5, 9, 10, 26, 39, 46, 47, 48 ]
    TOKENS_FOLLOWING_expression_IN_print_759 = Set[ 27 ]
    TOKENS_FOLLOWING_T__27_IN_print_761 = Set[ 29 ]
    TOKENS_FOLLOWING_T__29_IN_print_763 = Set[ 1 ]
    TOKENS_FOLLOWING_exp_IN_expression_774 = Set[ 1, 6 ]
    TOKENS_FOLLOWING_COMPARITIONOPERATORS_IN_expression_777 = Set[ 4, 5, 9, 10, 26, 39, 46, 47, 48 ]
    TOKENS_FOLLOWING_exp_IN_expression_791 = Set[ 1 ]
    TOKENS_FOLLOWING_term_IN_exp_817 = Set[ 1, 7 ]
    TOKENS_FOLLOWING_ADDITIONSUBSTRACTIONOPERATORS_IN_exp_820 = Set[ 4, 5, 9, 10, 26, 39, 46, 47, 48 ]
    TOKENS_FOLLOWING_term_IN_exp_847 = Set[ 1, 7 ]
    TOKENS_FOLLOWING_factor_IN_term_885 = Set[ 1, 8 ]
    TOKENS_FOLLOWING_MULTIPLICATIONDIVISIONOPERATORS_IN_term_888 = Set[ 4, 5, 9, 10, 26, 39, 46, 47, 48 ]
    TOKENS_FOLLOWING_factor_IN_term_915 = Set[ 1, 8 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_factor_955 = Set[ 38 ]
    TOKENS_FOLLOWING_T__38_IN_factor_957 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_factor_959 = Set[ 1 ]
    TOKENS_FOLLOWING_T__39_IN_factor_966 = Set[ 38 ]
    TOKENS_FOLLOWING_T__38_IN_factor_968 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_factor_970 = Set[ 1 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_factor_978 = Set[ 1 ]
    TOKENS_FOLLOWING_INTEGER_IN_factor_989 = Set[ 1 ]
    TOKENS_FOLLOWING_FLOAT_IN_factor_1002 = Set[ 1 ]
    TOKENS_FOLLOWING_CHAR_IN_factor_1014 = Set[ 1 ]
    TOKENS_FOLLOWING_read_IN_factor_1026 = Set[ 1 ]
    TOKENS_FOLLOWING_invocation_IN_factor_1032 = Set[ 1 ]
    TOKENS_FOLLOWING_arrayaccess_IN_factor_1038 = Set[ 1 ]
    TOKENS_FOLLOWING_T__26_IN_factor_1047 = Set[ 4, 5, 9, 10, 26, 39, 46, 47, 48 ]
    TOKENS_FOLLOWING_expression_IN_factor_1059 = Set[ 27 ]
    TOKENS_FOLLOWING_T__27_IN_factor_1066 = Set[ 1 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_arrayaccess_1083 = Set[ 35 ]
    TOKENS_FOLLOWING_T__35_IN_arrayaccess_1084 = Set[ 4, 5, 9, 10, 26, 39, 46, 47, 48 ]
    TOKENS_FOLLOWING_expression_IN_arrayaccess_1086 = Set[ 36 ]
    TOKENS_FOLLOWING_T__36_IN_arrayaccess_1088 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_read_1097 = Set[ 26 ]
    TOKENS_FOLLOWING_T__26_IN_read_1109 = Set[ 27 ]
    TOKENS_FOLLOWING_T__27_IN_read_1111 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_invocation_1121 = Set[ 38 ]
    TOKENS_FOLLOWING_T__38_IN_invocation_1129 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_invocation_1131 = Set[ 26 ]
    TOKENS_FOLLOWING_T__26_IN_invocation_1133 = Set[ 4, 5, 9, 10, 26, 27, 39, 46, 47, 48 ]
    TOKENS_FOLLOWING_arguments_IN_invocation_1135 = Set[ 27 ]
    TOKENS_FOLLOWING_T__27_IN_invocation_1138 = Set[ 1 ]
    TOKENS_FOLLOWING_expression_IN_arguments_1148 = Set[ 1, 30 ]
    TOKENS_FOLLOWING_T__30_IN_arguments_1151 = Set[ 4, 5, 9, 10, 26, 39, 46, 47, 48 ]
    TOKENS_FOLLOWING_expression_IN_arguments_1153 = Set[ 1, 30 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0
end

