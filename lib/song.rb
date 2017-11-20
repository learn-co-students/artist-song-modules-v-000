require 'pry'

class Song
  extend Memorable::ClassMethods
  extend Findable
  include Memorable::InstanceMethods
  include Paramable

  attr_accessor :name, :artist

  @@songs = []

  def self.all
    @@songs
  end
end
