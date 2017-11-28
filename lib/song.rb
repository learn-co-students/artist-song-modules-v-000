require_relative './concerns/memorable.rb'
require_relative './concerns/findable.rb'
require 'pry'

class Song
  extend Memorable::ClassMethods
  # include Memorable::InstanceMethods
  include Paramable
  extend Findable

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
