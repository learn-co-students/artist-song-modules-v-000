require 'pry'

class Song
  extend Memorable::ClassMethods #namespacing
  include Memorable::InstanceMethods #namespacing
  extend Findable
  include Paramable

  attr_accessor :name
  attr_reader :artist

  #empty class variable array to store all instantiated Song objects in
  @@songs = []

  #sets the song's artist to the artist specified
  def artist=(artist)
    @artist = artist
  end

  #returns a list of all Song objects that have been instantiated
  def self.all
    @@songs
  end
end
