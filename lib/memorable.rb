module Memorable

  module ClassMethods
    
    def find_by_name(name)
      self.all.detect{|o| o.name}
    end

    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end
  end # ClassMethods

end #Memorable