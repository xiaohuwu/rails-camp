def count_freq(str)
  hsh = {}
  lth = str.length
  str.split('').each do |letter|
    hsh[letter] = hsh.fetch(letter, 0) + 1
  end

  # The each_pair method, when given a block, returns the Hash that invoked it
  # i.e. this will be count_freq's return value

  hsh.each_pair {|key, val|
    hsh[key] = (val / lth.to_f)
  }

end


p count_freq("abcd")
#=> {"a"=>0.25, "b"=>0.25, "c"=>0.25, "d"=>0.25}

p count_freq("eeeieeeoueeeiaaaieeeuauaieeieaau")

a = gets.chomp.to_i
if a > 10
  puts "Your Number is greater 10"
else
  puts "Yout Number is less 10"
end