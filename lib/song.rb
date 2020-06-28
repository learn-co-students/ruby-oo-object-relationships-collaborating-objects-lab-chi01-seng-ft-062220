class Song
    attr_accessor :name, :artist
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
    # def self.new_by_filename(name)
    
    # end 
    def artist_name
        
    end     
end