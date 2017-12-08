require 'pry'

class Song
  
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  
  extend Findable 
  
  include Paramable
  
  attr_accessor :name # access to call name method - manipulate value
  attr_reader :artist # reader only - cannot manipulate value for artist

  @@songs = [] # class variable set to empty array

  def artist=(artist) # instance setter method - sets the artist instance variable to value that is passed in as argument 
    @artist = artist
  end

  def self.all # class method - displays contents of songs array
    @@songs
  end
end
