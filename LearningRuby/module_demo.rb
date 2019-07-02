module Action
  def jump
    @distance = rand(5)+2
    puts "I jumped forward #{@distance} feet!"
  end
end

class Rabbit
  include Action # 方法一
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Cricket
  extend Action  # 方法二
  attr_reader :name
  def initialize(name)
    @name = name
  end
end
peter = Rabbit.new("peter")
peter.jump
Cricket.jump