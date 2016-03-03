module Memorable

  module ClassMethods
    
    def find_by_name(name)
      self.all.detect{|a| a.name}
    end

    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end
  end # ClassMethods

  module InstanceMethods
    
    def to_param
      name.downcase.gsub(' ', '-')
    end
  
  end # InstanceMethods

end #Memorable