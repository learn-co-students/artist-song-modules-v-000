require 'pry'

class Artist
  attr_accessor :name # name is a method - we can manipulate/have access to change value 
  attr_reader :songs # this is only a reader - cannot change value 

  @@artists = [] # class variable to hold the artists instances

  def self.find_by_name(name) # class method - goes through the artists array and returns the name of the artist
    @@artists.detect{|a| a.name == name}
  end

  def initialize # initializes a new artist without any arguments 
    @@artists << self # upon initialization - the artist instances are added to the artists array
    @songs = [] # upon initialization an instance variable of @songs is set to an empty array 
  end

  def self.all
    @@artists
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    @@artists.count
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end

end
