require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs
  extend Memorable::ClassMethods
  extend Findable
  include Paramable
  include Memorable::InstanceMethods

  @@artists = []

  def add_song(song)
    if @songs==nil
      @songs=[]
    end
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end


  def self.all
    @@artists
  end

end
