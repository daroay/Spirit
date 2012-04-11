#!/usr/bin/env ruby
#
# Spirit.g
# --
# Generated using ANTLR version: 3.2.1-SNAPSHOT Jul 31, 2010 19:34:52
# Ruby runtime library version: 1.8.11
# Input grammar file: Spirit.g
# Generated at: 2012-04-10 23:45:54
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



  #TODO
  #Herencia
  #Serializar ClassSymbol, MethodSymbol y VariableSymbol
  #Arreglos
  #En la VM la primera variable local de un metodo es igual al indicado en el gsb (self)
  #DUDAS: Valores iniciales de las instance variables

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
    attr_accessor :name, :instance_methods, :parent_class, :instance_variables
    
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
      if(@instance_variables[key].nil?)
        @instance_variables[key] = vs
      else
        raise "Variable '#{key}' was previously declared"
      end
    end
    
  end
  
  #Contiene tipo de retorno, lista de variables locales, lista de variables de parametro, 
  class MethodSymbol
    attr_accessor :name, :return_type, :parameter_variables, :container_class, :local_variables, :starting_fourfold
    attr_accessor :parameter_list
    
    START_ADDRESS = 1000
    FINISH_ADDRESS = 1999
    
    
    def initialize(n, r = nil, c = nil)
      @name = n #String
      @return_type = r #ClassSymbol
      @container_class = c #ClassSymbol
      @local_variables = Hash.new #VariableSymbol
      @parameter_variables = Hash.new #VariableSymbol
      @parameter_list = Array.new #VariableSymbol
      @next_variable_address = START_ADDRESS
    end
    
    def set_to_local_variables(key, vs)
      vs.address = @next_variable_address
      @next_variable_address += 1
      if(@local_variables[key].nil?)
        @local_variables[key] = vs
      else
        raise "Variable '#{key}' was previously declared"
      end
    end
    
    def set_to_parameter_variables(key, vs)
      if(@parameter_variables[key].nil?)
        @parameter_variables[key] = vs
        @parameter_list << vs
        set_to_local_variables(key, vs)
      else
        raise "Parameter '#{key}' was previously declared"
      end
    end
    
    def parameter_count
      parameter_variables.count
    end
    
    def variable_count
      local_variables.count
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
                   :CHAR => 10, :FLOAT => 9, :EOF => -1, :ADDITIONSUBSTRACTIONOPERATORS => 7, 
                   :ESC_SEQ => 13, :IDENTIFIER => 4, :MULTIPLICATIONDIVISIONOPERATORS => 8, 
                   :T__42 => 42, :INTEGER => 5, :T__43 => 43, :T__40 => 40, 
                   :T__41 => 41, :T__46 => 46, :T__47 => 47, :T__44 => 44, 
                   :T__45 => 45, :T__48 => 48, :T__49 => 49, :UNICODE_ESC => 18, 
                   :BOOL => 11, :HEX_DIGIT => 17, :T__30 => 30, :T__31 => 31, 
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
                    "BOOL", "ARRAYIDENTIFIER", "ESC_SEQ", "EXPONENT", "WS", 
                    "STRING", "HEX_DIGIT", "UNICODE_ESC", "OCTAL_ESC", "'class'", 
                    "'Main'", "'{'", "'}'", "'method'", "'void'", "'main'", 
                    "'('", "')'", "'extends'", "';'", "','", "'int'", "'char'", 
                    "'float'", "'boolean'", "'['", "']'", "'='", "'.'", 
                    "'this'", "'new'", "'return'", "'if'", "'else'", "'while'", 
                    "'print'", "'iread'", "'fread'", "'cread'" )
    
  end


  class Parser < ANTLR3::Parser
    @grammar_home = Spirit

    RULE_METHODS = [ :goal, :mainclass, :methodmain, :classdeclaration, 
                     :inherits, :vardeclaration, :methoddeclaration, :parameters, 
                     :parameter, :primitivetype, :arraytype, :classtype, 
                     :type, :statement, :assignment, :lhsassignment, :rhsassignment, 
                     :returnstmt, :returnsomething, :conditional, :loop, 
                     :print, :expression, :exp, :term, :factor, :arrayaccess, 
                     :read, :iread, :fread, :cread, :invocation, :calledclassbyinstance, 
                     :arguments ].freeze


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
        @classes['void'] = ClassSymbol.new('void')
        @current_class = nil
        @current_method = nil
        @current_instance = nil
        
        def validate_existing_class(cl)
          if(@classes[cl].nil?)
            raise "Class #{cl} is non existent (inside #{@current_class.name}::#{@current_method.name if @current_method})"
      	  end
        end

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
        @cont = 1
        
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
        
        
        def fill(index,value)
          #Es menos uno pues hay un corrimiento de tuplas cuando insertamos Starting Fourfold Main
          @fourfold[index - 1][3] = value
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
    # 280:1: goal : ( classdeclaration )* mainclass ;
    # 
    def goal
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )

      begin
        # at line 281:5: ( classdeclaration )* mainclass
        # at line 281:5: ( classdeclaration )*
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
            # at line 281:5: classdeclaration
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

        	      @fourfold.insert(0, ['gto',nil,nil, @classes['Main'].instance_methods['main'].starting_fourfold])
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
    # 288:1: mainclass : 'class' 'Main' '{' ( vardeclaration )* ( assignment )* ( methoddeclaration )* methodmain '}' ;
    # 
    def mainclass
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )

      begin
        # at line 289:4: 'class' 'Main' '{' ( vardeclaration )* ( assignment )* ( methoddeclaration )* methodmain '}'
        match( T__20, TOKENS_FOLLOWING_T__20_IN_mainclass_83 )
        match( T__21, TOKENS_FOLLOWING_T__21_IN_mainclass_89 )
        # --> action

        	    @classes['Main'] = ClassSymbol.new('Main')
        	    @current_class = @classes['Main']
        	  
        # <-- action
        match( T__22, TOKENS_FOLLOWING_T__22_IN_mainclass_101 )
        # at line 296:4: ( vardeclaration )*
        while true # decision 2
          alt_2 = 2
          look_2_0 = @input.peek( 1 )

          if ( look_2_0 == IDENTIFIER )
            look_2_1 = @input.peek( 2 )

            if ( look_2_1 == IDENTIFIER )
              alt_2 = 1

            end
          elsif ( look_2_0 == T__25 || look_2_0.between?( T__32, T__35 ) )
            alt_2 = 1

          end
          case alt_2
          when 1
            # at line 296:4: vardeclaration
            @state.following.push( TOKENS_FOLLOWING_vardeclaration_IN_mainclass_107 )
            vardeclaration
            @state.following.pop

          else
            break # out of loop for decision 2
          end
        end # loop for decision 2
        # at line 297:4: ( assignment )*
        while true # decision 3
          alt_3 = 2
          look_3_0 = @input.peek( 1 )

          if ( look_3_0 == IDENTIFIER || look_3_0 == T__40 )
            alt_3 = 1

          end
          case alt_3
          when 1
            # at line 297:4: assignment
            @state.following.push( TOKENS_FOLLOWING_assignment_IN_mainclass_113 )
            assignment
            @state.following.pop

          else
            break # out of loop for decision 3
          end
        end # loop for decision 3
        # at line 298:4: ( methoddeclaration )*
        while true # decision 4
          alt_4 = 2
          look_4_0 = @input.peek( 1 )

          if ( look_4_0 == T__24 )
            look_4_1 = @input.peek( 2 )

            if ( look_4_1 == T__25 )
              look_4_2 = @input.peek( 3 )

              if ( look_4_2 == IDENTIFIER )
                alt_4 = 1

              end
            elsif ( look_4_1 == IDENTIFIER || look_4_1.between?( T__32, T__35 ) )
              alt_4 = 1

            end

          end
          case alt_4
          when 1
            # at line 298:4: methoddeclaration
            @state.following.push( TOKENS_FOLLOWING_methoddeclaration_IN_mainclass_119 )
            methoddeclaration
            @state.following.pop

          else
            break # out of loop for decision 4
          end
        end # loop for decision 4
        @state.following.push( TOKENS_FOLLOWING_methodmain_IN_mainclass_126 )
        methodmain
        @state.following.pop
        match( T__23, TOKENS_FOLLOWING_T__23_IN_mainclass_132 )
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
    # 305:1: methodmain : 'method' 'void' 'main' '(' ')' '{' ( vardeclaration )* ( statement )* '}' ;
    # 
    def methodmain
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )

      begin
        # at line 306:4: 'method' 'void' 'main' '(' ')' '{' ( vardeclaration )* ( statement )* '}'
        match( T__24, TOKENS_FOLLOWING_T__24_IN_methodmain_147 )
        match( T__25, TOKENS_FOLLOWING_T__25_IN_methodmain_153 )
        match( T__26, TOKENS_FOLLOWING_T__26_IN_methodmain_159 )
        # --> action
         
        	    @current_class.instance_methods['main'] = MethodSymbol.new('main', 'void', @current_class)
        	    @current_method = @current_class.instance_methods['main']
        	    
        	    #Creamos una instancia de main para evitarnos los metodos estaticos
        	    @current_method.set_to_local_variables('_m',VariableSymbol.new('_m', 'Main'))
        	    @current_instance = @current_method.local_variables.values.first
        	    
        	    @current_method.starting_fourfold = @cont
        	  
        # <-- action
        match( T__27, TOKENS_FOLLOWING_T__27_IN_methodmain_170 )
        match( T__28, TOKENS_FOLLOWING_T__28_IN_methodmain_172 )
        match( T__22, TOKENS_FOLLOWING_T__22_IN_methodmain_174 )
        # at line 319:16: ( vardeclaration )*
        while true # decision 5
          alt_5 = 2
          look_5_0 = @input.peek( 1 )

          if ( look_5_0 == IDENTIFIER )
            look_5_1 = @input.peek( 2 )

            if ( look_5_1 == IDENTIFIER )
              alt_5 = 1

            end
          elsif ( look_5_0 == T__25 || look_5_0.between?( T__32, T__35 ) )
            alt_5 = 1

          end
          case alt_5
          when 1
            # at line 319:16: vardeclaration
            @state.following.push( TOKENS_FOLLOWING_vardeclaration_IN_methodmain_176 )
            vardeclaration
            @state.following.pop

          else
            break # out of loop for decision 5
          end
        end # loop for decision 5
        # at line 319:32: ( statement )*
        while true # decision 6
          alt_6 = 2
          look_6_0 = @input.peek( 1 )

          if ( look_6_0 == IDENTIFIER || look_6_0 == T__30 || look_6_0 == T__40 || look_6_0.between?( T__42, T__43 ) || look_6_0.between?( T__45, T__46 ) )
            alt_6 = 1

          end
          case alt_6
          when 1
            # at line 319:32: statement
            @state.following.push( TOKENS_FOLLOWING_statement_IN_methodmain_179 )
            statement
            @state.following.pop

          else
            break # out of loop for decision 6
          end
        end # loop for decision 6
        match( T__23, TOKENS_FOLLOWING_T__23_IN_methodmain_182 )
        # --> action

        	    generate('hlt',nil,nil,nil)
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
    # 325:1: classdeclaration : 'class' IDENTIFIER ( inherits )? '{' ( vardeclaration )* ( assignment )* ( methoddeclaration )* '}' ;
    # 
    def classdeclaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )
      __IDENTIFIER1__ = nil

      begin
        # at line 326:5: 'class' IDENTIFIER ( inherits )? '{' ( vardeclaration )* ( assignment )* ( methoddeclaration )* '}'
        match( T__20, TOKENS_FOLLOWING_T__20_IN_classdeclaration_199 )
        __IDENTIFIER1__ = match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_classdeclaration_206 )
        # --> action

        	      @classes[__IDENTIFIER1__.text] = ClassSymbol.new(__IDENTIFIER1__.text)
        	      @current_class = @classes[__IDENTIFIER1__.text]
        	    
        # <-- action
        # at line 332:6: ( inherits )?
        alt_7 = 2
        look_7_0 = @input.peek( 1 )

        if ( look_7_0 == T__29 )
          alt_7 = 1
        end
        case alt_7
        when 1
          # at line 332:6: inherits
          @state.following.push( TOKENS_FOLLOWING_inherits_IN_classdeclaration_220 )
          inherits
          @state.following.pop

        end
        match( T__22, TOKENS_FOLLOWING_T__22_IN_classdeclaration_230 )
        # at line 334:6: ( vardeclaration )*
        while true # decision 8
          alt_8 = 2
          look_8_0 = @input.peek( 1 )

          if ( look_8_0 == IDENTIFIER )
            look_8_1 = @input.peek( 2 )

            if ( look_8_1 == IDENTIFIER )
              alt_8 = 1

            end
          elsif ( look_8_0 == T__25 || look_8_0.between?( T__32, T__35 ) )
            alt_8 = 1

          end
          case alt_8
          when 1
            # at line 334:6: vardeclaration
            @state.following.push( TOKENS_FOLLOWING_vardeclaration_IN_classdeclaration_237 )
            vardeclaration
            @state.following.pop

          else
            break # out of loop for decision 8
          end
        end # loop for decision 8
        # at line 335:6: ( assignment )*
        while true # decision 9
          alt_9 = 2
          look_9_0 = @input.peek( 1 )

          if ( look_9_0 == IDENTIFIER || look_9_0 == T__40 )
            alt_9 = 1

          end
          case alt_9
          when 1
            # at line 335:6: assignment
            @state.following.push( TOKENS_FOLLOWING_assignment_IN_classdeclaration_245 )
            assignment
            @state.following.pop

          else
            break # out of loop for decision 9
          end
        end # loop for decision 9
        # at line 336:6: ( methoddeclaration )*
        while true # decision 10
          alt_10 = 2
          look_10_0 = @input.peek( 1 )

          if ( look_10_0 == T__24 )
            alt_10 = 1

          end
          case alt_10
          when 1
            # at line 336:6: methoddeclaration
            @state.following.push( TOKENS_FOLLOWING_methoddeclaration_IN_classdeclaration_254 )
            methoddeclaration
            @state.following.pop

          else
            break # out of loop for decision 10
          end
        end # loop for decision 10
        match( T__23, TOKENS_FOLLOWING_T__23_IN_classdeclaration_262 )
        # --> action

        	      @current_class = nil
        	    
        # <-- action

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
    # 343:1: inherits : 'extends' IDENTIFIER ;
    # 
    def inherits
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )

      begin
        # at line 344:4: 'extends' IDENTIFIER
        match( T__29, TOKENS_FOLLOWING_T__29_IN_inherits_285 )
        match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_inherits_287 )
        # --> action

        	
        # <-- action

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
    # 349:1: vardeclaration : t= type IDENTIFIER ';' ;
    # 
    def vardeclaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )
      __IDENTIFIER2__ = nil
      t = nil

      begin
        # at line 350:4: t= type IDENTIFIER ';'
        @state.following.push( TOKENS_FOLLOWING_type_IN_vardeclaration_305 )
        t = type
        @state.following.pop
        __IDENTIFIER2__ = match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_vardeclaration_307 )
        # --> action

        	    validate_existing_class(t)
        	    if(not @current_method.nil?)
        	      @current_method.set_to_local_variables(__IDENTIFIER2__.text,VariableSymbol.new(__IDENTIFIER2__.text, t))
        	    else
        	      @current_class.set_to_instance_variables(__IDENTIFIER2__.text, VariableSymbol.new(__IDENTIFIER2__.text, t))
        	    end
        	  
        # <-- action
        match( T__30, TOKENS_FOLLOWING_T__30_IN_vardeclaration_317 )

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
    # 362:1: methoddeclaration : 'method' (t= primitivetype | t= classtype ) IDENTIFIER '(' ( parameters )? ')' '{' ( vardeclaration )* ( statement )* '}' ;
    # 
    def methoddeclaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )
      __IDENTIFIER3__ = nil
      t = nil

      begin
        # at line 363:5: 'method' (t= primitivetype | t= classtype ) IDENTIFIER '(' ( parameters )? ')' '{' ( vardeclaration )* ( statement )* '}'
        match( T__24, TOKENS_FOLLOWING_T__24_IN_methoddeclaration_329 )
        # at line 364:6: (t= primitivetype | t= classtype )
        alt_11 = 2
        look_11_0 = @input.peek( 1 )

        if ( look_11_0 == T__25 || look_11_0.between?( T__32, T__35 ) )
          alt_11 = 1
        elsif ( look_11_0 == IDENTIFIER )
          alt_11 = 2
        else
          raise NoViableAlternative( "", 11, 0 )
        end
        case alt_11
        when 1
          # at line 364:7: t= primitivetype
          @state.following.push( TOKENS_FOLLOWING_primitivetype_IN_methoddeclaration_342 )
          t = primitivetype
          @state.following.pop

        when 2
          # at line 364:27: t= classtype
          @state.following.push( TOKENS_FOLLOWING_classtype_IN_methoddeclaration_350 )
          t = classtype
          @state.following.pop

        end
        __IDENTIFIER3__ = match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_methoddeclaration_358 )
        # --> action
         
        	      validate_existing_class(t)
        	      @current_class.instance_methods[__IDENTIFIER3__.text] = MethodSymbol.new(__IDENTIFIER3__.text, t, @current_class)
        	      @current_method = @current_class.instance_methods[__IDENTIFIER3__.text]
        	      
        	      #Creamos una instancia en el metodo para saber a que instancia pertenece
        	      @current_method.set_to_local_variables('_ci',VariableSymbol.new('_ci', __IDENTIFIER3__.text))
        	      @current_instance = @current_method.local_variables.values.first
        	      
        	      @current_method.starting_fourfold = @cont
        	    
        # <-- action
        match( T__27, TOKENS_FOLLOWING_T__27_IN_methoddeclaration_372 )
        # at line 378:6: ( parameters )?
        alt_12 = 2
        look_12_0 = @input.peek( 1 )

        if ( look_12_0 == IDENTIFIER || look_12_0 == T__25 || look_12_0.between?( T__32, T__35 ) )
          alt_12 = 1
        end
        case alt_12
        when 1
          # at line 378:6: parameters
          @state.following.push( TOKENS_FOLLOWING_parameters_IN_methoddeclaration_379 )
          parameters
          @state.following.pop

        end
        match( T__28, TOKENS_FOLLOWING_T__28_IN_methoddeclaration_387 )
        match( T__22, TOKENS_FOLLOWING_T__22_IN_methoddeclaration_395 )
        # at line 381:6: ( vardeclaration )*
        while true # decision 13
          alt_13 = 2
          look_13_0 = @input.peek( 1 )

          if ( look_13_0 == IDENTIFIER )
            look_13_1 = @input.peek( 2 )

            if ( look_13_1 == IDENTIFIER )
              alt_13 = 1

            end
          elsif ( look_13_0 == T__25 || look_13_0.between?( T__32, T__35 ) )
            alt_13 = 1

          end
          case alt_13
          when 1
            # at line 381:6: vardeclaration
            @state.following.push( TOKENS_FOLLOWING_vardeclaration_IN_methoddeclaration_403 )
            vardeclaration
            @state.following.pop

          else
            break # out of loop for decision 13
          end
        end # loop for decision 13
        # at line 382:6: ( statement )*
        while true # decision 14
          alt_14 = 2
          look_14_0 = @input.peek( 1 )

          if ( look_14_0 == IDENTIFIER || look_14_0 == T__30 || look_14_0 == T__40 || look_14_0.between?( T__42, T__43 ) || look_14_0.between?( T__45, T__46 ) )
            alt_14 = 1

          end
          case alt_14
          when 1
            # at line 382:6: statement
            @state.following.push( TOKENS_FOLLOWING_statement_IN_methoddeclaration_412 )
            statement
            @state.following.pop

          else
            break # out of loop for decision 14
          end
        end # loop for decision 14
        match( T__23, TOKENS_FOLLOWING_T__23_IN_methoddeclaration_421 )
        # --> action

        	      if(@current_method.return_type == 'void')
        	        generate('ret', nil, nil, nil)
        	        @is_returning = true
        	      end
        	      unless(@is_returning)
        	        raise "Method #{@current_class.name}::#{@current_method.name} should return #{@current_method.return_type}"
        	      end
        	      @is_returning = nil
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
    # 398:1: parameters : parameter ( ',' parameter )* ;
    # 
    def parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )

      begin
        # at line 399:5: parameter ( ',' parameter )*
        @state.following.push( TOKENS_FOLLOWING_parameter_IN_parameters_447 )
        parameter
        @state.following.pop
        # at line 399:15: ( ',' parameter )*
        while true # decision 15
          alt_15 = 2
          look_15_0 = @input.peek( 1 )

          if ( look_15_0 == T__31 )
            alt_15 = 1

          end
          case alt_15
          when 1
            # at line 399:16: ',' parameter
            match( T__31, TOKENS_FOLLOWING_T__31_IN_parameters_450 )
            @state.following.push( TOKENS_FOLLOWING_parameter_IN_parameters_452 )
            parameter
            @state.following.pop

          else
            break # out of loop for decision 15
          end
        end # loop for decision 15

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
    # parser rule parameter
    # 
    # (in Spirit.g)
    # 401:1: parameter : t= type IDENTIFIER ;
    # 
    def parameter
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )
      __IDENTIFIER4__ = nil
      t = nil

      begin
        # at line 402:6: t= type IDENTIFIER
        @state.following.push( TOKENS_FOLLOWING_type_IN_parameter_470 )
        t = type
        @state.following.pop
        __IDENTIFIER4__ = match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_parameter_477 )
        # --> action

               @current_method.set_to_parameter_variables(__IDENTIFIER4__.text,VariableSymbol.new(__IDENTIFIER4__.text, t))
             
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 9 )

      end
      
      return 
    end


    # 
    # parser rule primitivetype
    # 
    # (in Spirit.g)
    # 408:1: primitivetype returns [type_a] : t= ( 'int' | 'char' | 'float' | 'boolean' | 'void' ) ;
    # 
    def primitivetype
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )
      type_a = nil
      t = nil

      begin
        # at line 410:2: t= ( 'int' | 'char' | 'float' | 'boolean' | 'void' )
        t = @input.look
        if @input.peek(1) == T__25 || @input.peek( 1 ).between?( T__32, T__35 )
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
        # trace_out( __method__, 10 )

      end
      
      return type_a
    end


    # 
    # parser rule arraytype
    # 
    # (in Spirit.g)
    # 415:1: arraytype : primitivetype '[' INTEGER ']' ;
    # 
    def arraytype
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )

      begin
        # at line 416:4: primitivetype '[' INTEGER ']'
        @state.following.push( TOKENS_FOLLOWING_primitivetype_IN_arraytype_534 )
        primitivetype
        @state.following.pop
        match( T__36, TOKENS_FOLLOWING_T__36_IN_arraytype_536 )
        match( INTEGER, TOKENS_FOLLOWING_INTEGER_IN_arraytype_538 )
        match( T__37, TOKENS_FOLLOWING_T__37_IN_arraytype_540 )

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
    # parser rule classtype
    # 
    # (in Spirit.g)
    # 418:1: classtype returns [type_a] : t= IDENTIFIER ;
    # 
    def classtype
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )
      type_a = nil
      t = nil

      begin
        # at line 420:2: t= IDENTIFIER
        t = match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_classtype_559 )
        # --> action

        	  type_a = t.text
        	
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
    # parser rule type
    # 
    # (in Spirit.g)
    # 426:1: type returns [type_a] : (t= primitivetype | arraytype | t= classtype ) ;
    # 
    def type
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )
      type_a = nil
      t = nil

      begin
        # at line 428:2: (t= primitivetype | arraytype | t= classtype )
        # at line 428:2: (t= primitivetype | arraytype | t= classtype )
        alt_16 = 3
        look_16_0 = @input.peek( 1 )

        if ( look_16_0 == T__25 || look_16_0.between?( T__32, T__35 ) )
          look_16_1 = @input.peek( 2 )

          if ( look_16_1 == IDENTIFIER )
            alt_16 = 1
          elsif ( look_16_1 == T__36 )
            alt_16 = 2
          else
            raise NoViableAlternative( "", 16, 1 )
          end
        elsif ( look_16_0 == IDENTIFIER )
          alt_16 = 3
        else
          raise NoViableAlternative( "", 16, 0 )
        end
        case alt_16
        when 1
          # at line 428:3: t= primitivetype
          @state.following.push( TOKENS_FOLLOWING_primitivetype_IN_type_586 )
          t = primitivetype
          @state.following.pop

        when 2
          # at line 428:23: arraytype
          @state.following.push( TOKENS_FOLLOWING_arraytype_IN_type_590 )
          arraytype
          @state.following.pop

        when 3
          # at line 428:35: t= classtype
          @state.following.push( TOKENS_FOLLOWING_classtype_IN_type_598 )
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
        # trace_out( __method__, 13 )

      end
      
      return type_a
    end


    # 
    # parser rule statement
    # 
    # (in Spirit.g)
    # 434:1: statement : ( assignment | conditional | invocation ';' | loop | print | returnstmt | ';' );
    # 
    def statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )

      begin
        # at line 435:2: ( assignment | conditional | invocation ';' | loop | print | returnstmt | ';' )
        alt_17 = 7
        alt_17 = @dfa17.predict( @input )
        case alt_17
        when 1
          # at line 435:4: assignment
          @state.following.push( TOKENS_FOLLOWING_assignment_IN_statement_614 )
          assignment
          @state.following.pop

        when 2
          # at line 435:18: conditional
          @state.following.push( TOKENS_FOLLOWING_conditional_IN_statement_619 )
          conditional
          @state.following.pop

        when 3
          # at line 435:32: invocation ';'
          @state.following.push( TOKENS_FOLLOWING_invocation_IN_statement_623 )
          invocation
          @state.following.pop
          match( T__30, TOKENS_FOLLOWING_T__30_IN_statement_625 )

        when 4
          # at line 435:49: loop
          @state.following.push( TOKENS_FOLLOWING_loop_IN_statement_629 )
          loop
          @state.following.pop

        when 5
          # at line 435:56: print
          @state.following.push( TOKENS_FOLLOWING_print_IN_statement_633 )
          print
          @state.following.pop

        when 6
          # at line 435:64: returnstmt
          @state.following.push( TOKENS_FOLLOWING_returnstmt_IN_statement_637 )
          returnstmt
          @state.following.pop

        when 7
          # at line 435:77: ';'
          match( T__30, TOKENS_FOLLOWING_T__30_IN_statement_641 )

        end
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
    # parser rule assignment
    # 
    # (in Spirit.g)
    # 437:1: assignment : lhsassignment '=' rhsassignment ';' ;
    # 
    def assignment
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )

      begin
        # at line 438:4: lhsassignment '=' rhsassignment ';'
        @state.following.push( TOKENS_FOLLOWING_lhsassignment_IN_assignment_652 )
        lhsassignment
        @state.following.pop
        match( T__38, TOKENS_FOLLOWING_T__38_IN_assignment_654 )
        @state.following.push( TOKENS_FOLLOWING_rhsassignment_IN_assignment_656 )
        rhsassignment
        @state.following.pop
        match( T__30, TOKENS_FOLLOWING_T__30_IN_assignment_658 )

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
    # parser rule lhsassignment
    # 
    # (in Spirit.g)
    # 440:1: lhsassignment : ( arrayaccess | IDENTIFIER '.' IDENTIFIER | 'this' '.' IDENTIFIER | IDENTIFIER );
    # 
    def lhsassignment
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )
      __IDENTIFIER5__ = nil
      __IDENTIFIER6__ = nil

      begin
        # at line 441:2: ( arrayaccess | IDENTIFIER '.' IDENTIFIER | 'this' '.' IDENTIFIER | IDENTIFIER )
        alt_18 = 4
        look_18_0 = @input.peek( 1 )

        if ( look_18_0 == IDENTIFIER )
          case look_18 = @input.peek( 2 )
          when T__36 then alt_18 = 1
          when T__39 then alt_18 = 2
          when T__38 then alt_18 = 4
          else
            raise NoViableAlternative( "", 18, 1 )
          end
        elsif ( look_18_0 == T__40 )
          alt_18 = 3
        else
          raise NoViableAlternative( "", 18, 0 )
        end
        case alt_18
        when 1
          # at line 441:5: arrayaccess
          @state.following.push( TOKENS_FOLLOWING_arrayaccess_IN_lhsassignment_669 )
          arrayaccess
          @state.following.pop

        when 2
          # at line 442:5: IDENTIFIER '.' IDENTIFIER
          match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_lhsassignment_675 )
          match( T__39, TOKENS_FOLLOWING_T__39_IN_lhsassignment_677 )
          match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_lhsassignment_679 )

        when 3
          # at line 443:5: 'this' '.' IDENTIFIER
          match( T__40, TOKENS_FOLLOWING_T__40_IN_lhsassignment_686 )
          match( T__39, TOKENS_FOLLOWING_T__39_IN_lhsassignment_688 )
          __IDENTIFIER5__ = match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_lhsassignment_690 )
          # --> action

          		    if( not @current_class.instance_variables[__IDENTIFIER5__.text].nil?)
          			  	@stack_operands.push(@current_class.instance_variables[__IDENTIFIER5__.text].address)
          			  	@stack_types.push(@current_class.instance_variables[__IDENTIFIER5__.text].type)
          			  else
          			    raise "Variable #{__IDENTIFIER5__.text} not declared as instance of #{@current_class.name}"
          			  end
          		  
          # <-- action

        when 4
          # at line 452:5: IDENTIFIER
          __IDENTIFIER6__ = match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_lhsassignment_702 )
          # --> action

          	      # Verificar que exista en algun scope y meterlo en pila de operandos
          			  if(not @current_method.nil?)
          			    if(not @current_method.local_variables[__IDENTIFIER6__.text].nil?)
          			      @stack_operands.push(@current_method.local_variables[__IDENTIFIER6__.text].address)
          			      @stack_types.push(@current_method.local_variables[__IDENTIFIER6__.text].type)
          			    elsif( not @current_class.instance_variables[__IDENTIFIER6__.text].nil?)
          			      @stack_operands.push(@current_class.instance_variables[__IDENTIFIER6__.text].address)
          			      @stack_types.push(@current_class.instance_variables[__IDENTIFIER6__.text].type)
          			    else
          			      raise "Variable #{__IDENTIFIER6__.text} not declared neither in #{@current_class.name} or its method #{@current_method.name}"
          			    end
          			  else
          			  	if( not @current_class.instance_variables[__IDENTIFIER6__.text].nil?)
          			  	  @stack_operands.push(@current_class.instance_variables[__IDENTIFIER6__.text].address)
          			  	  @stack_types.push(@current_class.instance_variables[__IDENTIFIER6__.text].type)
          			    else
          			      raise "Variable #{__IDENTIFIER6__.text} not declared as instance of #{@current_class.name}"
          			    end
          			  end
          	    
          # <-- action

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
    # parser rule rhsassignment
    # 
    # (in Spirit.g)
    # 476:1: rhsassignment : ( expression | 'new' IDENTIFIER '(' ')' );
    # 
    def rhsassignment
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )
      __IDENTIFIER7__ = nil

      begin
        # at line 477:2: ( expression | 'new' IDENTIFIER '(' ')' )
        alt_19 = 2
        look_19_0 = @input.peek( 1 )

        if ( look_19_0.between?( IDENTIFIER, INTEGER ) || look_19_0.between?( FLOAT, BOOL ) || look_19_0 == T__27 || look_19_0 == T__40 || look_19_0.between?( T__47, T__49 ) )
          alt_19 = 1
        elsif ( look_19_0 == T__41 )
          alt_19 = 2
        else
          raise NoViableAlternative( "", 19, 0 )
        end
        case alt_19
        when 1
          # at line 477:8: expression
          @state.following.push( TOKENS_FOLLOWING_expression_IN_rhsassignment_728 )
          expression
          @state.following.pop
          # --> action

                    rh = @stack_operands.pop
                    rh_t = @stack_types.pop
                    lh = @stack_operands.pop
                    lh_t = @stack_types.pop
                    if(lh_t != rh_t)
                      raise "Tried to assign #{rh_t} to #{lh_t} in #{@current_class.name}::#{@current_method.name if @current_method}"
                    end
                    generate('=', rh, nil ,lh )
                    free_avail(rh)
                    free_avail_const(rh)
                  
          # <-- action

        when 2
          # at line 490:9: 'new' IDENTIFIER '(' ')'
          match( T__41, TOKENS_FOLLOWING_T__41_IN_rhsassignment_749 )
          __IDENTIFIER7__ = match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_rhsassignment_759 )
          match( T__27, TOKENS_FOLLOWING_T__27_IN_rhsassignment_769 )
          match( T__28, TOKENS_FOLLOWING_T__28_IN_rhsassignment_770 )
          # --> action

                    rh_t = __IDENTIFIER7__.text
                    lh = @stack_operands.pop
                    lh_t = @stack_types.pop
                    if(lh_t != rh_t)
                      raise "Tried to assign #{rh_t} to #{lh_t} in #{@current_class.name}::#{@current_method.name if @current_method}"
                    end
                    generate('new', rh_t, nil ,lh )
                  
          # <-- action

        end
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
    # parser rule returnstmt
    # 
    # (in Spirit.g)
    # 504:1: returnstmt : 'return' ( returnsomething )? ';' ;
    # 
    def returnstmt
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )

      begin
        # at line 505:4: 'return' ( returnsomething )? ';'
        match( T__42, TOKENS_FOLLOWING_T__42_IN_returnstmt_794 )
        # at line 505:13: ( returnsomething )?
        alt_20 = 2
        look_20_0 = @input.peek( 1 )

        if ( look_20_0.between?( IDENTIFIER, INTEGER ) || look_20_0.between?( FLOAT, BOOL ) || look_20_0 == T__27 || look_20_0 == T__40 || look_20_0.between?( T__47, T__49 ) )
          alt_20 = 1
        end
        case alt_20
        when 1
          # at line 505:13: returnsomething
          @state.following.push( TOKENS_FOLLOWING_returnsomething_IN_returnstmt_796 )
          returnsomething
          @state.following.pop

        end
        match( T__30, TOKENS_FOLLOWING_T__30_IN_returnstmt_799 )

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
    # parser rule returnsomething
    # 
    # (in Spirit.g)
    # 508:1: returnsomething : expression ;
    # 
    def returnsomething
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )

      begin
        # at line 510:5: expression
        @state.following.push( TOKENS_FOLLOWING_expression_IN_returnsomething_822 )
        expression
        @state.following.pop
        # --> action

            	rt = @stack_operands.pop
              rt_t = @stack_types.pop
              if(rt_t != @current_method.return_type)
                raise "Invalid return type #{rt_t} in the #{@current_method.return_type} type method #{@current_class.name}::#{@current_method.name}"
              end
              generate('ret', nil, nil ,rt )
              @is_returning = true
              free_avail(rt)
              free_avail_const(rt)
              
            
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
    # parser rule conditional
    # 
    # (in Spirit.g)
    # 525:1: conditional : 'if' '(' expression ')' '{' ( statement )* '}' ( 'else' '{' ( statement )* '}' )? ;
    # 
    def conditional
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )

      begin
        # at line 526:5: 'if' '(' expression ')' '{' ( statement )* '}' ( 'else' '{' ( statement )* '}' )?
        match( T__43, TOKENS_FOLLOWING_T__43_IN_conditional_843 )
        match( T__27, TOKENS_FOLLOWING_T__27_IN_conditional_845 )
        @state.following.push( TOKENS_FOLLOWING_expression_IN_conditional_847 )
        expression
        @state.following.pop
        match( T__28, TOKENS_FOLLOWING_T__28_IN_conditional_849 )
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
        match( T__22, TOKENS_FOLLOWING_T__22_IN_conditional_861 )
        # at line 537:9: ( statement )*
        while true # decision 21
          alt_21 = 2
          look_21_0 = @input.peek( 1 )

          if ( look_21_0 == IDENTIFIER || look_21_0 == T__30 || look_21_0 == T__40 || look_21_0.between?( T__42, T__43 ) || look_21_0.between?( T__45, T__46 ) )
            alt_21 = 1

          end
          case alt_21
          when 1
            # at line 537:9: statement
            @state.following.push( TOKENS_FOLLOWING_statement_IN_conditional_863 )
            statement
            @state.following.pop

          else
            break # out of loop for decision 21
          end
        end # loop for decision 21
        match( T__23, TOKENS_FOLLOWING_T__23_IN_conditional_866 )
        # at line 538:5: ( 'else' '{' ( statement )* '}' )?
        alt_23 = 2
        look_23_0 = @input.peek( 1 )

        if ( look_23_0 == T__44 )
          alt_23 = 1
        end
        case alt_23
        when 1
          # at line 538:6: 'else' '{' ( statement )* '}'
          match( T__44, TOKENS_FOLLOWING_T__44_IN_conditional_874 )
          # --> action

          	     generate('gto', nil, nil, '_')
          	     false_result = @stack_jumps.pop
          	     fill(false_result, @cont)
          	     @stack_jumps.push(@cont - 1)
          	   
          # <-- action
          match( T__22, TOKENS_FOLLOWING_T__22_IN_conditional_886 )
          # at line 545:9: ( statement )*
          while true # decision 22
            alt_22 = 2
            look_22_0 = @input.peek( 1 )

            if ( look_22_0 == IDENTIFIER || look_22_0 == T__30 || look_22_0 == T__40 || look_22_0.between?( T__42, T__43 ) || look_22_0.between?( T__45, T__46 ) )
              alt_22 = 1

            end
            case alt_22
            when 1
              # at line 545:9: statement
              @state.following.push( TOKENS_FOLLOWING_statement_IN_conditional_888 )
              statement
              @state.following.pop

            else
              break # out of loop for decision 22
            end
          end # loop for decision 22
          match( T__23, TOKENS_FOLLOWING_T__23_IN_conditional_891 )

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
        # trace_out( __method__, 20 )

      end
      
      return 
    end


    # 
    # parser rule loop
    # 
    # (in Spirit.g)
    # 551:1: loop : 'while' '(' expression ')' '{' ( statement )* '}' ;
    # 
    def loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )

      begin
        # at line 552:5: 'while' '(' expression ')' '{' ( statement )* '}'
        match( T__45, TOKENS_FOLLOWING_T__45_IN_loop_912 )
        # --> action

        	      @stack_jumps.push(@cont)
        	    
        # <-- action
        match( T__27, TOKENS_FOLLOWING_T__27_IN_loop_926 )
        @state.following.push( TOKENS_FOLLOWING_expression_IN_loop_928 )
        expression
        @state.following.pop
        match( T__28, TOKENS_FOLLOWING_T__28_IN_loop_930 )
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
        match( T__22, TOKENS_FOLLOWING_T__22_IN_loop_944 )
        # at line 567:10: ( statement )*
        while true # decision 24
          alt_24 = 2
          look_24_0 = @input.peek( 1 )

          if ( look_24_0 == IDENTIFIER || look_24_0 == T__30 || look_24_0 == T__40 || look_24_0.between?( T__42, T__43 ) || look_24_0.between?( T__45, T__46 ) )
            alt_24 = 1

          end
          case alt_24
          when 1
            # at line 567:10: statement
            @state.following.push( TOKENS_FOLLOWING_statement_IN_loop_946 )
            statement
            @state.following.pop

          else
            break # out of loop for decision 24
          end
        end # loop for decision 24
        match( T__23, TOKENS_FOLLOWING_T__23_IN_loop_949 )
        # --> action

        	      false_result = @stack_jumps.pop
        	      return_result = @stack_jumps.pop
        	      generate('gto', nil, nil, return_result)
        	      fill(false_result, @cont)
        	    
        # <-- action

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
    # parser rule print
    # 
    # (in Spirit.g)
    # 575:1: print : 'print' '(' expression ')' ';' ;
    # 
    def print
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )

      begin
        # at line 577:4: 'print' '(' expression ')' ';'
        match( T__46, TOKENS_FOLLOWING_T__46_IN_print_972 )
        match( T__27, TOKENS_FOLLOWING_T__27_IN_print_974 )
        @state.following.push( TOKENS_FOLLOWING_expression_IN_print_976 )
        expression
        @state.following.pop
        # --> action

        	    pr = @stack_operands.pop
              pr_t = @stack_types.pop
              generate('prt', nil, nil ,pr )
              free_avail(pr)
              free_avail_const(pr)
        	  
        # <-- action
        match( T__28, TOKENS_FOLLOWING_T__28_IN_print_989 )
        match( T__30, TOKENS_FOLLOWING_T__30_IN_print_991 )

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
    # parser rule expression
    # 
    # (in Spirit.g)
    # 587:1: expression : exp ( COMPARITIONOPERATORS exp )? ;
    # 
    def expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )
      __COMPARITIONOPERATORS8__ = nil

      begin
        # at line 588:5: exp ( COMPARITIONOPERATORS exp )?
        @state.following.push( TOKENS_FOLLOWING_exp_IN_expression_1002 )
        exp
        @state.following.pop
        # at line 588:9: ( COMPARITIONOPERATORS exp )?
        alt_25 = 2
        look_25_0 = @input.peek( 1 )

        if ( look_25_0 == COMPARITIONOPERATORS )
          alt_25 = 1
        end
        case alt_25
        when 1
          # at line 588:10: COMPARITIONOPERATORS exp
          __COMPARITIONOPERATORS8__ = match( COMPARITIONOPERATORS, TOKENS_FOLLOWING_COMPARITIONOPERATORS_IN_expression_1005 )
          # --> action
           #Regla 8
          	      @stack_operators.push(__COMPARITIONOPERATORS8__.text)
          	    
          # <-- action
          @state.following.push( TOKENS_FOLLOWING_exp_IN_expression_1019 )
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
        # trace_out( __method__, 23 )

      end
      
      return 
    end


    # 
    # parser rule exp
    # 
    # (in Spirit.g)
    # 608:1: exp : term ( ADDITIONSUBSTRACTIONOPERATORS term )* ;
    # 
    def exp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )
      __ADDITIONSUBSTRACTIONOPERATORS9__ = nil

      begin
        # at line 609:5: term ( ADDITIONSUBSTRACTIONOPERATORS term )*
        @state.following.push( TOKENS_FOLLOWING_term_IN_exp_1045 )
        term
        @state.following.pop
        # at line 609:10: ( ADDITIONSUBSTRACTIONOPERATORS term )*
        while true # decision 26
          alt_26 = 2
          look_26_0 = @input.peek( 1 )

          if ( look_26_0 == ADDITIONSUBSTRACTIONOPERATORS )
            alt_26 = 1

          end
          case alt_26
          when 1
            # at line 609:11: ADDITIONSUBSTRACTIONOPERATORS term
            __ADDITIONSUBSTRACTIONOPERATORS9__ = match( ADDITIONSUBSTRACTIONOPERATORS, TOKENS_FOLLOWING_ADDITIONSUBSTRACTIONOPERATORS_IN_exp_1048 )
            # --> action
             #Regla 2 GC
                         @stack_operators.push(__ADDITIONSUBSTRACTIONOPERATORS9__.text)
                       
            # <-- action
            @state.following.push( TOKENS_FOLLOWING_term_IN_exp_1075 )
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
            break # out of loop for decision 26
          end
        end # loop for decision 26

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
    # parser rule term
    # 
    # (in Spirit.g)
    # 633:1: term : factor ( MULTIPLICATIONDIVISIONOPERATORS factor )* ;
    # 
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )
      __MULTIPLICATIONDIVISIONOPERATORS10__ = nil

      begin
        # at line 634:5: factor ( MULTIPLICATIONDIVISIONOPERATORS factor )*
        @state.following.push( TOKENS_FOLLOWING_factor_IN_term_1113 )
        factor
        @state.following.pop
        # at line 634:12: ( MULTIPLICATIONDIVISIONOPERATORS factor )*
        while true # decision 27
          alt_27 = 2
          look_27_0 = @input.peek( 1 )

          if ( look_27_0 == MULTIPLICATIONDIVISIONOPERATORS )
            alt_27 = 1

          end
          case alt_27
          when 1
            # at line 634:13: MULTIPLICATIONDIVISIONOPERATORS factor
            __MULTIPLICATIONDIVISIONOPERATORS10__ = match( MULTIPLICATIONDIVISIONOPERATORS, TOKENS_FOLLOWING_MULTIPLICATIONDIVISIONOPERATORS_IN_term_1116 )
            # --> action
             #Regla 3 GC
            		           @stack_operators.push(__MULTIPLICATIONDIVISIONOPERATORS10__.text)
            		         
            # <-- action
            @state.following.push( TOKENS_FOLLOWING_factor_IN_term_1143 )
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
            break # out of loop for decision 27
          end
        end # loop for decision 27

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
    # parser rule factor
    # 
    # (in Spirit.g)
    # 658:1: factor : ( 'this' '.' IDENTIFIER | IDENTIFIER | INTEGER | FLOAT | CHAR | BOOL | read | t= invocation | arrayaccess | '(' expression ')' );
    # 
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )
      __IDENTIFIER11__ = nil
      __IDENTIFIER12__ = nil
      __INTEGER13__ = nil
      __FLOAT14__ = nil
      __CHAR15__ = nil
      __BOOL16__ = nil
      t = nil

      begin
        # at line 659:2: ( 'this' '.' IDENTIFIER | IDENTIFIER | INTEGER | FLOAT | CHAR | BOOL | read | t= invocation | arrayaccess | '(' expression ')' )
        alt_28 = 10
        alt_28 = @dfa28.predict( @input )
        case alt_28
        when 1
          # at line 660:5: 'this' '.' IDENTIFIER
          match( T__40, TOKENS_FOLLOWING_T__40_IN_factor_1185 )
          match( T__39, TOKENS_FOLLOWING_T__39_IN_factor_1187 )
          __IDENTIFIER11__ = match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_factor_1189 )
          # --> action

          		    if( not @current_class.instance_variables[__IDENTIFIER11__.text].nil?)
          			    @stack_operands.push(@current_class.instance_variables[__IDENTIFIER11__.text].address)
          			    @stack_types.push(@current_class.instance_variables[__IDENTIFIER11__.text].type)
          			  else
          		      raise "Variable #{__IDENTIFIER11__.text} not declared as instance of #{@current_class.name}"
          		    end
          		
          		  
          # <-- action

        when 2
          # at line 670:5: IDENTIFIER
          __IDENTIFIER12__ = match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_factor_1201 )
          # --> action
           #Regla 1 GC / Regla 1 VS
          			  # Verificar que exista en algun scope y meterlo en pila de operandos
          			  if(not @current_method.nil?)
          			    if(not @current_method.local_variables[__IDENTIFIER12__.text].nil?)
          			      @stack_operands.push(@current_method.local_variables[__IDENTIFIER12__.text].address)
          			      @stack_types.push(@current_method.local_variables[__IDENTIFIER12__.text].type)
          			    elsif( not @current_class.instance_variables[__IDENTIFIER12__.text].nil?)
          			      @stack_operands.push(@current_class.instance_variables[__IDENTIFIER12__.text].address)
          			      @stack_types.push(@current_class.instance_variables[__IDENTIFIER12__.text].type)
          			    else
          			      raise "Variable #{__IDENTIFIER12__.text} not declared neither in #{@current_class.name} or its method #{@current_method.name}"
          			    end
          			  else
          			  	if( not @current_class.instance_variables[__IDENTIFIER12__.text].nil?)
          			  	  @stack_operands.push(@current_class.instance_variables[__IDENTIFIER12__.text].address)
          			  	  @stack_types.push(@current_class.instance_variables[__IDENTIFIER12__.text].type)
          			    else
          			      raise "Variable #{__IDENTIFIER12__.text} not declared as instance of #{@current_class.name}"
          			    end
          			  end
          			
          # <-- action

        when 3
          # at line 692:5: INTEGER
          __INTEGER13__ = match( INTEGER, TOKENS_FOLLOWING_INTEGER_IN_factor_1212 )
          # --> action
           #Regla 1 GC
          		    dir_const = get_avail_const
          		    generate('ict', __INTEGER13__.text, nil, dir_const )
          				@stack_operands.push(dir_const)
          				@stack_types.push('int')
          		  
          # <-- action

        when 4
          # at line 699:5: FLOAT
          __FLOAT14__ = match( FLOAT, TOKENS_FOLLOWING_FLOAT_IN_factor_1225 )
          # --> action
           #Regla 1 GC
          		    dir_const = get_avail_const
          		    generate('fct', __FLOAT14__.text, nil, dir_const )
          				@stack_operands.push(dir_const)
          				@stack_types.push('float')
          		  
          # <-- action

        when 5
          # at line 706:5: CHAR
          __CHAR15__ = match( CHAR, TOKENS_FOLLOWING_CHAR_IN_factor_1237 )
          # --> action
           #Regla 1 GC
          		    dir_const = get_avail_const
          		    generate('cct', __CHAR15__.text, nil, dir_const )
          				@stack_operands.push(dir_const)
          				@stack_types.push('char')
          		  
          # <-- action

        when 6
          # at line 714:5: BOOL
          __BOOL16__ = match( BOOL, TOKENS_FOLLOWING_BOOL_IN_factor_1253 )
          # --> action

          		    dir_const = get_avail_const
          		    generate('bct', __BOOL16__.text, nil, dir_const )
          				@stack_operands.push(dir_const)
          				@stack_types.push('boolean')
          		  
          # <-- action

        when 7
          # at line 721:5: read
          @state.following.push( TOKENS_FOLLOWING_read_IN_factor_1265 )
          read
          @state.following.pop

        when 8
          # at line 722:5: t= invocation
          @state.following.push( TOKENS_FOLLOWING_invocation_IN_factor_1275 )
          t = invocation
          @state.following.pop
          # --> action

          		  	dir_const = get_avail_const
          		    generate('get', nil, nil, dir_const)
          				@stack_operands.push(dir_const)
          				@stack_types.push(t)
          		  
          # <-- action

        when 9
          # at line 729:5: arrayaccess
          @state.following.push( TOKENS_FOLLOWING_arrayaccess_IN_factor_1287 )
          arrayaccess
          @state.following.pop
          # --> action

          		  #Pending
          		
          # <-- action

        when 10
          # at line 733:5: '(' expression ')'
          match( T__27, TOKENS_FOLLOWING_T__27_IN_factor_1297 )
          # --> action
           #Regla 6 GC
          		    @stack_operators.push('(')
          		  
          # <-- action
          @state.following.push( TOKENS_FOLLOWING_expression_IN_factor_1309 )
          expression
          @state.following.pop
          match( T__28, TOKENS_FOLLOWING_T__28_IN_factor_1316 )
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
        # trace_out( __method__, 26 )

      end
      
      return 
    end


    # 
    # parser rule arrayaccess
    # 
    # (in Spirit.g)
    # 744:1: arrayaccess : IDENTIFIER '[' expression ']' ;
    # 
    def arrayaccess
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )

      begin
        # at line 745:4: IDENTIFIER '[' expression ']'
        match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_arrayaccess_1333 )
        match( T__36, TOKENS_FOLLOWING_T__36_IN_arrayaccess_1334 )
        @state.following.push( TOKENS_FOLLOWING_expression_IN_arrayaccess_1336 )
        expression
        @state.following.pop
        match( T__37, TOKENS_FOLLOWING_T__37_IN_arrayaccess_1338 )

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
    # parser rule read
    # 
    # (in Spirit.g)
    # 747:1: read : ( iread | fread | cread );
    # 
    def read
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )

      begin
        # at line 748:3: ( iread | fread | cread )
        alt_29 = 3
        case look_29 = @input.peek( 1 )
        when T__47 then alt_29 = 1
        when T__48 then alt_29 = 2
        when T__49 then alt_29 = 3
        else
          raise NoViableAlternative( "", 29, 0 )
        end
        case alt_29
        when 1
          # at line 749:5: iread
          @state.following.push( TOKENS_FOLLOWING_iread_IN_read_1356 )
          iread
          @state.following.pop

        when 2
          # at line 750:7: fread
          @state.following.push( TOKENS_FOLLOWING_fread_IN_read_1364 )
          fread
          @state.following.pop

        when 3
          # at line 751:7: cread
          @state.following.push( TOKENS_FOLLOWING_cread_IN_read_1372 )
          cread
          @state.following.pop

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 28 )

      end
      
      return 
    end


    # 
    # parser rule iread
    # 
    # (in Spirit.g)
    # 754:1: iread : 'iread' '(' ')' ;
    # 
    def iread
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 29 )

      begin
        # at line 756:5: 'iread' '(' ')'
        match( T__47, TOKENS_FOLLOWING_T__47_IN_iread_1397 )
        match( T__27, TOKENS_FOLLOWING_T__27_IN_iread_1404 )
        match( T__28, TOKENS_FOLLOWING_T__28_IN_iread_1406 )
        # --> action

              dir_const = get_avail_const
              generate('ird',nil,nil,dir_const)
        		  @stack_operands.push(dir_const)
        			@stack_types.push('int')
            
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 29 )

      end
      
      return 
    end


    # 
    # parser rule fread
    # 
    # (in Spirit.g)
    # 766:1: fread : 'fread' '(' ')' ;
    # 
    def fread
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 30 )

      begin
        # at line 768:5: 'fread' '(' ')'
        match( T__48, TOKENS_FOLLOWING_T__48_IN_fread_1431 )
        match( T__27, TOKENS_FOLLOWING_T__27_IN_fread_1438 )
        match( T__28, TOKENS_FOLLOWING_T__28_IN_fread_1440 )
        # --> action

              dir_const = get_avail_const
              generate('frd',nil,nil,dir_const)
        		  @stack_operands.push(dir_const)
        			@stack_types.push('float')
            
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 30 )

      end
      
      return 
    end


    # 
    # parser rule cread
    # 
    # (in Spirit.g)
    # 778:1: cread : 'cread' '(' ')' ;
    # 
    def cread
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 31 )

      begin
        # at line 780:5: 'cread' '(' ')'
        match( T__49, TOKENS_FOLLOWING_T__49_IN_cread_1465 )
        match( T__27, TOKENS_FOLLOWING_T__27_IN_cread_1472 )
        match( T__28, TOKENS_FOLLOWING_T__28_IN_cread_1474 )
        # --> action

              dir_const = get_avail_const
              generate('crd',nil,nil,dir_const)
        		  @stack_operands.push(dir_const)
        			@stack_types.push('char')
            
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 31 )

      end
      
      return 
    end


    # 
    # parser rule invocation
    # 
    # (in Spirit.g)
    # 790:1: invocation returns [type_a] : calledclassbyinstance IDENTIFIER '(' ( arguments )? ')' ;
    # 
    def invocation
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 32 )
      type_a = nil
      __IDENTIFIER17__ = nil

      begin
        # at line 792:5: calledclassbyinstance IDENTIFIER '(' ( arguments )? ')'
        @state.following.push( TOKENS_FOLLOWING_calledclassbyinstance_IN_invocation_1499 )
        calledclassbyinstance
        @state.following.pop
        __IDENTIFIER17__ = match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_invocation_1505 )
        # --> action

        	     if(@class_called.instance_methods[__IDENTIFIER17__.text].nil?)
        	       raise "Method #{__IDENTIFIER17__.text} dont exist for instances of class #{@class_called.name} (inside #{@current_class.name}::#{@current_method.name if @current_method})"
        	     end
        	     @method_called = @class_called.instance_methods[__IDENTIFIER17__.text]
        	     generate('era', nil, @class_called.name, @method_called.name)
        	   
        # <-- action
        match( T__27, TOKENS_FOLLOWING_T__27_IN_invocation_1517 )
        # at line 802:5: ( arguments )?
        alt_30 = 2
        look_30_0 = @input.peek( 1 )

        if ( look_30_0.between?( IDENTIFIER, INTEGER ) || look_30_0.between?( FLOAT, BOOL ) || look_30_0 == T__27 || look_30_0 == T__40 || look_30_0.between?( T__47, T__49 ) )
          alt_30 = 1
        end
        case alt_30
        when 1
          # at line 802:5: arguments
          @state.following.push( TOKENS_FOLLOWING_arguments_IN_invocation_1523 )
          arguments
          @state.following.pop

        end
        match( T__28, TOKENS_FOLLOWING_T__28_IN_invocation_1530 )
        # --> action

        	     generate('gsb', @instance_called.address, @class_called.name, @method_called.name)
        	     type_a =  @method_called.return_type
        	     @instance_called = nil
        	     @method_called = nil;
        	     @class_called = nil;
        	   
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 32 )

      end
      
      return type_a
    end


    # 
    # parser rule calledclassbyinstance
    # 
    # (in Spirit.g)
    # 813:1: calledclassbyinstance : ( (t= IDENTIFIER | t= 'this' ) '.' )? ;
    # 
    def calledclassbyinstance
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 33 )
      t = nil

      begin
        # at line 814:5: ( (t= IDENTIFIER | t= 'this' ) '.' )?
        # at line 814:5: ( (t= IDENTIFIER | t= 'this' ) '.' )?
        alt_32 = 2
        look_32_0 = @input.peek( 1 )

        if ( look_32_0 == IDENTIFIER )
          look_32_1 = @input.peek( 2 )

          if ( look_32_1 == T__39 )
            alt_32 = 1
          end
        elsif ( look_32_0 == T__40 )
          alt_32 = 1
        end
        case alt_32
        when 1
          # at line 814:6: (t= IDENTIFIER | t= 'this' ) '.'
          # at line 814:6: (t= IDENTIFIER | t= 'this' )
          alt_31 = 2
          look_31_0 = @input.peek( 1 )

          if ( look_31_0 == IDENTIFIER )
            alt_31 = 1
          elsif ( look_31_0 == T__40 )
            alt_31 = 2
          else
            raise NoViableAlternative( "", 31, 0 )
          end
          case alt_31
          when 1
            # at line 814:7: t= IDENTIFIER
            t = match( IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_calledclassbyinstance_1555 )

          when 2
            # at line 814:24: t= 'this'
            t = match( T__40, TOKENS_FOLLOWING_T__40_IN_calledclassbyinstance_1563 )

          end
          match( T__39, TOKENS_FOLLOWING_T__39_IN_calledclassbyinstance_1566 )

        end
        # --> action

              if(t.nil? || t.text == 'this')
                @class_called = @current_class
                @instance_called = @current_instance
              else
                @instance_called = @current_method.local_variables[t.text] || @current_class.instance_variables[t.text]
                if(!@instance_called)
                  raise "Variable '#{t.text}' not declared as instance of anything (inside #{@current_class.name}::#{@current_method.name if @current_method})"
                end
                @class_called = @classes[@instance_called.type] 
              end
            
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 33 )

      end
      
      return 
    end


    # 
    # parser rule arguments
    # 
    # (in Spirit.g)
    # 831:1: arguments : expression ( ',' expression )* ;
    # 
    def arguments
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 34 )

      begin
        # at line 832:4: expression ( ',' expression )*
        @state.following.push( TOKENS_FOLLOWING_expression_IN_arguments_1593 )
        expression
        @state.following.pop
        # --> action

        	    @argument_counter = 0
        	    argument = @stack_operands.pop 
        	    argument_type = @stack_types.pop
        	    if(@method_called.parameter_count <= @argument_counter)
        	      raise "There are more arguments than parameters in #{@class_called.name}::#{@method_called.name} (inside #{@current_class.name}::#{@current_method.name})"
        	    end
        	    parameter_type = @method_called.parameter_list[@argument_counter].type
        	    if(argument_type != parameter_type)
        	      raise "Argument '#{@argument_counter + 1}' in method #{@class_called.name}::#{@method_called.name} is not '#{parameter_type}' (inside #{@current_class.name}::#{@current_method.name})"
        	    end
        	    @argument_counter += 1
        	    #Los prm empiezan en 1 pues el 0 le pertenece a self
        	    generate('prm', nil,argument, @argument_counter)
        	  
        # <-- action
        # at line 848:4: ( ',' expression )*
        while true # decision 33
          alt_33 = 2
          look_33_0 = @input.peek( 1 )

          if ( look_33_0 == T__31 )
            alt_33 = 1

          end
          case alt_33
          when 1
            # at line 849:7: ',' expression
            match( T__31, TOKENS_FOLLOWING_T__31_IN_arguments_1611 )
            @state.following.push( TOKENS_FOLLOWING_expression_IN_arguments_1620 )
            expression
            @state.following.pop
            # --> action

            	      argument = @stack_operands.pop 
            	      argument_type = @stack_types.pop
              	    if(@method_called.parameter_count <= @argument_counter)
            	        raise "There are more arguments than parameters in #{@class_called.name}::#{@method_called.name} (inside #{@current_class.name}::#{@current_method.name})"
            	      end
            	      parameter_type = @method_called.parameter_list[@argument_counter].type
            	      if(argument_type != parameter_type)
            	        raise "Argument '#{@argument_counter + 1}' in method #{@class_called.name}::#{@method_called.name} is not '#{parameter_type}' (inside #{@current_class.name}::#{@current_method.name})"
            	      end
            	      @argument_counter += 1
            	      #Los prm empiezan en 1 pues el 0 le pertenece a self
            	      generate('prm', nil,argument, @argument_counter)
            	    
            # <-- action

          else
            break # out of loop for decision 33
          end
        end # loop for decision 33
        # --> action

        	    if(@method_called.parameter_count != @argument_counter)
        	        raise "There are less arguments than parameters in #{@class_called.name}::#{@method_called.name} (inside #{@current_class.name}::#{@current_method.name})"
        	    end
        	    @argument_counter = 0;
        	  
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 34 )

      end
      
      return 
    end



    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA17 < ANTLR3::DFA
      EOT = unpack( 14, -1 )
      EOF = unpack( 14, -1 )
      MIN = unpack( 1, 4, 1, 27, 1, 39, 6, -1, 1, 4, 1, -1, 1, 4, 2, 27 )
      MAX = unpack( 1, 46, 2, 39, 6, -1, 1, 4, 1, -1, 1, 4, 2, 38 )
      ACCEPT = unpack( 3, -1, 1, 2, 1, 4, 1, 5, 1, 6, 1, 7, 1, 1, 1, -1, 
                       1, 3, 3, -1 )
      SPECIAL = unpack( 14, -1 )
      TRANSITION = [
        unpack( 1, 1, 25, -1, 1, 7, 9, -1, 1, 2, 1, -1, 1, 6, 1, 3, 1, -1, 
                1, 4, 1, 5 ),
        unpack( 1, 10, 8, -1, 1, 8, 1, -1, 1, 8, 1, 9 ),
        unpack( 1, 11 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 12 ),
        unpack(  ),
        unpack( 1, 13 ),
        unpack( 1, 10, 10, -1, 1, 8 ),
        unpack( 1, 10, 10, -1, 1, 8 )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 17
      

      def description
        <<-'__dfa_description__'.strip!
          434:1: statement : ( assignment | conditional | invocation ';' | loop | print | returnstmt | ';' );
        __dfa_description__
      end
    end
    class DFA28 < ANTLR3::DFA
      EOT = unpack( 15, -1 )
      EOF = unpack( 15, -1 )
      MIN = unpack( 1, 4, 1, 39, 1, 6, 6, -1, 1, 4, 3, -1, 1, 6, 1, -1 )
      MAX = unpack( 1, 49, 2, 39, 6, -1, 1, 4, 3, -1, 1, 37, 1, -1 )
      ACCEPT = unpack( 3, -1, 1, 3, 1, 4, 1, 5, 1, 6, 1, 7, 1, 10, 1, -1, 
                       1, 9, 1, 2, 1, 8, 1, -1, 1, 1 )
      SPECIAL = unpack( 15, -1 )
      TRANSITION = [
        unpack( 1, 2, 1, 3, 3, -1, 1, 4, 1, 5, 1, 6, 15, -1, 1, 8, 12, -1, 
                1, 1, 6, -1, 3, 7 ),
        unpack( 1, 9 ),
        unpack( 3, 11, 18, -1, 1, 12, 1, 11, 1, -1, 2, 11, 4, -1, 1, 10, 
                 1, 11, 1, -1, 1, 12 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 13 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 3, 14, 18, -1, 1, 12, 1, 14, 1, -1, 2, 14, 5, -1, 1, 14 ),
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
          658:1: factor : ( 'this' '.' IDENTIFIER | IDENTIFIER | INTEGER | FLOAT | CHAR | BOOL | read | t= invocation | arrayaccess | '(' expression ')' );
        __dfa_description__
      end
    end


    private

    def initialize_dfas
      super rescue nil
      @dfa17 = DFA17.new( self, 17 )
      @dfa28 = DFA28.new( self, 28 )

    end
    TOKENS_FOLLOWING_classdeclaration_IN_goal_56 = Set[ 20 ]
    TOKENS_FOLLOWING_mainclass_IN_goal_65 = Set[ 1 ]
    TOKENS_FOLLOWING_T__20_IN_mainclass_83 = Set[ 21 ]
    TOKENS_FOLLOWING_T__21_IN_mainclass_89 = Set[ 22 ]
    TOKENS_FOLLOWING_T__22_IN_mainclass_101 = Set[ 4, 24, 25, 32, 33, 34, 35, 40 ]
    TOKENS_FOLLOWING_vardeclaration_IN_mainclass_107 = Set[ 4, 24, 25, 32, 33, 34, 35, 40 ]
    TOKENS_FOLLOWING_assignment_IN_mainclass_113 = Set[ 4, 24, 25, 32, 33, 34, 35, 40 ]
    TOKENS_FOLLOWING_methoddeclaration_IN_mainclass_119 = Set[ 4, 24, 25, 32, 33, 34, 35, 40 ]
    TOKENS_FOLLOWING_methodmain_IN_mainclass_126 = Set[ 23 ]
    TOKENS_FOLLOWING_T__23_IN_mainclass_132 = Set[ 1 ]
    TOKENS_FOLLOWING_T__24_IN_methodmain_147 = Set[ 25 ]
    TOKENS_FOLLOWING_T__25_IN_methodmain_153 = Set[ 26 ]
    TOKENS_FOLLOWING_T__26_IN_methodmain_159 = Set[ 27 ]
    TOKENS_FOLLOWING_T__27_IN_methodmain_170 = Set[ 28 ]
    TOKENS_FOLLOWING_T__28_IN_methodmain_172 = Set[ 22 ]
    TOKENS_FOLLOWING_T__22_IN_methodmain_174 = Set[ 4, 23, 25, 30, 32, 33, 34, 35, 40, 42, 43, 45, 46 ]
    TOKENS_FOLLOWING_vardeclaration_IN_methodmain_176 = Set[ 4, 23, 25, 30, 32, 33, 34, 35, 40, 42, 43, 45, 46 ]
    TOKENS_FOLLOWING_statement_IN_methodmain_179 = Set[ 4, 23, 30, 40, 42, 43, 45, 46 ]
    TOKENS_FOLLOWING_T__23_IN_methodmain_182 = Set[ 1 ]
    TOKENS_FOLLOWING_T__20_IN_classdeclaration_199 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_classdeclaration_206 = Set[ 22, 29 ]
    TOKENS_FOLLOWING_inherits_IN_classdeclaration_220 = Set[ 22 ]
    TOKENS_FOLLOWING_T__22_IN_classdeclaration_230 = Set[ 4, 23, 24, 25, 32, 33, 34, 35, 40 ]
    TOKENS_FOLLOWING_vardeclaration_IN_classdeclaration_237 = Set[ 4, 23, 24, 25, 32, 33, 34, 35, 40 ]
    TOKENS_FOLLOWING_assignment_IN_classdeclaration_245 = Set[ 4, 23, 24, 40 ]
    TOKENS_FOLLOWING_methoddeclaration_IN_classdeclaration_254 = Set[ 23, 24 ]
    TOKENS_FOLLOWING_T__23_IN_classdeclaration_262 = Set[ 1 ]
    TOKENS_FOLLOWING_T__29_IN_inherits_285 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_inherits_287 = Set[ 1 ]
    TOKENS_FOLLOWING_type_IN_vardeclaration_305 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_vardeclaration_307 = Set[ 30 ]
    TOKENS_FOLLOWING_T__30_IN_vardeclaration_317 = Set[ 1 ]
    TOKENS_FOLLOWING_T__24_IN_methoddeclaration_329 = Set[ 4, 25, 32, 33, 34, 35 ]
    TOKENS_FOLLOWING_primitivetype_IN_methoddeclaration_342 = Set[ 4 ]
    TOKENS_FOLLOWING_classtype_IN_methoddeclaration_350 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_methoddeclaration_358 = Set[ 27 ]
    TOKENS_FOLLOWING_T__27_IN_methoddeclaration_372 = Set[ 4, 25, 28, 32, 33, 34, 35 ]
    TOKENS_FOLLOWING_parameters_IN_methoddeclaration_379 = Set[ 28 ]
    TOKENS_FOLLOWING_T__28_IN_methoddeclaration_387 = Set[ 22 ]
    TOKENS_FOLLOWING_T__22_IN_methoddeclaration_395 = Set[ 4, 23, 25, 30, 32, 33, 34, 35, 40, 42, 43, 45, 46 ]
    TOKENS_FOLLOWING_vardeclaration_IN_methoddeclaration_403 = Set[ 4, 23, 25, 30, 32, 33, 34, 35, 40, 42, 43, 45, 46 ]
    TOKENS_FOLLOWING_statement_IN_methoddeclaration_412 = Set[ 4, 23, 30, 40, 42, 43, 45, 46 ]
    TOKENS_FOLLOWING_T__23_IN_methoddeclaration_421 = Set[ 1 ]
    TOKENS_FOLLOWING_parameter_IN_parameters_447 = Set[ 1, 31 ]
    TOKENS_FOLLOWING_T__31_IN_parameters_450 = Set[ 4, 25, 32, 33, 34, 35 ]
    TOKENS_FOLLOWING_parameter_IN_parameters_452 = Set[ 1, 31 ]
    TOKENS_FOLLOWING_type_IN_parameter_470 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_parameter_477 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_primitivetype_502 = Set[ 1 ]
    TOKENS_FOLLOWING_primitivetype_IN_arraytype_534 = Set[ 36 ]
    TOKENS_FOLLOWING_T__36_IN_arraytype_536 = Set[ 5 ]
    TOKENS_FOLLOWING_INTEGER_IN_arraytype_538 = Set[ 37 ]
    TOKENS_FOLLOWING_T__37_IN_arraytype_540 = Set[ 1 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_classtype_559 = Set[ 1 ]
    TOKENS_FOLLOWING_primitivetype_IN_type_586 = Set[ 1 ]
    TOKENS_FOLLOWING_arraytype_IN_type_590 = Set[ 1 ]
    TOKENS_FOLLOWING_classtype_IN_type_598 = Set[ 1 ]
    TOKENS_FOLLOWING_assignment_IN_statement_614 = Set[ 1 ]
    TOKENS_FOLLOWING_conditional_IN_statement_619 = Set[ 1 ]
    TOKENS_FOLLOWING_invocation_IN_statement_623 = Set[ 30 ]
    TOKENS_FOLLOWING_T__30_IN_statement_625 = Set[ 1 ]
    TOKENS_FOLLOWING_loop_IN_statement_629 = Set[ 1 ]
    TOKENS_FOLLOWING_print_IN_statement_633 = Set[ 1 ]
    TOKENS_FOLLOWING_returnstmt_IN_statement_637 = Set[ 1 ]
    TOKENS_FOLLOWING_T__30_IN_statement_641 = Set[ 1 ]
    TOKENS_FOLLOWING_lhsassignment_IN_assignment_652 = Set[ 38 ]
    TOKENS_FOLLOWING_T__38_IN_assignment_654 = Set[ 4, 5, 9, 10, 11, 27, 40, 41, 47, 48, 49 ]
    TOKENS_FOLLOWING_rhsassignment_IN_assignment_656 = Set[ 30 ]
    TOKENS_FOLLOWING_T__30_IN_assignment_658 = Set[ 1 ]
    TOKENS_FOLLOWING_arrayaccess_IN_lhsassignment_669 = Set[ 1 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_lhsassignment_675 = Set[ 39 ]
    TOKENS_FOLLOWING_T__39_IN_lhsassignment_677 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_lhsassignment_679 = Set[ 1 ]
    TOKENS_FOLLOWING_T__40_IN_lhsassignment_686 = Set[ 39 ]
    TOKENS_FOLLOWING_T__39_IN_lhsassignment_688 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_lhsassignment_690 = Set[ 1 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_lhsassignment_702 = Set[ 1 ]
    TOKENS_FOLLOWING_expression_IN_rhsassignment_728 = Set[ 1 ]
    TOKENS_FOLLOWING_T__41_IN_rhsassignment_749 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_rhsassignment_759 = Set[ 27 ]
    TOKENS_FOLLOWING_T__27_IN_rhsassignment_769 = Set[ 28 ]
    TOKENS_FOLLOWING_T__28_IN_rhsassignment_770 = Set[ 1 ]
    TOKENS_FOLLOWING_T__42_IN_returnstmt_794 = Set[ 4, 5, 9, 10, 11, 27, 30, 40, 47, 48, 49 ]
    TOKENS_FOLLOWING_returnsomething_IN_returnstmt_796 = Set[ 30 ]
    TOKENS_FOLLOWING_T__30_IN_returnstmt_799 = Set[ 1 ]
    TOKENS_FOLLOWING_expression_IN_returnsomething_822 = Set[ 1 ]
    TOKENS_FOLLOWING_T__43_IN_conditional_843 = Set[ 27 ]
    TOKENS_FOLLOWING_T__27_IN_conditional_845 = Set[ 4, 5, 9, 10, 11, 27, 40, 47, 48, 49 ]
    TOKENS_FOLLOWING_expression_IN_conditional_847 = Set[ 28 ]
    TOKENS_FOLLOWING_T__28_IN_conditional_849 = Set[ 22 ]
    TOKENS_FOLLOWING_T__22_IN_conditional_861 = Set[ 4, 23, 30, 40, 42, 43, 45, 46 ]
    TOKENS_FOLLOWING_statement_IN_conditional_863 = Set[ 4, 23, 30, 40, 42, 43, 45, 46 ]
    TOKENS_FOLLOWING_T__23_IN_conditional_866 = Set[ 1, 44 ]
    TOKENS_FOLLOWING_T__44_IN_conditional_874 = Set[ 22 ]
    TOKENS_FOLLOWING_T__22_IN_conditional_886 = Set[ 4, 23, 30, 40, 42, 43, 45, 46 ]
    TOKENS_FOLLOWING_statement_IN_conditional_888 = Set[ 4, 23, 30, 40, 42, 43, 45, 46 ]
    TOKENS_FOLLOWING_T__23_IN_conditional_891 = Set[ 1 ]
    TOKENS_FOLLOWING_T__45_IN_loop_912 = Set[ 27 ]
    TOKENS_FOLLOWING_T__27_IN_loop_926 = Set[ 4, 5, 9, 10, 11, 27, 40, 47, 48, 49 ]
    TOKENS_FOLLOWING_expression_IN_loop_928 = Set[ 28 ]
    TOKENS_FOLLOWING_T__28_IN_loop_930 = Set[ 22 ]
    TOKENS_FOLLOWING_T__22_IN_loop_944 = Set[ 4, 23, 30, 40, 42, 43, 45, 46 ]
    TOKENS_FOLLOWING_statement_IN_loop_946 = Set[ 4, 23, 30, 40, 42, 43, 45, 46 ]
    TOKENS_FOLLOWING_T__23_IN_loop_949 = Set[ 1 ]
    TOKENS_FOLLOWING_T__46_IN_print_972 = Set[ 27 ]
    TOKENS_FOLLOWING_T__27_IN_print_974 = Set[ 4, 5, 9, 10, 11, 27, 40, 47, 48, 49 ]
    TOKENS_FOLLOWING_expression_IN_print_976 = Set[ 28 ]
    TOKENS_FOLLOWING_T__28_IN_print_989 = Set[ 30 ]
    TOKENS_FOLLOWING_T__30_IN_print_991 = Set[ 1 ]
    TOKENS_FOLLOWING_exp_IN_expression_1002 = Set[ 1, 6 ]
    TOKENS_FOLLOWING_COMPARITIONOPERATORS_IN_expression_1005 = Set[ 4, 5, 9, 10, 11, 27, 40, 47, 48, 49 ]
    TOKENS_FOLLOWING_exp_IN_expression_1019 = Set[ 1 ]
    TOKENS_FOLLOWING_term_IN_exp_1045 = Set[ 1, 7 ]
    TOKENS_FOLLOWING_ADDITIONSUBSTRACTIONOPERATORS_IN_exp_1048 = Set[ 4, 5, 9, 10, 11, 27, 40, 47, 48, 49 ]
    TOKENS_FOLLOWING_term_IN_exp_1075 = Set[ 1, 7 ]
    TOKENS_FOLLOWING_factor_IN_term_1113 = Set[ 1, 8 ]
    TOKENS_FOLLOWING_MULTIPLICATIONDIVISIONOPERATORS_IN_term_1116 = Set[ 4, 5, 9, 10, 11, 27, 40, 47, 48, 49 ]
    TOKENS_FOLLOWING_factor_IN_term_1143 = Set[ 1, 8 ]
    TOKENS_FOLLOWING_T__40_IN_factor_1185 = Set[ 39 ]
    TOKENS_FOLLOWING_T__39_IN_factor_1187 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_factor_1189 = Set[ 1 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_factor_1201 = Set[ 1 ]
    TOKENS_FOLLOWING_INTEGER_IN_factor_1212 = Set[ 1 ]
    TOKENS_FOLLOWING_FLOAT_IN_factor_1225 = Set[ 1 ]
    TOKENS_FOLLOWING_CHAR_IN_factor_1237 = Set[ 1 ]
    TOKENS_FOLLOWING_BOOL_IN_factor_1253 = Set[ 1 ]
    TOKENS_FOLLOWING_read_IN_factor_1265 = Set[ 1 ]
    TOKENS_FOLLOWING_invocation_IN_factor_1275 = Set[ 1 ]
    TOKENS_FOLLOWING_arrayaccess_IN_factor_1287 = Set[ 1 ]
    TOKENS_FOLLOWING_T__27_IN_factor_1297 = Set[ 4, 5, 9, 10, 11, 27, 40, 47, 48, 49 ]
    TOKENS_FOLLOWING_expression_IN_factor_1309 = Set[ 28 ]
    TOKENS_FOLLOWING_T__28_IN_factor_1316 = Set[ 1 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_arrayaccess_1333 = Set[ 36 ]
    TOKENS_FOLLOWING_T__36_IN_arrayaccess_1334 = Set[ 4, 5, 9, 10, 11, 27, 40, 47, 48, 49 ]
    TOKENS_FOLLOWING_expression_IN_arrayaccess_1336 = Set[ 37 ]
    TOKENS_FOLLOWING_T__37_IN_arrayaccess_1338 = Set[ 1 ]
    TOKENS_FOLLOWING_iread_IN_read_1356 = Set[ 1 ]
    TOKENS_FOLLOWING_fread_IN_read_1364 = Set[ 1 ]
    TOKENS_FOLLOWING_cread_IN_read_1372 = Set[ 1 ]
    TOKENS_FOLLOWING_T__47_IN_iread_1397 = Set[ 27 ]
    TOKENS_FOLLOWING_T__27_IN_iread_1404 = Set[ 28 ]
    TOKENS_FOLLOWING_T__28_IN_iread_1406 = Set[ 1 ]
    TOKENS_FOLLOWING_T__48_IN_fread_1431 = Set[ 27 ]
    TOKENS_FOLLOWING_T__27_IN_fread_1438 = Set[ 28 ]
    TOKENS_FOLLOWING_T__28_IN_fread_1440 = Set[ 1 ]
    TOKENS_FOLLOWING_T__49_IN_cread_1465 = Set[ 27 ]
    TOKENS_FOLLOWING_T__27_IN_cread_1472 = Set[ 28 ]
    TOKENS_FOLLOWING_T__28_IN_cread_1474 = Set[ 1 ]
    TOKENS_FOLLOWING_calledclassbyinstance_IN_invocation_1499 = Set[ 4 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_invocation_1505 = Set[ 27 ]
    TOKENS_FOLLOWING_T__27_IN_invocation_1517 = Set[ 4, 5, 9, 10, 11, 27, 28, 40, 47, 48, 49 ]
    TOKENS_FOLLOWING_arguments_IN_invocation_1523 = Set[ 28 ]
    TOKENS_FOLLOWING_T__28_IN_invocation_1530 = Set[ 1 ]
    TOKENS_FOLLOWING_IDENTIFIER_IN_calledclassbyinstance_1555 = Set[ 39 ]
    TOKENS_FOLLOWING_T__40_IN_calledclassbyinstance_1563 = Set[ 39 ]
    TOKENS_FOLLOWING_T__39_IN_calledclassbyinstance_1566 = Set[ 1 ]
    TOKENS_FOLLOWING_expression_IN_arguments_1593 = Set[ 1, 31 ]
    TOKENS_FOLLOWING_T__31_IN_arguments_1611 = Set[ 4, 5, 9, 10, 11, 27, 40, 47, 48, 49 ]
    TOKENS_FOLLOWING_expression_IN_arguments_1620 = Set[ 1, 31 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0
end

