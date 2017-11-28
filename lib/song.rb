require 'pry'

class Song
  extend Memorable::Classmethods
  extend Findable::Classmethods
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods



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
