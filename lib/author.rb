class Author
  attr_accessor :name, :post

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

  def add_post_by_title(title)
    new_post = Post.new(title)
    @posts << new_post
    new_post.author = self
  end

  def self.post_count
    Post.all.count
  end
end
