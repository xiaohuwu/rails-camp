person = "Tim"
p person.object_id
p person.class
p person

puts "----------------------"

person1 = "Tim"
person2 = person1 # person1.dup 只复制内容
person2 # freeze 冻结后指定的对象不能修改
person1[0] = "J"
p person1
p person2

puts "----------------------"

a = [3.14,"pie",99]
p a.class
p a.length
p a[2]

puts "----------------------"


b = Array.new
b.class
b.length
b[0] = "second"
b[1] = "array"
p b


puts "----------------------"

a = [1,3,5,7,9]
p a[-1]
p a[-2]

p a[1,3]
p a[1..3]


puts "----------------------"

p :Object.class
a = "cat"
p :'catsup'.class
p :"#{a}sup"
p :'#{a}sup'

puts "-----------------------"

class WordIndex
  def initialize
    @index = {}
  end
  def add_to_index(obj, *phrases)
    phrases.each do |phrase|
      phrase.scan(/\w[-\w']+/) do |word|   # extract each word
        word.downcase!
        @index[word] = [] if @index[word].nil?
        @index[word].push(obj)
      end
    end
  end
  def lookup(word)
    @index[word.downcase]
  end
end

