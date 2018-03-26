require 'pry'
require_relative '../lib/concerns/memorable'

class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  # extend Paramable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  # def initialize
  #   @@songs << self
  # end

  def artist=(artist)
    @artist = artist
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end

  def self.all
    @@songs
  end
end
