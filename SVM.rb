class Array

  def op_code
    self[0]
  end
  
end

class String

  def is_integer?
    if self.match(/^[0-9]+$/)
      return true
    end
    return false
  end
  
  def is_float?
    if self.match(/^[0-9]+[\.][0-9]+$/)
      return true
    end
    return false
  end

end

class Register < Array
  
  def initializer
    super
    self[100] = ObjCarrier.new(100)
  end
  
  def []=(idx, obj)
    if(idx >= 200 && idx < 300)
      self[100][idx - 200] = obj
    else
      super(idx, obj)
    end
  end
  
  def [](idx)
    if(idx >= 200 && idx < 300)
      return self[100][idx - 200]
    else
      return super(idx)
    end
  end
  
end

class Frame
  attr_accessor :register, :returning_four_fold, :returning_object
  

  def initialize(returning_four_fold = -1)
    @register = Register.new(500)
    @returning_four_fold = returning_four_fold
  end
  
end

class ObjCarrier < Array
end

class CallStack < Array
end

class SVM

  def initialize()
    @class_directory = {}
    @method_directory = {}
    @ip = 0
    @four_folds = []
    @call_stack = CallStack.new
  end
  
  def cpu
    main_frame = Frame.new(@four_folds.size - 1)
    @call_stack.push(main_frame)
    cff = @four_folds[@ip]
    cr = @call_stack.last.register
    while(cff.op_code != 'hlt')
      @ip = @ip + 1
      if(false)
      elsif(cff.op_code == '+')
        cr[cff[3]] = cr[cff[1]] + cr[cff[2]]
      elsif(cff.op_code == '-')
        cr[cff[3]] = cr[cff[1]] - cr[cff[2]]
      elsif(cff.op_code == '*')
        cr[cff[3]] = cr[cff[1]] * cr[cff[2]]
      elsif(cff.op_code == '/')
        cr[cff[3]] = cr[cff[1]] / cr[cff[2]]
        
        
      elsif(cff.op_code == '||')
        cr[cff[3]] = cr[cff[1]] || cr[cff[2]]
      elsif(cff.op_code == '&&')
        cr[cff[3]] = cr[cff[1]] && cr[cff[2]]
      elsif(cff.op_code == '>=')
        cr[cff[3]] = cr[cff[1]] >= cr[cff[2]]
      elsif(cff.op_code == '>')
        cr[cff[3]] = cr[cff[1]] > cr[cff[2]]
      elsif(cff.op_code == '<=')
        cr[cff[3]] = cr[cff[1]] <= cr[cff[2]]
      elsif(cff.op_code == '<')
        cr[cff[3]] = cr[cff[1]] < cr[cff[2]]
      elsif(cff.op_code == '==')
        cr[cff[3]] = cr[cff[1]] == cr[cff[2]]      
        
        
        
      elsif(cff.op_code == '=')
        cr[cff[3]] = cr[cff[1]]
        
        
      elsif(cff.op_code == 'ict')
        cr[cff[3]] = cff[1]
      elsif(cff.op_code == 'fct')
        cr[cff[3]] = cff[1]
      elsif(cff.op_code == 'cct')
        cr[cff[3]] = cff[1]
      elsif(cff.op_code == 'bct')
        if(cff[1] == 'false')
          cr[cff[3]] = false
        elsif(cff[1] == 'true')
          cr[cff[3]] = true
        end
        
        
      elsif(cff.op_code == 'prt')
        print(cr[cff[3]])
      elsif(cff.op_code == 'prl')
        puts(cr[cff[3]])
        
      
      elsif(cff.op_code == 'ird')
        var = gets.chomp
        unless(var.is_integer?)
          raise "Input should be an integer, bye bye!"
        end
        cr[cff[3]] = var.to_i
      elsif(cff.op_code == 'frd')
        var = gets.chomp
        unless(var.is_float? or var.is_integer?)
          raise "Input should be float, bye bye!"
        end
        cr[cff[3]] = var.to_f
      elsif(cff.op_code == 'crd')
        var = gets.chomp
        unless(var[1] == nil)
          raise "Input should be just one character, bye bye!"
        end
        cr[cff[3]] = var[0]
        
        
        
      elsif(cff.op_code == 'gto')
        @ip = cff[3]
      elsif(cff.op_code == 'gtf')
        if(cr[cff[1]] == false)
          @ip = cff[3]
        end
      
      elsif(cff.op_code == 'era')
        @call_stack.push(Frame.new())
      elsif(cff.op_code == 'prm')
        @call_stack.last.register[100 + cff[3]] = cr[cff[2]]
      elsif(cff.op_code == 'gsb')
        @call_stack.last.register[100] = cr[cff[1]]
        @call_stack.last.returning_object = cff[1]
        @call_stack.last.returning_four_fold = @ip
        cr = @call_stack.last.register
        @ip = cff[3]
      elsif(cff.op_code == 'ret')
        ret = cff[3]
        prev_reg = cr
        prev_obj_address = @call_stack.last.returning_object
        @ip = @call_stack.last.returning_four_fold
        @call_stack.pop
        cr = @call_stack.last.register
        cr[prev_obj_address] = prev_reg[100]
        #Solo vale la pena apuntar al registro anterior si hay variable a quien retornar valor
        if(not cff[3])
          ret = nil
          prev_reg = nil
        end
      elsif(cff.op_code == 'get')
        cr[cff[3]] = prev_reg[ret]
        prev_reg = nil
        ret = nil
        
      elsif(cff.op_code == 'new')
        cr[cff[3]] = ObjCarrier.new(100)
      end
      
      cff = @four_folds[@ip]
    end
    
  end
  
  def charge
    File.open("myobj", "r") do |infile|
      while (line = infile.gets)
        arr = line.split(",")[0..3]
        arr.size.times do |i|
          if(arr[i].is_integer?)
            arr[i] = arr[i].to_i
          elsif(arr[i].is_float?)
            arr[i] = arr[i].to_f
          end
        end
        @four_folds << arr
      end
    end
  end
  
end

svm = SVM.new()
svm.charge
svm.cpu
