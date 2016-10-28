require 'pry'

class Artist
    extend Memorable::ClassMeths
    include Memorable::Instances
    extend Findable
    include Paramable

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
      super
      #prevents total overriding feature by defining method w/same name
      #Effectively allows both methods to get run when called
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end


end
