module Findable
  def find_by_name(name)
    self.all.detect{|a| a.name == name}
  end

  #why create seperate modules for this and the - count - and - reset_all - methods?

end
