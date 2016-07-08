require_relative '../lib/memorable.rb'
require_relative '../lib/paramble.rb'
require 'pry'

class Song
  extend Memorable
  include Paramble

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end  

end
