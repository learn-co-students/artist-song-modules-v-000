module Findable

  def find_by_name(name)
    all.detect { |d| d.name == name }
  end
  
end
