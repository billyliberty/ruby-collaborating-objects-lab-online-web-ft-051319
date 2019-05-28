class Artist
 attr_accessor :name, :songs
 @@all = []

 def initialize (name)
   @name = name
   @songs = []
   @@all << self
 end

 def self.all
   @all
 end

 def save
   @@all << self
 end

 def add_song (song)
   @songs << song
 end

 def self.find_or_create_by_name(name)
   if self.find(name)
     self.find(name)
   else
     self.create(name)
   end
 end

 def print_songs
   self.songs.each {|song| song.name}
 end

 def self.create(name)
   artist = Artist.new(name)
   artist.save
   artist
 end

 def self.find(name)
   self.all.detect {|artist| artist.name == name}
 end


end
