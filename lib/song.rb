require 'pry'

class Song
  include Findable, Paramable, Memorable::InstanceMethods
  extend Memorable::ClassMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
  super
  end

 def self.find_by_name(name)
   @@songs.detect{|a| a.name == name}
  end

  def artist=(artist)
    @artist = artist
  end

  def self.reset_all
    @@songs.clear
  end



  def self.count
    self.all.count
  end

  def self.all
    @@songs
  end
end
