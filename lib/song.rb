require 'pry'
require_relative './concerns/findable'
require_relative './concerns/memorable'
require_relative './concerns/paramable'


class Song
  extend Findable 
  extend Memorable::ClassMethods
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
