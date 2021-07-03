

class Author

  attr_accessor :name, :posts

  def initialize(name)
    @name = name
  end

  def posts
    Post.all
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(name)
    name = Post.new(name)
    add_post(name)


  end

  def self.post_count
    Song.all.length
  end
end
