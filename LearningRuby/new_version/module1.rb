module Humor
  def tickle
    "hee,heee"
  end
end
a = "Grouchy"
a.extend Humor # 对象扩展了模块方法
p a.tickle

# Mixin 模块
class SillyClass
  include Humor # 模块里面的方法都是实例方法
  extend Humor # 模块里面的方法都是类方法
end

silly =  SillyClass.new
p silly.tickle
p SillyClass.tickle