require 'pry'

class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  
  attr_accessor :name
  attr_reader :artist

  @@artists = []

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@artists
  end
end
