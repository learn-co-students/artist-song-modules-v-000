require 'pry'

class Song
    extend Memorable::ClassMeths
    include Memorable::Instances
    extend Findable
    include Paramable
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
