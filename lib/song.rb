require 'pry'

class Song
  
  extend Memorable
  attr_accessor :name # access to call name method - manipulate value
  attr_reader :artist # reader only - cannot manipulate value for artist

  @@songs = [] # class variable set to empty array

  def initialize # initializes a new instance of Song class - w/o argument
    @@songs << self # upon initialization Song instances are stored in songs array
  end

  def self.find_by_name(name) # class method - iterates over the songs array - returns song name attr
    @@songs.detect{|a| a.name == name}
  end

  def artist=(artist) # instance setter method - sets the artist instance variable to value that is passed in as argument 
    @artist = artist
  end

#  def self.reset_all # class method - sets the songs array to empty
#    @@songs.clear
#  end

  def to_param # instance method - calls downcase and gsub method on name method 
    # replaces spaces with hyphen 
    name.downcase.gsub(' ', '-')
  end

#  def self.count # class method - calls all and count method on Song class
#    self.all.count
#  end

  def self.all # class method - displays contents of songs array
    @@songs
  end
end
