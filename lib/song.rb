require 'pry'

class Song
  extend Memorable::ClassMethods
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def artist=(artist)
    @artist = artist
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end

  def self.all
    @@songs
  end
end
  #def self.find_by_name(name)
  #  @@songs.detect{|a| a.name}
  #end

  #def self.reset_all
  #  @@songs.clear
  #end

  #def self.count
  #  self.all.count
  #end

