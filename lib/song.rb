require_relative './memorable.rb'
require_relative './paramable.rb'
require 'pry'

class Song
  extend Memorable
  include Paramable

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
