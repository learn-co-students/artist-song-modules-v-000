require 'pry'
#require_relative './concerns/memorable.rb'

class Song

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable

  attr_accessor :name
  attr_reader :artist

  @@songs = []


  #def self.count
    #self.all.count
  #end

  #def self.reset_all
    #self.all.clear
  #end

  #def self.find_by_name(name)
    #self.all.detect{|a| a.name}
  #end

#---------------------------------  

  #def initialize
    #@@songs << self
  #end

  def artist=(artist)
    @artist = artist
  end

  #def to_param
    #name.downcase.gsub(' ', '-')
  #end

  def self.all
    @@songs
  end

end