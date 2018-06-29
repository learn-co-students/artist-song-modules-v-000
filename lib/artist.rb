require_relative './concerns/memorable.rb'
require_relative './concerns/findable.rb'
require_relative './concerns/paramable.rb'
require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable
  

  @@artists = []

  #def self.find_by_name(name)
  #  @@artists.detect{|a| a.name == name}
  #end

  #def initialize
  #  @@artists << self
  #  @songs = []
  #end
  def initialize
    super
    @songs = []
  end
  
  def self.all
    @@artists
  end

#    self.all.clear
#  end

  #def self.count
  #  @@artists.count
  #end

#  def add_song(song)
#    @songs << song
#    song.artist = self
#  end
  def add_song(song)
    @songs << song
    song.artist = self unless song.artist
  end


  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  #def to_param
  #  name.downcase.gsub(' ', '-')
  #end

end
