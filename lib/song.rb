require 'pry'

class Song
  extend Memorable::ClassMethods
  extend Findable
  include Paramable
  include Memorable::InstanceMethods

  attr_accessor :name, :artist

  @@songs = []

  def self.all
    @@songs
  end
end
