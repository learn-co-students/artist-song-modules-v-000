
module Memorable
=begin
  def self.reset_all
    @@songs.clear
  end

  def self.count
    self.all.count
  end
=end

  def  reset_all
    self.all.clear
  end
  def count
     self.all.count
  end
end
