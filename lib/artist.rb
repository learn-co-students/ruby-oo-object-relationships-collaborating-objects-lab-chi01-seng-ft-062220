class Artist
    attr_accessor :name, :songs, :artist
require 'pry'
    @@all = []
    def initialize(name)
        @name = name
        save
    end
    def save
        @@all << self
    end    
    def self.all
        @@all 
    end
    def songs 
        Song.all.select {|s| s.artist == self}   
    end 
    def add_song(song)
        song.artist = self
    end     
    def print_songs
        songs.each {|song| puts song.name} 
    end 
    def self.find_or_create_by_name(name)
        self.find do |singer|
            if singer.name == self
                singer.name 
           else
                self.new
           end
        end       
    end    
end