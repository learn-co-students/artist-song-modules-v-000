require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/paramable'

class Song
  include Paramable::InstanceMethods
  extend Findable::ClassMethods
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  # def initialize
  #   self.class.all << self
  # end

  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end

  def artist=(artist)
    @artist = artist
  end

  # def self.reset_all
  #   @@songs.clear
  # end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end

  # def self.count
  #   self.all.count
  # end

  def self.all
    @@songs
  end
end
