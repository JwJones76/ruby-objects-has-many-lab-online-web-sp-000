class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  
  def add_song(song)
    song.artist = self
  end

  
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@sounds_count += 1
  end
  
  def songs
    Song.all.select {|song| song.artist == self}

 
  def self.song_count
    Song.all.count
  end
end