require_relative '../lib/memorable.rb'
require_relative '../lib/paramable.rb'
require 'pry'

class Artist
extend Memorable
  attr_accessor :name
  attr_reader :songs


  @@all = []

  include Paramable
 # def self.find_by_name(name)
  #  @@artists.detect{|a| a.name}
  #end

  def initialize

    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  #def self.reset_all
   # self.all.clear
  #end

  #def self.count
   # @@artists.count
  #end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end

end
