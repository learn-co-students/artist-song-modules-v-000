require 'pry'

class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable
  extend Findable

  attr_accessor :name
  attr_reader :artist

  # @@songs = [] ** could also use @@songs, but i tried @@all - not sure which is the best?
  @@all = []

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@all
  end
end
