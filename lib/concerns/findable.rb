module Findable
  def find_by_name(name)  #here doesn't requiere self
    self.all.detect{|a| a.name == name}
  end

end
