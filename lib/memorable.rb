module Memorable
  def reset_all
    all.clear
  end
  def find_by_name(name)
    all.detect{|a| a.name}
  end
   def count
    all.count
  end
end
