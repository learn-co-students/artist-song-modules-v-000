class Song
#=================modules==================
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods
#=================properties================
  attr_accessor :name
  attr_reader :artist
  @@songs = []
#==================class====================
  def self.all
    @@songs
  end
#=================instance==================
  def artist=(artist)
    @artist = artist
  end  
#==========================================
end
