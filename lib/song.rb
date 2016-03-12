require_relative './memorable.rb'

require_relative './paramble.rb'

# require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

extend Memorable

include Paramble

  def initialize
    @@songs << self
  end

  def self.all
    @@songs
  end
  
  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end

  def self.all
    @@songs
  end
end
