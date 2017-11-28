module Findable

  def find_by_name(name)
    find_array = self.all
    find_array.detect{|a|a.name == name}
  end



end
