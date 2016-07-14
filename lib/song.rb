require 'pry'

class Song

  extend Memorable::ClassMethods #inherit the class method included in Memorable.rb
  extend Findable::ClassMethods #inherit the class method included in Findable.rb
  include Paramable::InstanceMethods #inherit the class method included in Paramable.rb
  include Memorable::InstanceMethods #inherit the class method included in Memorable.rb

  attr_accessor :name
  attr_reader :artist

  @@songs = []


  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end

end
