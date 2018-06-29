require 'pry'
require_relative './concerns/memorable.rb'
require_relative './concerns/findable.rb'
require_relative './concerns/paramable.rb'

class Song
  attr_accessor :name
  attr_reader :artist
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable
  @@songs = []

  #def initialize
  #  @@songs << self
  #end

  #def self.find_by_name(name)
  #  @@songs.detect{|a| a.name == name}
  #end

  #def artist=(artist)
  #  @artist = artist
  #end

    def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self)
  end
  
#  def self.reset_all
#    @@songs.clear
#  end

#  def to_param
#    name.downcase.gsub(' ', '-')
#  end

#  def self.count
#    self.all.count
#  end

  def self.all
    @@songs
  end
end
