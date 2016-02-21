require 'pry'
require_relative "../bin/memorable.rb"
require_relative "../bin/paramable.rb"

class Song
  attr_accessor :name
  attr_reader :artist
  extend Memorable
  include Paramable
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
