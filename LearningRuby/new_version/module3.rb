class Test
  def Test.say_hello
    puts "hello from #{self.name}"
  end
  say_hello
end

class Test1
  @cls_var = 123
  attr_reader :cls_var
  def Test1.inc
    @cls_var+=1
  end
end

p Test1.cls_var
p Test1.inc
