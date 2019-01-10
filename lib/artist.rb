class Artist
    attr_accessor :name

    def initialize(name)
        @name=name
        @SONGS=[]
    end

    def songs
        @SONGS
    end

    def add_song(song)
        song.artist=self
        songs<<song
    end
 


    def add_song_by_name(name)
        add_song(Song.new(name))
    end

    def self.song_count
        count=0
        Song.all.collect do |item|
            item.artist_name == self.name
            count+=1
        end
        count
    end


end