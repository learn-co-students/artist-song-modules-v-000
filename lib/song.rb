require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods, Findable
  include Memorable::InstanceMethods, Paramable

  @@songs = []

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end

end
