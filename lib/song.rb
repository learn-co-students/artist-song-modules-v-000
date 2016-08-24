require 'pry'

class Song

  attr_accessor :name, :artist

  extend Memorable::ClassMethods, Findable
  include Memorable::InstanceMethods, Paramable

  @@songs = []

  def self.all
    @@songs
  end
end
