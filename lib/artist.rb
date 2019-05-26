class Artist
  extend   Memorable::ClassMethods
  include  Memorable::InstanceMethods
  extend   Findable
  include  Paramable

  @@all = []

  attr_accessor :name
  attr_reader   :songs

  def initialize
    super
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end
