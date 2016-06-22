require 'pry'


class Song
    include Paramable::InstanceMethods
  extend Memorable::ClassMethods
  extend Findable::ClassMethods

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
