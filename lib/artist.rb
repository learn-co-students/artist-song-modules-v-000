require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'


class Artist
  attr_accessor :name
  attr_reader :songs

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable

  @@artists = []



  #initialize the new artist and place it in the artists array,
  #also create an empty array for all the artists songs.
  def initialize
    super
    @songs = []
  end

  #return the array artists
  def self.all
    @@artists
  end

  #add a song into the array and assign it to the current artist
  def add_song(song)
    @songs << song
    song.artist = self
  end

  # take in an array of songs add them to the array @songs and
  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end
