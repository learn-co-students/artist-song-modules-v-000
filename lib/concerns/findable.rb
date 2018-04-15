module Findable
  module ClassMethods
    def find_by_name(name)
      all.find {|e| e.name = name}
    end
  end
end
