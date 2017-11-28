require 'pry'

require_relative '../lib/concerns/paramable'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'

class Song


  attr_accessor :name
  attr_reader :artist

  include Memorable::InstanceMethods, Paramable
  extend Memorable::ClassMethods, Findable

  @@songs = []



  def artist=(artist)
    @artist = artist
  end


  def self.all
    @@songs
  end
end
