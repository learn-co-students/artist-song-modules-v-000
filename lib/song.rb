require_relative '../config/environment.rb'
require 'pry'

class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Findable
  include Paramable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def artist=(artist)
    @artist = artist
  end
=begin
  def to_param
    name.downcase.gsub(' ', '-')
  end
=end
  def self.all
    @@songs
  end
end
