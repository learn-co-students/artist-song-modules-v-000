require 'pry'

class Song
  extend Memorable::ClassMethods 
  include Memorable::InstanceMethods
  extend Findable
  include Paramable
  include Nameable
  # Note: putting the attr_accessor for :name in Nameable was NOT required.
  # Also, I should not do that in general. I may need to add something else to attr_accessor.
  # And it looks like I cannot put "super" in attr_accessor without causing an error.
  
  attr_reader :artist

  @@songs = []

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end
