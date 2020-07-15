
module Findable
  def find_by_name(name)
    all.detect {|c| c.name == name}
  end
end
