require 'pry'

class Song
   extend Memorable::ClassMethods
   include Memorable::InstanceMethods
   extend Findable
   include Paramable

   attr_accessor :name
   attr_reader :artist

   @@all = []

   attr_writer :artist

   def self.all
      @@all
   end
end
