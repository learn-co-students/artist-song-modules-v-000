require 'pry'
require_relative './memorable.rb'
require_relative './paramble.rb'

class Song
  extend Memorable
  include Paramble
  attr_accessor :name
  attr_reader :artist

  @@all = []

  def initialize
    @@all << self
  end

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@all
  end
end
