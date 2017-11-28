require 'pry'

class Song
  extend Memorable::ClassMethods, Findable
  include Paramable, Memorable::InstanceMethods
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def artist=(artist)
    @artist = artist
  end






  def self.all
    @@songs
  end
end
