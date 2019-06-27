
#way1
hs = {"ja"=>"January", "fe"=>"February" }

puts hs["ja"]  #right

#  puts hs[:ja] wrong


#way2
hs = {ja: "January", fe:"February" }

puts hs[:ja]  #right

# puts hs["ja"] wrong


#collect 迭代器

shuzu = [1, 2, 3, 4, 5]

shuzu_each = shuzu.each do |item|
  print "#{item *2 } \t"
end

print("\n")

# collect map 会把处理过的结果返回 each 不会
shuzu_collect = shuzu.collect do |item|
  item * 2
end

puts "shuzu_each: #{shuzu_each}"
puts "shuzu_collect: #{shuzu_collect}"