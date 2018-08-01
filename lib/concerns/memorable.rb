module Memorable
  module ClassMethods
#when you do use self on all these per the commented out code in artist and song, it fails...why?
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
