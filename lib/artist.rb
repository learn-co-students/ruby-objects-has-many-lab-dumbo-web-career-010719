require "pry"
class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all
  end

  def add_song(song) #setting the song
    song.artist = self
   end

   def add_song_by_name(song_name)
     song = Song.new(song_name)
     song.artist = self
   end

     #binding.pry
   def self.song_count
     Song.all.count
   end
end
