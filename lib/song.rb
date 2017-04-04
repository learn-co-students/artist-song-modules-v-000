require 'pry'

class Song
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods
  
  attr_accessor :name, :artist

  @@songs = []

  def self.all
    @@songs
  end
  #def initialize
  #  @@songs << self
  #end

  #def self.find_by_name(name)
  #  @@songs.detect{|a| a.name == name}
  #end

  #def self.reset_all
  #  @@songs.clear
  #end

  #def self.count
  #  self.all.count
  #end

  #def to_param
  #  name.downcase.gsub(' ', '-')
  #end

    #def artist=(artist)
    #  @artist = artist
    #end
end
