require 'pry'
class Artist
	attr_accessor :name

	def initialize(name)
		@name = name
		@songs = []
	end

	def songs
		@songs
	end

	def add_song(song)
		song.artist = self
		@songs << song
	end

	def add_song_by_name(song)
		add_song(Song.new(song))
	end

	def self.song_count
		count = 0
		Song.all.collect do |artist| 
			 artist.artist_name == self.name
				count += 1 	
		end
		count
	end
end