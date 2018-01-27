require_relative '../lib/concerns/memorable_module.rb'
require_relative '../lib/concerns/paramable.rb'
require_relative '../lib/concerns/findable.rb'

class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  extend Findable
  include Paramable

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
