class Song
  @@songs = []
  attr_accessor :name
  attr_reader :artist

  extend Findable::ClassMethods
  extend Memorable::ClassMethods
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods
  
  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self)
  end

 
end
