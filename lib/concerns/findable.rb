module Findable

  module ClassMethods
    def find_by_name(name)
      self.all.detect {|f| f.name == name}
    end
  end

end
