require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable

  @@artists = []

  def self.find_by_name(name)
    @@artists.detect{|a| a.name == name}
  end

  def initialize
    super #tell our Artist's .initialize method to use the code in the Memorable::InstanceMethods
          #module's .initialize method and also to use any additional code in the Artist's
          # => .initialize method.
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

  #def to_param
  #  name.downcase.gsub(' ', '-')
  #end

end
