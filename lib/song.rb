require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@all = []

  extend Memorable::ClassMethods
  extend Findable
  include Paramable
  include Memorable::InstanceMethods

  # def initialize
  #   self.class.all<< self
  # end

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@all
  end
end
