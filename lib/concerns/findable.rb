module Findable

  def find_by_name(name) #detects artist name within @@artists array
    self.all.detect{|a| a.name == name}
  end

end
