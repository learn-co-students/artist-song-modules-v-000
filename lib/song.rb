require 'pry'

require_relative 'memorable.rb'
require_relative 'paramable.rb'

class Song
  attr_accessor :name
  attr_reader :artist
  @@songs = []

  extend Memorable
  include Paramable

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
