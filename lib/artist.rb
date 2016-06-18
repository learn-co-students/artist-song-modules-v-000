require 'pry'
require_relative '../lib/memorable.rb'
require_relative '../lib/paramable.rb'

class Artist
  extend Memorable
  include Paramable
  attr_accessor :name
  attr_reader :songs

  @@all = []


  def initialize
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end
