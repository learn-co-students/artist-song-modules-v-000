require 'pry'
require_relative './concerns/memorable.rb'
require_relative '../lib/concerns/findable.rb'
require_relative '../lib/concerns/paramable.rb'

class Song
  attr_accessor :name
  attr_reader :artist
  extend Memorable::ClassMethods, Findable
  include Paramable, Memorable::InstanceMethods
  @@songs = []

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end
