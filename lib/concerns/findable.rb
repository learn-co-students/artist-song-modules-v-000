module Findable
  module ClassMethods
    def find_by_name(name)
      self.find {|i| i.name == name}
    end
  end
end
