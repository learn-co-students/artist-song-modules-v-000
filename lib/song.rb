require 'pry'

class Song
  extend Memorable::ClassMethods #class methods need to be defined first
  extend Findable::ClassMethods #instance methods are include
  include Paramable::InstanceMethods #<- this is how to call nested modules
  attr_accessor :name
  attr_reader :artist


  @@songs = []

  def initialize
    @@songs << self
  end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def artist=(artist)
    @artist = artist
  end



#  def self.reset_all
#    @@songs.clear
#  end

  def to_param
    name.downcase.gsub(' ', '-')
  end

#  def self.count
#    self.all.count
#  end

  def self.all
    @@songs
  end
end
