require 'pry'
class Song
  attr_accessor :name
  attr_reader :artist
  include Paramable
  extend  Findable
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  @@songs = []

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end
