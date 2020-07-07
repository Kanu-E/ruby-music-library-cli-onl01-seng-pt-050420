class Genre 
 
 attr_accessor :name, :songs, :artists
 @@all = []
  def initialize (name)
   @name = name
   @songs = []
   @artists = []
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
    self.new(name).tap do |genre|
      genre.save
    end
  end
   def add_song(song)
   if song.genre == nil
     song.genre = self
   end
   songs << song unless songs.include? song
  end
  
  def artists
    y = songs.collect do |song|
      song.artist
    end
   y.uniq
  end
      
end