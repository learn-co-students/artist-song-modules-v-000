class Artist
  extend Memorable
  extend Findable

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize#initializes an artist instance and an array of songs and saves the instance in the class variable array
    @@artists << self
    @songs = []
  end

  def self.all#display the class variable array storing all the instances of artists
    @@artists
  end

  def add_song(song)#adds a song of the artist instance, stores it in the artist songs array whiling teach the song it belongs to the artist
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
