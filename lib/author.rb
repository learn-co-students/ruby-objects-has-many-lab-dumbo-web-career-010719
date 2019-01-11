class Author
  attr_accessor :name
  attr_reader :posts
  def initialize(name)
    @name = name
    @posts = []
  end
  def add_post(newPost)
    newPost.author = self
    @posts << newPost
  end
  def add_post_by_title(newPost)
    newPost = Post.new(newPost)
    self.add_post(newPost)
  end
  def self.post_count
    Post.all.count
  end
end
