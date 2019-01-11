require 'pry'
class Artist
  attr_accessor :name
  attr_reader :songs
  def initialize(name)
    @name = name
    @songs = []
  end
  def add_song(songname)
    @songs.push(songname)
    songname.artist = self
  end
  def add_song_by_name(songname)
    newSong = Song.new(songname)
    newSong.artist = self
    @songs.push(newSong)
  end
  def self.song_count
    Song.all.count
  end
end
