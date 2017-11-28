require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  # def initialize
  #   @@songs << self
  # end

include Memorable::InstanceMethods

  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end

extend Findable::ClassMethod

  def artist=(artist)
    @artist = artist
  end


  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end

include Paramable::InstanceMethod

    extend Memorable::ClassMethods

  def self.all
    @@songs
  end
end
