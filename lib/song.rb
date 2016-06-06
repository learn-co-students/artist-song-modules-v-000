require 'pry'
require_relative './memorable.rb'
require_relative './paramable.rb'

class Song
  include Paramable
  extend Memorable

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
