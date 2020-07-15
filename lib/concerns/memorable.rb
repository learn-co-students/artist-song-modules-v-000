module Memorable

  module ClassMethods
    def reset_all
      all.clear
    end

    def count
      all.count
    end
  end

 module InstanceMethods
   def initialize
      self.class.all << self
   end
 end



end

class Artist
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
end

class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
end
