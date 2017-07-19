module Findable

  def find_by_name(name)#used as class method
    self.all.detect{|a| a.name == name}
  end

end
