require 'pry'

class Artist

  attr_accessor :name #reader, writer for instance variable name
  attr_reader :songs#reader for instance array of songs by
  #this artist

  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods

  @@artists = []#class variables holds all artists created

  def self.all#class method
    @@artists#access all the artists
  end

  def initialize #instance initialize method
    super #use initialize from Memorable
    @songs = [] #sets this artist's song array to empty
  end

  def add_song(song) #instance method
    @songs << song # add song to artist's array of songs
    song.artist = self#tell song who its artist is
  end

  def add_songs(songs)#instance method, takes an array of songs
    songs.each { |song| add_song(song) }#adds these songs to artist's songs
  end

end
