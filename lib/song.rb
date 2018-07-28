require 'pry'

class Song
  attr_accessor :name, :artist
  

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  #custome wirter method  
  # def artist=(artist)
  #   @artist = artist
  # end

  def self.reset_all
    @@songs.clear
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end

  def self.count
    self.all.count
  end

  def self.all
    @@songs
  end
end

# song = Song.new
# binding.pry
# artist = Song.artist("artist name")