require 'pry'
require_relative "../lib/concerns/memorable.rb"
require_relative "../lib/concerns/findable.rb"
require_relative "../lib/concerns/paramable.rb"

class Song
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def artist=(artist)
    @artist = artist
  end

  #def to_param
  #  name.downcase.gsub(' ', '-')
  #end

  def self.all
    @@songs
  end
end
