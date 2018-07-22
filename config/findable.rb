module Findable

  module FindByName
    def find_by_name(name)
      self.all.detect{|a| a.name == name}
    end
  end

end
