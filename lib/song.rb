require 'pry'

class Song
  extend Findable, Memorable::ClassMethods
  include Memorable::InstanceMethods, Paramable
  attr_accessor :name, :artist

  @@songs = []

  def self.all
    @@songs
  end

end
