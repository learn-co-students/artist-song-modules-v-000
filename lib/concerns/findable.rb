module Findable

module FindableClassModule
 def find_by_name(name)
    self.all.detect{|a| a.name == name}
  end

end



end
