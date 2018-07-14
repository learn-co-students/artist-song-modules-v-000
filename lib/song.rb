require 'pry'
require_relative './concerns/memorable'
require_relative './concerns/findable'
require_relative './concerns/paramable'


class Song
  extend Memorable::All
  include Memorable::InstanceMethods
  extend Findable::All
  include Paramable::All
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
