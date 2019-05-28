class Artist
 attr_accessor :name, :songs
 @@all = []

 def initialize (name)
   @name = name
   @songs = []
   save
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
   self.find(name) || self.create(name)
  end

 def print_songs
   self.songs.each {|song| song.name}
 end

 def self.create(name)
   artist = Artist.new(name)
   artist.name = name
   artist
 end

 def self.find(name)
   self.all.detect {|artist| artist.name == name}
 end


end
