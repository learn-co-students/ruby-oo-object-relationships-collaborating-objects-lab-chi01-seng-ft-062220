require 'pry'
class MP3Importer
    attr_accessor :files
    attr_reader :path

    def initialize(filepath)
        @path = filepath
        @files = []
    end

    def files
        directory = Dir["#{@path}/*.mp3"]
        directory = directory.map {|file| file.split("#{@path}/")[1]}
        @files = directory
    end

    def import
        self.files
        @files.each {|file_name| Song.new_by_filename(file_name)}
    end
end