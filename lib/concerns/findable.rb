module Findable

  module ClassMethods

    def find_by_name(name)
      self.all.detect {|a| a.name == name}
    end

  end

end

class Artist
  extend Findable::ClassMethods
end

class Song
  extend Findable::ClassMethods
end
