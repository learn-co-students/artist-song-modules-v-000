module Findable

  module ClassMethods
    def find_by_name
      self.all.detect {|item| item.name == name}
    end
  end
end
