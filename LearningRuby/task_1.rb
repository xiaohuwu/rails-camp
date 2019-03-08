#输入一句话，输出这句话的反转
def reverse( str)
   str.split(' ').reverse.join(" ")
end

print reverse "hello world"
