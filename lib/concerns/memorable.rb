module Memorable
  def reset_all
    @@songs.clear
  end

  def count
    self.all.count
  end

  def find_by_name(name)
    @@songs.detect{|a| a.name}
  end
end
