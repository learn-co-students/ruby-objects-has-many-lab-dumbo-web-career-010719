class Artist
  attr_reader :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    self.songs << song
    song.artist = self
  end
  
  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    new_song.artist = self
    self.songs << new_song
  end
  
  def self.song_count
    Song.count
  end

end