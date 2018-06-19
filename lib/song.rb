require_relative '../config/environment'
require 'pry'

class Song
  extend Memorable::ClassMethods
  extend Findable
  include Memorable::InstanceMethods
  include Paramable
  
  attr_accessor :name
  attr_reader :artist

  @@all = []

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@all
  end
end
