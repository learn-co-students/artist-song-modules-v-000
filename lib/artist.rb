require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs
  extend Memorable, Findable
  include Paramable

  @@artists = []

  # The method listed below is replaced by extend Findable
  #def self.find_by_name(name)
  #  @@artists.detect{|a| a.name == name}
  #end

  def initialize
    @@artists << self
    @songs = []
  end

  def self.all
    @@artists
  end

  # The method listed below is replaced by extend Memorable
  #def self.reset_all
  #  self.all.clear
  #end

  # The method listed below is replaced by extend Memorable
  #def self.count
  #  @@artists.count
  #end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  # The method listed below is replaced by include Paramable
  #def to_param
  #  name.downcase.gsub(' ', '-')
  #end

end
