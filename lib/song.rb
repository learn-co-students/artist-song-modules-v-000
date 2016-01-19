require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/paramable'

class Song

  extend Memorable
  include Memorable
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