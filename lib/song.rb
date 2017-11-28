require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end

class Song
  include Memorable::InstanceMethods
  extend Memorable::ClassMethods
  extend Findable
  include Paramable
end
