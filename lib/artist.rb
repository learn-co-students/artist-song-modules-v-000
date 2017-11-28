require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  # def self.find_by_name(name)
  #   @@artists.detect{|a| a.name == name}
  # end

extend Findable::ClassMethod

  # def initialize
  #   @@artists << self
  #   @songs = []
  # end

  def initialize
    super
    @songs = []
  end

include Memorable::InstanceMethods

  def self.all
    @@artists
  end

  extend Memorable::ClassMethods

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end

include Paramable::InstanceMethod

end
