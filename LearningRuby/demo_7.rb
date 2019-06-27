class Song
   attr_reader :name, :artist, :duration

  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end

=begin
  def name
    @name
  end
  def artist
    @artist
  end
  def duration
    @duration
  end
=end

  def duration= (new_duration)
    @duration = new_duration
  end

  def to_s
    "Song:#{@name} --#{@artist} (#{@duration})"
  end

end

class KaraokeSong < Song

  def initialize(name, artist, duration, lyrics)
    @name = name
    @artist = artist
    @duration = duration
    @lyrics = lyrics
  end


  def to_s
     "#{super.to_s} lyrc:#{@lyrics}"
  end

end

song = KaraokeSong.new("xiao", "武侠", 250,"哈哈哈")
song.duration = 256 # duration = 都是方法
puts song.duration

puts song.name # 表面上 访问属性 实际访问方法
puts song.to_s