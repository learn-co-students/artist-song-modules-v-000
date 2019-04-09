require 'pry'

class Song

# include is to inherit from the modules or parent class
extend Memorable::ClassMethods
include Memorable::InstanceMethods
extend Findable::ClassMethods
include Paramable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end
