require 'pry'
require_relative "../lib/concerns/memorable.rb"
require_relative "../lib/concerns/paramable.rb"
require_relative "../lib/concerns/findable.rb"

class Song
  attr_accessor :name
  attr_reader :artist
	
	extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
	include Paramable::InstanceMethods
	
  @@songs = []

  def initialize
    @@songs << self
  end
  
  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end
end
