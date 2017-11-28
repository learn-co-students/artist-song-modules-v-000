require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist
  extend Memorable, Findable
  include Paramable

  @@songs = []

  def initialize
    @@songs << self
  end

  # The method listed below is replaced by extend Findable
  #def self.find_by_name(name)
  #  @@songs.detect{|a| a.name == name}
  #end

  def artist=(artist)
    @artist = artist
  end

  # The method listed below is replaced by extend Memorable
  #def self.reset_all
  #  @@songs.clear
  #end

  # The method listed below is replaced by include Paramable
  #def to_param
  #  name.downcase.gsub(' ', '-')
  #end

  # The method listed below is replaced by extend Memorable
  #def self.count
  #  self.all.count
  #end

  def self.all
    @@songs
  end
end
