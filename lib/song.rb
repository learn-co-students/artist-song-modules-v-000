class Song
  extend Memorable::ClassMethods, Findable::ClassMethods
  include Paramable::InstanceMethods, Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end
