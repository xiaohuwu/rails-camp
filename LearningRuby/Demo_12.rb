class SongList
  def initialize
    @songs = Array.new
  end
  def append(song)
    @songs.push(song)
    self
  end
  def delete_first
    @songs.shift
    self
  end
  def delete_last
    @songs.pop
    self
  end
  def [](index)
    @songs[index]
  end

  def with_title(title)
    @songs.find do |item|
      title==item.title
    end

  end

end

class Song
  def initialize(title,artist,duration)
    @title = title
    @artist = artist
    @duration = duration
  end
  
  def title
    @title
  end
  def artist
    @artist
  end
  def duration
    @duration
  end
end

list = SongList.new
song1 = Song.new("title1","artist1",1)

puts song1.duration
p list.append(song1).class
puts   list[0] == song1

puts list.with_title("title1").artist

