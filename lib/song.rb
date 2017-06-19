require 'pry'

require_relative './concerns/memorable.rb'

class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable, Findable
  include Paramable

  @@list = []

  def initialize
    @@list << self
  end

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@list
  end
end
