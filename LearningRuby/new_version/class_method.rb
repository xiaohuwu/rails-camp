# 类方法的几种定义方式
#
module ClassMethod1
  def four(name)
    puts "#{name} say hello"
  end
  module_function :four
end

class ClassMethod
  class << ClassMethod
    def one(name)
      puts "#{name} say hello"
    end
  end

  class << self
    def two(name)
      puts "#{name} say hello"
    end
  end

  def ClassMethod.three(name)
    puts "#{name} say hello123"
  end

  def self.three(name)
    puts "#{name} say hello123"
  end

  extend ClassMethod

end




ClassMethod.one("Bob")
ClassMethod.two("ddd")
ClassMethod.three("ddd")
ClassMethod.four("ddd123")
