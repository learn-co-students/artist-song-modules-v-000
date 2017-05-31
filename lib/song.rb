require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/paramable'
require_relative '../lib/concerns/findable'


class Song

  include Memorable::InstanceMethods
  extend Memorable::ClassMethods

  include Paramable
  extend Findable 

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize #initliazes with pushing song in @@songs
    @@songs << self
  end

  def artist=(artist) #writer methods for class variable artist
    @artist = artist
  end

  def self.all #displays all songs in @@songs array
    @@songs
  end
end
