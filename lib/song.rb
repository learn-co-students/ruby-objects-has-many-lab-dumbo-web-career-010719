class Song
  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
    @name = name
    @artist
    @@all.push(self)
  end
  def self.all
    @@all
  end
  def artist_name
    if @artist.class == NilClass
      nil
    else
      @artist.name
    end
  end
end
