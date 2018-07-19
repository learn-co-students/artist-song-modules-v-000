module Memorable
  module ClassMethods

def reset_all
  self.all.clear
end

def count
  self.all.count
end

end #end of the ClassMethods module

module InstanceMethods
  def initialize
    self.class.all << self
  end

  end #end of the InstanceMethods module

end #end of the Memorable module
