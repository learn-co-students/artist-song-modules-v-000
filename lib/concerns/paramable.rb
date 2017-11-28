module Paramable

  def to_param #converts its name to url friendly parameter
    @name.downcase.gsub(' ', '-')
  end

end
