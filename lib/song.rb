require_relative "./concerns/memorable.rb"
require_relative "./concerns/findable.rb"
require_relative "./concerns/paramble.rb"
require 'pry'

class Song
  extend Memorable::ClassMethods, Findable
  include Paramble, Memorable::InstanceMethods
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
