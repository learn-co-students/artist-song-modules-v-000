require 'pry'

class Song
  # include Memorable
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable


  attr_accessor :name
  attr_reader :artist

  @@songs = []

  # def initialize
  #   self.class.all << self
  # end

  def artist=(artist)
    @artist = artist
  end


  def self.all
    @@songs
  end
end
