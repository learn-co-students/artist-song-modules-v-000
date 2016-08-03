require 'pry'

class Song
  extend Memorable::ClassMethods
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def artist=(artist)
    @artist = artist
  end

  #def self.reset_all
  #  @@songs.clear
  #end

  def to_param
    name.downcase.gsub(' ', '-')
  end

  #def self.count
  #  self.all.count
  #end

  def self.all
    @@songs
  end
end
