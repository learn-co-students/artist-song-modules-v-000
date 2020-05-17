require 'pry'

class Song
  extend Memorable
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods

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
