require 'pry'
require_relative '../lib/memorable.rb'
require_relative '../lib/paramable.rb'

class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self)
  end

  

  def self.all
    @@songs
  end

end
