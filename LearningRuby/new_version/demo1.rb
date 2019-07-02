# ARGV 可以接收外部参数
=begin
ARGV.each do |item|
  p item
end
=end


 CONST = "outer"
module Mod
  CONST = 1
  def Mod.method1
    CONST + 1
  end
end

module Mod::Inner
  def (Mod::Inner).method2
    CONST + "scope"
  end
end


p Mod.method1
p (Mod::Inner).method2
