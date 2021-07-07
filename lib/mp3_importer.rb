require 'pry'
class MP3Importer

    def initialize(path)
        @path = path
    end

    def path
        @path
    end

    def files
        Dir['**/*.mp3'].collect {|file_names| file_names[/[^\/]*$/]}
    end

    def import
        self.files.each do |file_names|
        Song.new_by_filename(file_names)
        end
    end
end

new_songs = MP3Importer.new("./spec/fixtures")
new_songs.files

# binding.pry
