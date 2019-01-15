class Author
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post_name)
    @posts << post_name
    post_name.author = self
  end

  def add_post_by_title(post_title)
    post_title = Post.new(post_title)
    post_title.author = self
    @posts << post_title
  end

  def self.post_count
    Post.all.count
  end

end
