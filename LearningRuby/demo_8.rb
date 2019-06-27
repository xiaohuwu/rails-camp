# 使块对象话的类

hello1 = Proc.new do |*args|
   args.map do |item|
     item * 2
   end
end

p hello1.call(1,2,3)

class Incorrect
  attr_accessor :one, :two
  def initialize
    @one = 1
    self.two  = 2
  end
end

obj = Incorrect.new
p obj.one
p obj.two

c = "carbon"
i = "iodine"
elements = [c,i]
elements.each_with_index do |item,i|
 p "i: #{i}"
end
puts i


