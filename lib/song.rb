require_relative '../lib/concerns/memorable.rb'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/paramable'

require 'pry'

class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
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
