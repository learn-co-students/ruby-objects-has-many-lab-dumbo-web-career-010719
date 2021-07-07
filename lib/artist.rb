class Artist

    attr_accessor :name
    attr_reader :songs

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def self.all
        @@all
    end

    def add_song(song)  
        self.songs << song
        song.artist = self
        
    end

    def add_song_by_name(song)
        new_song = Song.new(song)  
        self.songs << new_song
        new_song.artist = self   
        
    end

    def self.song_count
        count = 0
        self.all.each do |singers|
            count += singers.songs.length
        end
        count
    end
end