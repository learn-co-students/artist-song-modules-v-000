require 'pry'
require_relative '../lib/memorable.rb'
require_relative '../lib/paramble.rb'

class Song
  attr_accessor :name
  attr_reader :artist
  extend Memorable
  include Paramble

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
