module Paramable
  module ClassMethods
    def to_param
      name.downcase.gsub(' ', '-')
    end
  end
end

class Artist
  include Paramable::ClassMethods
end

class Song
  include Paramable::ClassMethods
end
