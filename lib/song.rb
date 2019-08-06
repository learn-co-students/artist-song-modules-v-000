require 'pry'

class Song
    extend Memorable::ClassMethods
    extend Memorable::InstanceMethods
    extend Findable
    include Paramable


  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def self.all
  @@songs
  end

  def artist=(artist)
    @artist = artist
  end


  def add_artist(artist)
    @artists << artist
    artist.song = self
  end

  def add_artists(artists)
    artists.each { |artist| add_artist(artist) }

end

end
