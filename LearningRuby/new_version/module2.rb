a = "hello"
b = a.dup
class << a # 在现有对象中添加新的方法
  def to_s
    "the value is '#{self}'"
  end
  def two_times
    self + self
  end
end

p a.to_s
p a.two_times
p b.to_s