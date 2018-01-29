module Paramable

 # include Paramable

  def to_param
    name.downcase.gsub(' ', '-')
  end

end
