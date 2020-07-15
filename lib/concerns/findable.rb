module Findable
  def find_by_name(name)
    all.detect{|e| e.name == name}
  end
end
