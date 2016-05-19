module Paramable

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end

  def to_param
    self.name.downcase.gsub(' ', '-')
  end

end
