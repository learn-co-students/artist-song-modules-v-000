require_relative './memorable.rb'
require_relative './paramable.rb'
require 'pry'

class Song
  extend Memorable
  include Paramable

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
