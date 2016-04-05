require 'pry'
require_relative './memorable.rb'
require_relative './findable.rb'
require_relative './paramable.rb'

class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods

  @@songs = []

  def artist=(artist)
    @artist = artist
  end

   def self.all
    @@songs
  end
end
