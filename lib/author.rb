class Author
  attr_accessor :name, :posts
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post)
    post.author = self
    @posts << post
  end
  
  def add_post_by_title(title)
    new_post = Post.new(title)
    self.add_post(new_post)
  end
  
  def self.post_count
    posts = []
    ObjectSpace.each_object Author do |author|
      posts << author.posts
    end
    posts.flatten.length
  end
end