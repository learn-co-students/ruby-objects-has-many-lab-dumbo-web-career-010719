class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @song = []
  end

  def songs
    @song
  end

  def add_song(song)
    @song << song
    song.artist = self
  end
end
