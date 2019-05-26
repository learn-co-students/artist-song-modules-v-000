class Song
  extend   Memorable::ClassMethods
  include  Memorable::InstanceMethods
  extend   Findable
  include  Paramable

  @@all = []

  attr_accessor :name, :artist

  def self.all
    @@all
  end
end
