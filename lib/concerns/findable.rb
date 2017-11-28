module Findable
    def find_by_name(name)
        self.all.detect {|x| name == x.name}
    end
end