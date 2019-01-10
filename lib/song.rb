require 'pry'
class Song
	attr_accessor :title, :artist

	@@all = []

	def initialize(title)
		@title = title
		@artist = artist
		@@all << self
	end

	def self.all
		@@all
	end

	def name
		@title
	end

	def artist
		@artist
	end

	def add_song_by_name(title)
		@@all << self.new(title)
	end

	def artist_name
		if self.artist
			self.artist.name
		else 
			return nil
		end
	end

end