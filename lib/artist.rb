require 'pry'

class Artist
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    @@artists << self
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  # Same
  def to_param
    name.downcase.gsub(' ', '-')
  end

  # Same
  def self.all
    @@artists
  end

  # # Same
  # def self.find_by_name(name)
  #
  # end

end
