require 'pry'

require_relative './concerns/memorable.rb'

class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable

  @@list = []

  def initialize
    @@list << self
  end

  def self.find_by_name(name)
    @@list.detect{|a| a.name == name}
  end

  def artist=(artist)
    @artist = artist
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end

  # def self.reset_all
  #   @@list.clear
  # end
  #
  # def self.count
  #   self.all.count
  # end

  def self.all
    @@list
  end
end
