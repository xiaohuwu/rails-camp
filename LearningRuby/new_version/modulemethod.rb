module Maths
  def sin(x)
    x
  end
  module_function :sin # 必须声明模块方法后才能调用 单独使用模块方法 都是静态方法
end

p Maths.sin(1)
a = Array.new(2){ Hash.new}
p a