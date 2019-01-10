class Song
  @@all = []
  
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    return nil if @artist.nil?
    @artist.name
  end
end