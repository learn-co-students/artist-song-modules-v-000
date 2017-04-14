module Memorable


  module InstanceMethods
  end

  module ClassMethods
    def count
      all.count
    end
    def reset_all
      all.clear
    end
  end

end
