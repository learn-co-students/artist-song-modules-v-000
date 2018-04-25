require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods

  @@songs = []

  def artist=(artist)
    @artist = artist
    # artist.add_song(self) unless artist.songs.include?(self)
  end

  def self.all
    @@songs
  end

end
