require 'pry'

class Song
  extend Memorable
  attr_accessor :name
  attr_reader :artist

  @@artists = []
  @@songs = []

  def initialize
    @@songs << self
  end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def artist=(artist)
    @artist = artist
    @@artists << artist
  end

  #  def self.reset_all
  #    self.all.clear
  #  end

  #  def self.count
  #    @@artists.count
  #  end

  def to_param
    name.downcase.gsub(' ', '-')
  end

  def self.all
    @@songs
  end
end
