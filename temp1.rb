require_relative "./lib/artist.rb"
require_relative "./lib/song.rb"

class Temp < Artist
  attr_accessor :song, :artist, :name

def initialize(name)
  @name = name
  @songs << song
end

def songadd(song)
  artist.add_song(song)
  puts song.artist
  binding.pry
  end

end

asdf = "Blue Skies"

songadd(asdf)