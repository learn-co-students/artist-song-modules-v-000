require 'pry'

class Artist
  
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  
  extend Findable 
  
  include Paramable
  
  attr_accessor :name # name is a method - we can manipulate/have access to change value 
  attr_reader :songs # this is only a reader - cannot change value 

  @@artists = [] # class variable to hold the artists instances

  def initialize # initializes a new artist without any arguments 
    super # upon initialization - the artist instances are added to the artists array
    @songs = [] # upon initialization an instance variable of @songs is set to an empty array 
  end

  def self.all # class method - displays contents of artists array
    @@artists
  end
  
  def add_song(song) # instance method - adds the value that is passed through the song argument to the @songs array
    # sets the song instance equal to artist instance
    @songs << song
    song.artist = self
  end

  def add_songs(songs) # instance method - iterates over array passed through songs argument
    # calls the add_song(song) method - returns song instance
    songs.each { |song| add_song(song) }
  end

end
