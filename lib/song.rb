require 'pry'

class Song
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods

  attr_accessor :name#reader, writer for name of song
  attr_reader :artist#reader for Song's artist

  @@songs = []#class array to hold all songs created

  def self.all#class method
    @@songs#access all songs
  end

  def initialize#instance initalize
    self.class.all << self#put this song (self) into class array songs
  end

  def artist=(artist)#instance setter method (why no attr_accessor?)
    @artist = artist#set song's artist (why not self.all?)
  end
end
