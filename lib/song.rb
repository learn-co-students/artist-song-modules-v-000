require 'pry'
require_relative '../config/environment.rb'

class Song
  include Memorable::InstanceMethods
  include Paramable
  extend Memorable::ClassMethods
  extend Findable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end
