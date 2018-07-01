module Findable
  module ClassMethods

    def find_by_name(name)
      all.detect{|item| item.name == name}
    end
  end
end
