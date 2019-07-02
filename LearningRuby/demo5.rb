require 'time'
class Actor
  attr_accessor :name, :age, :sex, :birth_date, :death_date

  def age
    if alive?
      a = Time.now - Time.parse(birth_date)
    else
      a = Time.parse(death_date) - Time.parse(birth_date)
    end

    return (a / 60 / 60 / 24 / 365).to_i

  end

  def alive?
    death_date.nil?
  end

end

an_actor = Actor.new
an_actor.name = "Paul Newman"
an_actor.birth_date = "1/2/1975"
an_actor.death_date = "12/2/2008"

puts an_actor.age


"this is a test".scan(/\w+/).each do |item|
  puts item
end

"this is a test".split(/\s+/).each do |item|
  puts item
end

res  = "this is a test".gsub(/\s+/,"")
puts res



