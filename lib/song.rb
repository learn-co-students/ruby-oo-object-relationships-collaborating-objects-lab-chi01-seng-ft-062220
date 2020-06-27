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

    def self.new_by_filename(filename)
        song_data = filename.split(" - ")
        artist_name, song_name, *remainder= song_data
        song_artist = Song.artist_search(artist_name)
        song_artist = song_artist == nil ? Artist.new(artist_name) : song_artist
        new_song = Song.new(song_name)
        new_song.artist = song_artist
        new_song
    end

    def self.artist_search(name)
        Artist.all.find{|artist| artist.name == name}
    end

    def artist_name=(name)
        result = Song.artist_search(name)
        if result == nil
            self.artist = Artist.new(name)
        else
            self.artist = result
        end
    end
end