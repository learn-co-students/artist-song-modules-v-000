require 'pry'
require_relative './memorable.rb'
require_relative './findable.rb'
require_relative './paramable.rb'

class Song
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def artist=(artist)
    @artist = artist
  end

   def self.all
    @@songs
  end
  
   #def reset_all
    #self.all.clear
  #end

  #def count
  #   self.all.count
  #end
end
