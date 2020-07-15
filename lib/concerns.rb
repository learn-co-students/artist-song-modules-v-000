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
      def initialize  
      self.class.all << self    
    end
  end 
  
end


#module Findable 
#  def find_by_name(name)
#    Class.detect{|a| a.name == name}
#  end
#end 


module Paramble 
  
  def to_param
    name.downcase.gsub(' ', '-')
  end
  
end 


