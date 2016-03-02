require 'pry'
require_relative '../lib/memorable.rb'
require_relative '../lib/paramable.rb'

class Song

  extend Memorable
  extend Paramable
  include Memorable
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
