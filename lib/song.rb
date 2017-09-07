require 'pry'

class Song
  extend Memorable::ClassMethods
  extend Findable
    include Paramable
    include Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  @@all = []

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@all
  end
end
