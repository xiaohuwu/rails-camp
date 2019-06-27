<<<<<<< HEAD
def newpass( len )
  chars = ("a".."z").to_a + ("0".."9").to_a
  newpass = ""
  1.upto(len) { |i| newpass << chars[rand(chars.size-1)] }
  return newpass
end

p newpass(12)
=======
squraes = Array.new(5) {|i| i * i}
p squraes
p [1, 2, 3, 4] & [1, 2]
p [1, 2, 3, 4] + [4, 5]
p [1,2] << "c" << "d" << [3,4]
>>>>>>> 24d06f7b257dcada01cfe8aac6d6291934b6170e
