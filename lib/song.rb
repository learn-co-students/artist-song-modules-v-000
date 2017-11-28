#can initialize a song
#can have a name
#converts its name to a url friendly parameter
#has an artist
#####Class methods
#keeps track of the songs that have been created
#can count how many songs have been created
#can find a song by name
#can reset the songs that have been created

require 'pry'

class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

   def initialize
     self.class.all << self
   end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def artist=(artist)
    @artist = artist
  end

   def to_param
     name.downcase.gsub(' ', '-')
   end

  def self.all
    @@songs
  end
end
