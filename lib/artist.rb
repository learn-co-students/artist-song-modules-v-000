require 'pry'

class Artist
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable

  attr_accessor :name
  attr_reader :songs

  @@artists = []



  def initialize
    #initialize is an instance method.
    #@@artists << self
    #self.class.all << self
    #similar to calling Artist.all or Song.all. we call up the class of the instance with .class
    #tells the method to use the code i the memorable module and also any additional code below
    super
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end


end
