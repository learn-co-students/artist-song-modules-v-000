module Findable

  def find_by_name(name)
    self.all.detect do |x| x.name end
  end

end
