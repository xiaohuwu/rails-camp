#method 方法必须是以小写字母开头
def test(arg1="hello",arg2="ruby")
  puts "#{arg1}  #{arg2}"
end

#可变数量的参数
def decla_te( *decla)
  puts "length of args is #{decla.length}"
  for i in 0... decla.length
     puts "the parameter is #{decla[i]}"
  end
end

decla_te "Zara","6","F"
decla_te "Zara","6","F","Zara","6","F"

#类中的方法
class Class_fun
 def fun1
   puts "this is fun1"
 end
 def fun2
   puts "this is fun2"
 end
end

test1 = Class_fun.new
test1.fun1
test1.fun2

#范围运算符
(1...10).each do |x|
   print x
end

puts " "

puts "xx not defined" , defined? xx

CONST = ' out there'            #定义常量
class Inside_one
  CONST =   'in there'
  def where_is_my_CONST
       CONST     #引用常量
  end
end


class Inside_two
  CONST = ' inside two'
  def where_is_my_CONST
    CONST
  end
end

puts Inside_one::CONST





