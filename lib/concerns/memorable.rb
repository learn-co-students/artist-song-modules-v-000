module Memorable
    module ClassMethods

        def reset_all
             self.all.clear
        end

        def count
           self.all.count
        end
    end

    module InstanceMethods

        def initialize  #this is added to the module to perform intialization functions for both song and artists classes
          self.class.all << self
        end
    end
end
