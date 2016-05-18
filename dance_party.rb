#require_relative "kid.rb"
#require_relative "ballerina.rb"

module Dance
  def twirl
    "I'm twirling!"
  end
 
  def jump
    "Look how high I'm jumping!"
  end
 
  def pirouette
    "I'm doing a pirouette"
  end
 
  def take_a_bow
    "Thank you, thank you. It was a pleasure to dance for you all."
  end
end

class Ballerina
  extend Dance
 
  attr_accessor :name
 
  def initialize(name)
    @name = name
  end
end

class Kid
  extend Dance
 
  attr_accessor :name
 
  def initialize(name)
    @name = name
  end
end

 
puts Ballerina.twirl
puts Kid.jump

#angelina = Kid.new("Angelina")
#mikhail_barishnkov = Ballerina.new("Mikhail")
 
#puts "#{angelina.name} says: #{angelina.twirl}"
#puts "#{mikhail_barishnkov.name} says: #{mikhail_barishnkov.take_a_bow}"