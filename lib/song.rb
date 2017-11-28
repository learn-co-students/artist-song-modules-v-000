require 'pry'

class Song
  extend Memorable
  extend Findable
  include Paramable

  attr_accessor :name #a song can set and get its name
  attr_reader :artist #a song can read its artist, but not write it

  @@songs = [] #the Song class keeps track of all of its songs

  def initialize
    @@songs << self #EVERY new song gets kept track of
  end

  def artist=(artist)
    @artist = artist #the song instance can in fact set an artist? This is redundant
  end

  def self.all
    @@songs #returns array of all songs
  end
end
