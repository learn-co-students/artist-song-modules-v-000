require 'pry'


class Artist
  attr_accessor :name
  attr_reader :songs
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable

  @@artists = []

  def initialize # memorable module instance method
    # @@artists << self  # same as self.class.all << self
    super
    @songs = []
  end

  # def self.find_by_name(name)
  #   @@artists.detect{|a| a.name == name}
  # end

  def self.all
    @@artists
  end

  # def self.reset_all # memorable module method
  #   self.all.clear
  # end
  #
  # def self.count # memorable module method
  #   self.all.count
  # end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  # def to_param # paramable module method
  #   name.downcase.gsub(' ', '-')
  # end
end
