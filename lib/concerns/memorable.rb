module Memorable
  module ClassMethods

  def reset_all
    self.all.clear
  end

  def count
    @@artists.count
  end

  def reset_all
    @@songs.clear
  end

  def count
    self.all.count
  end
  end
end