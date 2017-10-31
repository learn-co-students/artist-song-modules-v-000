require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  def artist=(artist)
    @artist = artist
  end

  include Paramable::InstanceMethods
  extend Memorable::ClassMethods

  def self.all
    @@songs
  end
end
