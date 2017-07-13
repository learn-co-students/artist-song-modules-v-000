 require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable, Findable
  include Paramable

  @@all = []

  def initialize
    @@all << self
  end

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@all
  end
end
