require 'pry'

class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable
  extend Findable

  attr_accessor :name
  attr_reader :artist

  # @@songs = [] ** could also use @@songs, but i tried @@all - not sure which is the best?
  @@all = []

  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end

  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end

  def self.all
    @@all
  end
end
