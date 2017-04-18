#   ~~~HAVICK WAS HERE~~~


module Paramable

def to_param
    name.downcase.gsub(' ', '-')
  end

end