require 'pry'
require 'memorable'

class Song
  attr_accessor :name, :artist
  attr_reader :artist
  extend Memorable::ForClass
  include Memorable::ForInstance

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.all
    @@songs
  end
end
