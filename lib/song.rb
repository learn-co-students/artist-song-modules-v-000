require 'pry'
require_relative './concerns/music_mods.rb'
class Song
  include MusicMods::InstanceMethods
    extend MusicMods::ClassMethods
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end
