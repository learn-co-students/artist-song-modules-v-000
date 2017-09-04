require 'pry'

class Song

  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethod
  include Memorable::InstanceMethod
  extend Findable
  include Paramable

    @@songs = []

    def artist=(artist)
      @artist = artist
    end

    def self.all
      @@songs
    end
  end
