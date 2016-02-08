require_relative './memorable.rb'
require_relative './paramble.rb'

require 'pry'

class Song
  include Paramble
  extend Memorable 

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
