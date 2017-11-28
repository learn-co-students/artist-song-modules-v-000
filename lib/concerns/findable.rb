module Findable
  module ClassMethods
    @@all = []

    def find_by_name(name)
      self.all.detect {|a| a.name == name}
    end

  end

end
