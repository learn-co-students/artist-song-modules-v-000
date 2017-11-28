require 'pry'
require_relative '../lib/concerns/memorable'

class Song
  include Memorable::InstanceMethods, Paramable
  extend Memorable::ClassMethods, Findable

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
