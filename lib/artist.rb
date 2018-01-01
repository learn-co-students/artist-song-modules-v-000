class Artist
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods
  attr_accessor :name, :songs
  @@artists = []
  def self.all; @@artists; end

  def initialize
    super
    self.songs = []  
  end

  def add_song(song)
    self.songs << song
    song.artist = self unless song.artist
  end

  def add_songs(songs);
    songs.each{|song| add_song(song)}
  end
end