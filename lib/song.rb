require 'pry'
require_relative '../lib/memorable.rb'
require_relative '../lib/paramable.rb'


class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable
  include Paramable

  @@songs = []

  def initialize
    @@songs << self
  end

  #def self.find_by_name(name)
   # @@songs.detect{|a| a.name}
  #end

  def artist=(artist)
    @artist = artist
  end

  #def self.reset_all
   # @@songs.clear
  #end



  #def self.count
   # self.all.count
  #end

  def self.all
    @@songs
  end
end
