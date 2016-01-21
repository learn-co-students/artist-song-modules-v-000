require 'pry'
require_relative '../lib/memorable.rb'
require_relative '../lib/paramable.rb'
include Memorable
include Paramable 

class Song
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
