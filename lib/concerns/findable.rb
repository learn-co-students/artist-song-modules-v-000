module Findable
    module InstanceMethods

        def find_by_name(name)
            all.detect{|a| a.name == name}
        end

    end

    module ClassMethods
    
        
    end
end
     
