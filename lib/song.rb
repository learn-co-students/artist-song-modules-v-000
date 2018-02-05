require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@all = []

  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
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
