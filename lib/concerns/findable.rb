module Findable
  def find_by_name(name)
    tem = self.all.detect do
      |e| e.name = name
    end
    tem
  end
end
