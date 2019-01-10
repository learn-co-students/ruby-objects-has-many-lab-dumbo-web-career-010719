require 'pry'
class Post
	attr_accessor :title, :author

	@@all = []

	def initialize(title)
		@title = title
		@author = author
		@@all << self
	end

	def self.all
		@@all
	end

	def name
		@title
	end

	def author
		@author
	end

	def author_name
		if self.author
			self.author.name
		else
			return nil
		end
	end
end