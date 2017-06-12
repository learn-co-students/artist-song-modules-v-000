require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods
  @@artists = []

#  def self.find_by_name(name)
#    @@artists.detect{|a| a.name == name}
#  end

  def initialize
    #Remember our super keyword from the inheritance code along exercise? The super keyword, placed inside a method, will tell that method to look up its behavior in the method of the same name that lives in the parent, or super, class. A method that includes the super keyword will execute any code placed inside the super class' method of the same name, and then execute any code inside the child class' method.
    #So, we can use the super keyword to tell our Artist's .initialize method to use the code in the Memorable::InstanceMethods module's .initialize method and also to use any additional code in the Artist's .initialize method. Take a look:
    #When we include a module in a class, we are really telling that class to inherit methods from that module.
   super
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

#  def to_param
#    name.downcase.gsub(' ', '-')
#  end

end
