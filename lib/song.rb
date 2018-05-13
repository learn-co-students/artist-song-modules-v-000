require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable

  @@songs = []

  # def initialize
  #   songs.class.all << self
  # end

  def artist=(artist)
    @artist = artist
  end

  def self.count
    self.all.count
  end

  def self.all
    @@songs
  end


end
