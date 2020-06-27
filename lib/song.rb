require 'pry'
class Song
attr_accessor :name, :artist

@@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def name=(name)
        @name = name
    end

    def name
        @name
    end

    def artist=(artist)
        @artist= artist
    end

    def artist
        @artist
    end

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        song = self.new(filename)
        title = filename.split(/ - /)
        song.name= title[1]
        song.artist= Artist.new(title[0])
        song
    end

    def artist_name=(artist_name)
        potential_artist = Artist.find_or_create_by_name(artist_name)
        self.artist = potential_artist
    end
end

song = Song.new("Blank Space")
song = Song.new("Spotlight")
song = Song.new("Hello")
song = Song.new("No")
song = Song.new("Confessions")
# binding.pry