

class Artist
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods

  attr_accessor :name
  attr_reader :songs

  @@artists = [] #empty array of artists

  def self.find_by_name(name)
    @@artists.detect{|a| a.name == name} #can find an artist by name
  end

  def initialize
    @@artists << self #adds itself to artist array
    @songs = [] #empty array of songs on initalization
  end

  def self.all
    @@artists #knows about all artists
  end



  def add_song(song)
    @songs << song #take an argument of song and add to array
    song.artist = self #song has an artist
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) } #this im not sure about
  end


end
