module Findable
  def find_by_name(name)
    matching = nil
    ObjectSpace.each_object(self) do |instance|
      if instance.name == name
        matching = instance
      end
    end
    matching
    # ASK WHY THIS DOESN"T WORK
    # ObjectSpace.each_object(self).detect do |instance|
    #   instance.name == name
    # end
  end
end

# def self.find_by_name(name)
#   self.all.detect{|a| a.name == name}
# end
