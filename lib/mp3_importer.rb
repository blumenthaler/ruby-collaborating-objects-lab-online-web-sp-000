class MP3Importer
  attr_accessor :filename
  
  def initialize(filename)
    @filename = filename
  end

  def import(list_of_filenames)
    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end

  def files
    # loads all the mp3 files in the path directory
    # normalizes the file name to just the mp3 filename with no path
  end
  
end