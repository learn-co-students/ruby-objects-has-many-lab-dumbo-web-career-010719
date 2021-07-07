require 'pry'
class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end




  def artist_name
    if @artist.class == NilClass
      return nil
    else
      return @artist.name
    end
    # x = []
    # x << self.artist.name
    # if x.length = 0
    #   return nil
    # else return x

  end
 # binding.pry

end
