module Findable

  def find_by_name(name)
    all.find{|o| o.name}
  end

end
