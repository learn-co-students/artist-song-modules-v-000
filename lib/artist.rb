class Artist
  @@artists = []
  attr_accessor :name
  attr_reader :songs

  extend Findable::ClassMethods
  extend Memorable::ClassMethods
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods

  def self.all
    @@artists
  end

  def initialize
    super
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self unless song.artist
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
end
