require 'pry'

class Artist
  extend Memorable
  extend Findable
  include Paramable

  attr_accessor :name #an Artist can set and get its own name
  attr_reader :songs #an Artist can get but not set its own songs?

  @@artists = []

  def initialize
    @@artists << self #all new Artists get kept track of
    @songs = [] #all new Artists get a new empty song array
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
