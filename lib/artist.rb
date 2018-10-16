require 'pry'
require_relative './memorable.rb'
require_relative './paramable.rb'
#class Artist
#  attr_accessor :name
#  attr_reader :songs
#  extend Memorable::ClassMethods
#  extend Findable
#  include Memorable::InstanceMethods
#  include Paramable

#  @@artists = []

#  def initialize
#    super
#    @songs = []
#  end

#  def self.all
#    @@artists
#  end

  #def self.reset_all
  #  self.all.clear
#  end

#  def self.count
  #  self.all.count
#  end

#  def add_song(song)
#    @songs << song
#    song.artist = self
#  end

#  def add_songs(songs)
#    songs.each do { |song| add_song(song) }
#  end
#
#end

class Artist
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    super
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(song)
    songs.each {|song| add_song(song)}
  end
end
