require 'pry'
require_relative'./concerns/memorable.rb'
require_relative './concerns/findable.rb'
require_relative './concerns/paramable.rb'
class Song

  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  # def initialize
  #   @@songs << self
  # end

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end
