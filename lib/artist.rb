class Artist 
 
 attr_accessor :name, :songs, :genres
 
 @@all = []
  def initialize (name)
   @name = name
   @songs = [] 
   @genres = []
  end
  def self.all
   @@all
  end
  def save
   @@all << self
  end
  def self.destroy_all
   @@all.clear
  end
 
  def self.create(name)
   self.new(name)
   @@all << self
  end
  def self.create(name)
    self.new(name).tap do |artist|
      artist.save
    end
  end
  def songs
    Songs.all.collect do |songs|
  def add_song(song)
   if song.artist == nil
     song.artist = self
   end
   songs << song unless songs.include? song
  end
  def genres
    x = songs.collect do |song| 
      song.genre
      end
    x.uniq
  end
end