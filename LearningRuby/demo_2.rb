#全局变量以 $ 开头，并且未初始化的全局变量值为空；全局变量能够跨类使用
$global_var = 10
class Class1
  def print_global
    puts "Global variable in Class1 is #{$global_var}"
  end
end

class Class2
  def print_global
    puts "Global variable in Class1 is #{$global_var}"
  end
end

class1obj = Class1.new
class1obj.print_global

class2obj = Class2.new
class2obj.print_global



class Customer
   # 类变量
   @@no_of_customer = 0
   def initialize(id,name,addr)
     # 实例变量
      @id = id
      @name = name
      @addr = addr
   end

   def display_details
       puts "Customer id #{@id}"
       puts "Customer name #{@name}"
       puts "Customer addr #{@addr}"
   end

   def total_no_of_customers()
     @@no_of_customer +=1
     puts "Total number of customers #{@@no_of_customer } "
   end

end


cus1 = Customer.new("1","good","cq")
cus1.display_details
cus1.total_no_of_customers

cus2 = Customer.new("2","bad","sc")
cus2.display_details
cus1.total_no_of_customers


