class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end

  def import(list_of_filenames)
    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end

  def files
    files = []
    Dir.new[self.path]
    # loads all the mp3 files in the path directory
    # normalizes the file name to just the mp3 filename with no path
  end
  
end