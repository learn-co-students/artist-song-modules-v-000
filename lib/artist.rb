require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/paramable'
require_relative '../lib/concerns/findable'

class Artist

  include Memorable::InstanceMethods
  extend Memorable::ClassMethods

  include Paramable
  extend Findable 

  attr_accessor :name
  attr_reader :songs

  @@artists = [] #store artists

  def self.all
    @@artists
  end

  def initialize #initalize with pushing name of artist into array and empty @songs array
    super
    @songs = []
  end


  def add_song(song) #add song to song then tells the song that it belongs to that artist
    @songs << song
    song.artist = self
  end

  def add_songs(songs) #can add songs
    songs.each { |song| add_song(song) }
  end


end
