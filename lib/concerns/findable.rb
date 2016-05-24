module Findable

  def find_by_name(name)
    self.all.detect {|any| any.name}
  end

end
