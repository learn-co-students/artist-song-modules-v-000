require 'pry'
require_relative 'memorable.rb'
require_relative 'paramble.rb'
class Song
  extend Memorable
  include Paramble
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end
