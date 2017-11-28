require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []



  def artist=(artist)
    @artist = artist
  end

  extend Findable
  include Paramable
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  def self.all
    @@songs
  end
end
