require 'pry'
require_relative '../lib/memorable.rb'
require_relative '../lib/paramable.rb'

class Song
  attr_accessor :name
  attr_reader :artist
  extend Memorable
  include Paramable

  @@songs = []

  def initialize
    @@songs << self
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
