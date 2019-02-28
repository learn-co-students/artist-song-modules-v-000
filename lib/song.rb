require 'pry'
# require_relative '../lib/concerns/memorable'

class Song
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
