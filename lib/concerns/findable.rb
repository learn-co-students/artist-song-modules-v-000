module Findable

  def find_by_name(name)
    self.all.detect{|a| a.name}
  end

  def to_param
    self.name.downcase.gsub(' ', '-')
  end



end