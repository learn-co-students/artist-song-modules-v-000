module Paramable

  def to_param(name)
    self.name.downcase.gsub(' ', '-')
  end

end
