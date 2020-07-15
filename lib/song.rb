require 'pry'

class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramble
  
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
