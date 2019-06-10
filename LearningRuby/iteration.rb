7.times do
  puts "满地油菜花"
end
puts "\n"
5.times do |i|
  puts "第#{i}次循环"
end


for item,index in (1..5)
  puts "item={#{item}} index= #{index}"
end

class C1
  def hello
    "Hello"
  end
end

class C2 < C1
  alias_method :old_hello, :hello

  def hello
    "#{old_hello},again"
  end

end

obj = C2.new
# p obj.old_hello
p obj.hello
