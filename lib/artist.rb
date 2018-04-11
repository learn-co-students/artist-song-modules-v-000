require_relative '../config/environment'
# require 'pry'

class Artist
  extend Findable, Memorable::ClassMethods
  include Memorable::InstanceMethods, Paramable
 
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def self.all
    @@artists
  end

  def initialize
    super
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
end
