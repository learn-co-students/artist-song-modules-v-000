require 'pry'

class Song

  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods

  @@songs = []

  def initialize
    super
    @songs = []
  end

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end
