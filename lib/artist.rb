require 'pry'
require_relative './concerns/music_mods.rb'

class Artist
  include MusicMods::InstanceMethods
  extend MusicMods::ClassMethods

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    @@artists << self
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
