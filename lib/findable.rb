module Findable
  module ClassMethods
    def self.find_by_name(name)
      self.all.detect{|o| o.name == name}
    end
  end
end
