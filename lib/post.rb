class Post
  attr_accessor :author, :title
  @@all = []
  
  def initialize(data)
    @title = data
    @@all << self
  end
  
  def self.count
    @@all.size
  end
  
  def self.all
    @@all
  end
  
  def author_name
    if self.author == nil
      return nil
    end
    self.author.name
  end
end
