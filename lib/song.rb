class Song
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.find {|artist|  artist.name == name}
    end
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