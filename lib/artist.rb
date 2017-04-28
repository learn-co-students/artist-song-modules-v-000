require 'pry'

class Artist
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    #becuase we have a parent which is the "Memorable::ClassMethods"
    #by using "super" we are telling the initialize method to use that plus whatever
    #else code is in the method body
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

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  #def to_param
  #  name.downcase.gsub(' ', '-')
  #end

end
