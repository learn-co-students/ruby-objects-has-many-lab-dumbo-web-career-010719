class Artist

  attr_accessor :name

  @@all = 0


  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song_name)
    @songs << song_name
    song_name.artist = self
    @@all += 1
  end

  def add_song_by_name(song_name)
    song_name = Song.new(song_name)
    song_name.artist = self
    @songs << song_name
    @@all += 1
  end

  def self.song_count
    @@all
  end





end
