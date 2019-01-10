require 'pry'
class Author
	attr_accessor :name

	def initialize(name)
		@name = name
		@posts = []
	end

	def posts
		@posts
	end

	def add_post(post)
		post.author = self
		@posts << post
	end

	def add_post_by_title(post)
		add_post(Post.new(post))
	end

	def self.post_count
		count = 0
		Post.all.collect do |author|
			author.author_name == self.name
			count +=1
		end
		count
	end

end