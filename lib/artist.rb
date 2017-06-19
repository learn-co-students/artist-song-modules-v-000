require 'pry'

require_relative './concerns/memorable.rb'

class Artist
  attr_accessor :name
  attr_reader :songs

  extend Memorable

  @@list = []

  def self.find_by_name(name)
    @@list.detect{|a| a.name == name}
  end

  def initialize
    @@list << self
    @songs = []
  end

  def self.all
    @@list
  end

  # def self.reset_all
  #   self.all.clear
  # end
  #
  # def self.count
  #   @@list.count
  # end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end

end
