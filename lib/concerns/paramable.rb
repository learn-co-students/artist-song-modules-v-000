require_relative '../lib/concerns/paramable'

module Paramable 
  def to_param
    name.downcase.gsub('', '-')
  end 
end