str1 = "Ruby"
str2 = "Ruby"
class << str1
  def hello
    "hello,#{self}!"
  end
end

str1 = "Test"

=begin
p str1.hello

p str2.hello
=end



a = 'foo'
class << a  # 只为某个实例添加方法
  def inspect
    '"bar"'
  end
end

p a.inspect   # => "bar"

a = 'foo1'   # new object, new singleton class
p a.inspect  # => "foo"
