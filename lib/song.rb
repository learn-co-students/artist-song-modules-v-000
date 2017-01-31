require 'pry'

class Song
  #extend Memorable
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []

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
