class Artist
#=================modules==================
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods
#=================properties================
  attr_accessor :name
  attr_reader :songs
  @@artists = []
#=================intialize=================
  def initialize
    super
    @songs = []
  end
#==================class====================
  def self.all
    @@artists
  end
#=================instance==================
  def add_song(song)
    @songs << song
    song.artist = self unless song.artist
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
#==========================================
end