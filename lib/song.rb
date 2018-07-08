require 'pry'

class Song
  
  attr_accessor :name
  attr_reader :artist

  @@songs = []
  
  extend Findable::ClassMethods
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods
  
  # def initialize
  #   @@songs << self
  # end
  
  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end

  def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self)
  end

  def self.all
    @@songs
  end
  
end
