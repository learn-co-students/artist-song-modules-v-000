require 'pry'

class Artist
  
  # extend Memorable
  extend Findable
  include Paramable
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :songs

  @@artists = []
 
  def initialize
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
