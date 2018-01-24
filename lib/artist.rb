require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods


  @@artists = []

#initializes and dumps the new artist in the artist class variable
#initializes with an an empty array of songs
  def initialize
    super
    @songs = []
  end

#keeps track of all the artists
  def self.all
    @@artists
  end

#adds the song passed through to the song array
#tells the artist it belongs to the song
  def add_song(song)
    @songs << song
    song.artist = self unless song.artist
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end
