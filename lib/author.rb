class Author
  attr_accessor :title

  @@all = []

  def initialize(title)
    @name = title
    @@all << self
  end

  def self.all
    @@all
  end

  
  def add_post(post)
    song.artist = self
  end

  
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@sounds_count += 1
  end

 
  def self.song_count
    Song.all.count
  end
end