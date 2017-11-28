module Memorable
  module ClassMethods

  def count
    self.all.count
  end

  def reset_all
    self.all.clear
  end
end  #close out ClassMethods

  module InstanceMethods

    def initialize
      self.class.all << self
    end

  end #close out InstanceMethods
end  #close out Memorable
