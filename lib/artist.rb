require_relative "./memorable.rb"
require_relative "./paramable.rb"

require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  extend Memorable
  include Paramable

  @@artists = []
  
  def self.all
    @@artists
  end

  def initialize
    @@artists << self
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
