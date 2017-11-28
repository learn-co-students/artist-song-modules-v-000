require 'pry'

require_relative '../lib/concerns/paramable'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'

class Artist
  include Memorable::InstanceMethods, Paramable
  extend Memorable::ClassMethods, Findable



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
