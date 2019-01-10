class Artist
  attr_accessor :name, :songs
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    song.artist = self
    @songs << song
  end
  
  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    self.add_song(new_song)
  end
  
  def self.song_count
    songs = []
    ObjectSpace.each_object Artist do |artist|
      songs << artist.songs
    end
    songs.flatten.length
  end
  
  
end