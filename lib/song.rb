require 'pry'
# require_relative './concerns/memorable'
# require_relative "./concerns/findable"

class Song

  extend Memorable::ClassMethods, Findable::ClassMethods
  include Paramable::InstanceMethods

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
