require 'pry'
require_relative '../lib/concerns/memorable.rb'
require_relative '../lib/concerns/findable.rb'
require_relative '../lib/concerns/paramable'

class Song
  extend Findable
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  # def initialize
  #   @@songs << self
  # end

  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end

  def self.all
    @@songs
  end

end  # End of Class
