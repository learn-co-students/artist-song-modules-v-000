require 'pry'
require_relative '../config/environment.rb'
class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods
  extend Findable

  include Memorable::InstanceMethods
  include Paramable

  @@songs = []

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end
