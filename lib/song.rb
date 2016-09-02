require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable

  @@songs = []

  #def initialize
#    self.class.all << self  #this abstracts the initialize method to take out class specific @@song and replace with self.class
  #end

 # def self.find_by_name(name)
#    @@songs.detect{|a| a.name == name}
 # end

 # the above methods were put refactored into modules to decrease repitition

  def self.all
    @@songs
  end

  def artist=(artist)   #setter method for artist
    @artist = artist
  end

#  def to_param
#    name.downcase.gsub(' ', '-')
 # end


end
