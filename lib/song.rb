require 'pry'



class Song
  attr_accessor :name
  attr_reader :artist
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable

  @@songs = []

  # def initialize # memorable module instance method
  #   @@songs << self  # same as self.class.all << self
  # end

  # def self.find_by_name(name) #findable module method
    # @@songs.detect{|a| a.name == name}
  # end

  def self.all
    @@songs
  end

  # def self.reset_all  # memorable module method
  #   self.all.clear
  # end
  #
  # def self.count # memorable module method
  #   self.all.count
  # end

  def artist=(artist)
    @artist = artist
  end

  # def to_param # paramable module method
  #   name.downcase.gsub(' ', '-')
  # end
end
