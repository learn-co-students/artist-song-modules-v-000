require_relative './memorable.rb'
require_relative './paramable.rb'

class Song
  extend Memorable
  include Paramable
  attr_accessor :name, :artist
  # attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  # def artist=(artist)
  #   @artist = artist
  # end

  def self.all
    @@songs
  end
end
