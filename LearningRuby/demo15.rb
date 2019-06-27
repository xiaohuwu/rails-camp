#

cities = {'cq' => '重庆', 'cd' => '成都', 'wz' => '万州'}
def find_city(map, key)
  if map.has_key? key
    return map["#{key}"]
  end
  return nil
end

cities['find'] = method(:find_city)
while (true)
  puts "ENTER to exit"
  key = gets.chomp
  if (key.nil? ||  key.to_s.empty?)
    break
  end
  puts cities['find'].call(cities, key) # 方法的另外一种调用方式
end