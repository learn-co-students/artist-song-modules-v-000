#can be initialized
#can have a name
#converts its name to a url friendly parameter
#####Class methods
#keeps track of the artists that have been created
#can count how many artists have been created
#can find an artist by name
#can reset the artists that have been created
#####with songs
#can have a song added
#knows how many songs it has

require 'pry'

class Artist
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def self.find_by_name(name)
    @@artists.detect{|a| a.name == name}
  end

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

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

   def to_param
     name.downcase.gsub(' ', '-')
   end

end
