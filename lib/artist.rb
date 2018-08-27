require 'pry'

class Artist
  extend Memorable::ClassMethods #namespacing
  include Memorable::InstanceMethods #namespacing
  extend Findable
  include Paramable

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  #instantiates a new object of Artist with an empty songs array and stores the object in the class variable array
  def initialize
    super
    @songs = []
  end

  #allows use to return an array of all the Artist objects that have been created
  def self.all
    @@artists
  end

  #allows user to add a song for the specified Artist object and stores the song, and tells the song that it belongs to this instance of arttist
  def add_song(song)
    @songs << song
    song.artist = self
  end

  #sorts through the provided songs array and creates a new song for each one
  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
end
