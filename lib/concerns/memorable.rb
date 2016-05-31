module Memorable

  def find_by_name(name)
    @@songs.detect{|a| a.name}
  end

  def reset_all
    @@songs.clear
  end

  def count
    self.all.count
  end

end