module Memorable
  extend Artist, Song

  def self.find_by_name(name)
    @@songs.detect{|a| a.name}
  end

  def self.reset_all
    @@songs.clear
  end

  def self.count
    self.all.count
  end

end
