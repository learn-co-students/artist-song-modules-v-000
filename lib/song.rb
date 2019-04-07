class Song
  extend Memorable
  extend Findable
  extend Paramable

  attr_accessor :name
  attr_reader   :artist

  def initialize
    @@all << self
  end

  def artist=(artist)
    @artist = artist
  end
end
