module Memorable
  module ClassMethods
#DO NOT use self in module as it is not within the class itself.
  def reset_all
    self.all.clear
  end

  def count
    self.all.count
  end
end

  module InstanceMethods
    def initialize
      self.class.all << self
    end
  end

end
