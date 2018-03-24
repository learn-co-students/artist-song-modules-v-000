
module Memorable

######################################
# CLASS METHODS
######################################

  module ClassMethods

    def reset_all
      self.all.clear
    end


    def count
      self.all.count
    end

  end # Class Methods module

######################################
# INSTANCE METHODS
######################################

  module InstanceMethods

    def initialize
      self.class.all << self
    end

  end # Instance Methods module


end # Memorable module
