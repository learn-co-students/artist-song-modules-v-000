require 'pry'

class Song
  attr_accessor :name, :artist
  attr_reader :artist
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable
  @@songs = []

  def self.all
    @@songs
  end
end
