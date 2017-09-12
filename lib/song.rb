require 'pry'
require_relative '../lib/concerns/memorable.rb'
require_relative '../lib/concerns/paramable.rb'
require_relative '../lib/concerns/findable.rb'

class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable
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
