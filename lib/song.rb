require 'pry'

class Song
  extend Memorable::Class
  include Memorable::Instance
  extend Findable
  include Paramable

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
