module Findable

  def find_by_name(name) #abstract method self.all
  self.all.detect{|a| a.name == name}
  end
end
