# all #'s in modules need to be generic so their applicable to a variety of code
# child classes inheriting modules #'s 
module Findable

  def find_by_name(name)
    self.all.detect{|a| a.name == name}
  end

end