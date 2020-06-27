require 'pry'
class MP3Importer

    def initialize(path)
        @path = path
    end

    def path
        @path
    end

    def files
        all_files = Dir['**/*.mp3']
        # all_files.map |file_names|
        #     file_names.delete
    end

    def import
    end

end

new_songs = MP3Importer.new("./spec/fixtures")
new_songs.files

binding.pry
