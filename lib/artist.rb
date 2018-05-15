require 'pry'
require_relative './concerns/memorable'

class Artist
  extend Memorable

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

  def to_param
    name.downcase.gsub(' ', '-')
  end

  #def self.count
  #  @@artists.count
  #end

  #def self.reset_all
  #  self.all.clear
  #end

  def self.find_by_name(name)
    @@all.detect{|a| a.name == name}
  end


  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end



end
