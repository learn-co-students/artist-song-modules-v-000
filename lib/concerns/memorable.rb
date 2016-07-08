module Memorable
  module ClassMethods
      def reset_all
        self.all.clear
      end

      def count
        all.count
      end

      def find_by_name(name)
        all.detect {|a| a.name}
      end

  end

  module InstanceMethods
    def initialize
      self.class.all << self
    end
    
  end

end
