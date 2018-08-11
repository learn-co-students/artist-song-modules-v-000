module Findable

  def find_by_name(name)
    self.all.detect {|target| target.name == name}
  end

end
