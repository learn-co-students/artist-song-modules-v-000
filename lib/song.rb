require_relative "./memorable.rb"
require_relative "./paramable.rb"

require 'pry'

class Song
  attr_accessor :name, :artist
  attr_reader :artist
  
  extend Memorable
  include Paramable

  @@songs = []
  
  def self.all
    @@songs
  end

  def initialize
    @@songs << self
  end
  
end
