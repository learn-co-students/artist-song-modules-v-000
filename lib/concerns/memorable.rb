
module Memorable  #has an instance and class methods nested
  module ClassMethods
      def reset_all
        self.all.clear
      end
      def count
        self.all.count
      end
 end
  module InstanceMethods
      def initialize
        self.class.all << self     #class retives the main object
      end
  end
end
