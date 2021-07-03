class Post
  @@all = []
  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    if @author == nil
      return nil
    end
    @author.name
  end

  def self.all
    @@all
  end
end
