require 'pry'

class Artist
  extend Memorable::ClassMethods #inherit the class method included in Memorable.rb
  extend Findable::ClassMethods #inherit the class method included in Findable.rb
  include Paramable::InstanceMethods #inherit the class method included in Paramable.rb
  include Memorable::InstanceMethods #inherit the class method included in Memorable.rb

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    super # super keyword will execute any code placed inside the super class'
    #method of the same name, and then execute any code inside the child class' method.
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end
