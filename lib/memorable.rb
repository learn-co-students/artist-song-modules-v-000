module Memorable
    def reset_all
        all.clear
    end

    def count
        all.count
    end

    def find_by_name(_name)
        all.detect(&:name)
    end
end
