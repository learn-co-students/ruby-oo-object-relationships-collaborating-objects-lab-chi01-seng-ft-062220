class Artist
    attr_accessor :name, :songs
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        @songs=[]
    end

    def self.all
        @@all
    end

    def songs
        @songs = Song.all.select {|song| song.artist == self}
    end

    def add_song(new_song)
        new_song.artist = self
        @songs << new_song
        @songs
    end

    def self.find_or_create_by_name(name)
        result = @@all.find {|artist| artist.name == name}
        result == nil ? result = Artist.new(name) : result
    end

    def print_songs
        self.songs.each {|song| puts song.name}
    end
end