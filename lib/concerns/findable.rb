module Findable
    def find_by_name(name)
        self.all.find {|e| e.name == name}
    end
end
