require_relative '../config/environment'
# require 'pry'

class Song
  extend Findable, Memorable::ClassMethods
  include Memorable::InstanceMethods, Paramable
  
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
