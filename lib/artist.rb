require 'pry'

class Artist
@@all = []
attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def name=(name)
        @name = name
    end
    
    def self.name
        @name
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|songs| songs.artist == self}
    end

    def add_song(song)
        song.artist = self
    end

    def self.find_or_create_by_name(name)
        if @@all.find {|artist| artist.name == name} == nil
            Artist.new(name)
        else
            @@all.find {|artist| artist.name == name}
        end
    end

    def print_songs
       puts self.songs.collect {|song_instances| song_instances.name}
    end
end

jw = Artist.new("Jessie Ware")
cxh = Artist.new("CxH")
queen_bey = Artist.new("Beyoncé")
missy = Artist.new("Missy Elliott")
# binding.pry