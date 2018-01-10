module Findable
    attr_reader :name

    def find_by_name(name)
        self.all.detect {|i| i.name == name}
    end
end