module Memorable
  def reset_all
    self.all.clear
  end

  def count
    self.all.count
  end


end
#I need to name classes, such as --all-- the same thing in the classes that module code applies to?
#How to determine which class methods / instance methods to contain in the same module?
