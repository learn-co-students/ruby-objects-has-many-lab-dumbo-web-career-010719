class Post

  attr_accessor :title, :author

  @@all = []

  def initialize(title, author = nil)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if @author.class == NilClass
      return nil
    else
      return @author.name
    end
  end




end
