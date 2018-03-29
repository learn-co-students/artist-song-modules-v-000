require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist
  extend Findable
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods 
  include Paramable

  @@songs = []

=begin
  def initialize
    @@songs << self
  end


  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end
=end

  def artist=(artist)
    @artist = artist
  end

=begin
  def self.reset_all
    @@songs.clear
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end

  def self.count
    self.all.count
  end
=end

  def self.all
    @@songs
  end
end
