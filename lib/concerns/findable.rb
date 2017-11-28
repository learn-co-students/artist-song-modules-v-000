module Findable
  def find_by_name(name)
    self.all.detect do |o|
      o.name == name
    end
  end
  

end
