class Song
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  
  def artist_name=(name)
    Artist.find_or_create_by_name(name)
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    song = self.new(name = filename.split(" - ")[1])
    song.artist = filename.split(" - ")[0]
    song
  end
  
end