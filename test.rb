  module ClassMethods

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def self.find_by_name(name)
    self.all.detect{|a| a.name}
  end

end


=begin

require 'pry'
#require_relative './concerns/memorable.rb'


class Artist

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :songs

  @@artists = []



  def self.count
    #@@artists.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def self.find_by_name(name)
    self.all.detect{|a| a.name}
  end
  

  def initialize
    @@artists << self
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

  def to_param
    name.downcase.gsub(' ', '-')
  end

end

=end


=begin
require 'pry'
#require_relative './concerns/memorable.rb'

class Song

  extend ClassMethods

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []

#=begin
  def self.count
    #@@artists.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def self.find_by_name(name)
    self.all.detect{|a| a.name}
  end
#=end  

  def initialize
    @@songs << self
  end

  #def self.find_by_name(name)
    #@@songs.detect{|a| a.name}
  #end

  def artist=(artist)
    @artist = artist
  end

  #def self.reset_all
  #  @@songs.clear
  #end

  def to_param
    name.downcase.gsub(' ', '-')
  end

  #def self.count
  #  self.all.count
  #end

  def self.all
    @@songs
  end
end

=end
