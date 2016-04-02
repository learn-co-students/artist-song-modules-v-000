require_relative '../lib/memorable.rb'

require 'pry'

class Song
  attr_accessor :name, :artist


  @@all = []

   extend Memorable
   include Paramable

  def initialize
    @@all << self
  end

 # def self.find_by_name(name)
  #  @@songs.detect{|a| a.name}
  #end



 # def self.reset_all
  #  @@songs.clear
  #end

  def to_param
    name.downcase.gsub(' ', '-')
  end

  #def self.count
   # self.all.count
  #end

  def self.all
    @@all
  end
end
