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

  def self.all # class method - displays contents of artists array
    @@artists
  end

#  def self.reset_all # class method - sets the artists array to an empty array - clears array
#    self.all.clear
#  end
#
#  def self.count # class method - counts the indexes of the artists array (.length)
#    @@artists.count
#  end

  def add_song(song) # instance method - adds the value that is passed through the song argument to the @songs array
    # sets the song instance equal to artist instance
    @songs << song
    song.artist = self
  end

  def add_songs(songs) # instance method - iterates over array passed through songs argument
    # calls the add_song(song) method - returns song instance
    songs.each { |song| add_song(song) }
  end

  def to_param # instance method - calls downcase and gsub methods on name attr
    # replaces spaces with hyphen "-"
    name.downcase.gsub(' ', '-')
  end

end
