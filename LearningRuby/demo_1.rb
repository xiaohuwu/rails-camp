## << EOF 没有空格
print <<EOF
 
This is the first way of creating
     here document ie. multiple line string.

EOF

END{

 puts  "last print"

}

BEGIN{

 puts  'first print'

}

4 * 10
5 - 12
30 / 4


puts 40.to_s.reverse

class Customer
  #类变量  相当于 java 的静态变量
   @@no_of_customer = 0
    def initialize(name)
     #实例变量
     @name = name
    end

   def hello
    @@no_of_customer += 1
      puts "hello world #{ @name } number is  #{  @@no_of_customer }"
   end

end

customer1 = Customer.new("xuao hu")
customer2 = Customer.new("燕飞")
customer1.hello
customer2.hello



