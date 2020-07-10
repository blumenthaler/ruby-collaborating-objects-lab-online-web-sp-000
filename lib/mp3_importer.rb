class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end

  def import
    self.each { |filename| Song.new_by_filename(filename) }
  end

  def files
    files = []
      Dir.new(self.path).each do |file|
        files << file if file.length > 4
      end
    files
    # loads all the mp3 files in the path directory
    # normalizes the file name to just the mp3 filename with no path
  end
  
end