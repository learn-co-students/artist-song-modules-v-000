require 'pry'

class Song
  extend Memorable::ClassMethods, Findable
  include Paramable, Memorable::InstanceMethods

  attr_accessor :name, :artist

  @@songs = []

  def self.all
    @@songs
  end
end
