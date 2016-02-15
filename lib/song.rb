require 'pry'
require_relative './memorable.rb'
require_relative './paramble.rb'

class Song
    extend Memorable
    include Paramble
    attr_accessor :name
    attr_reader :artist

    @@songs = []

    def initialize
        @@songs << self
    end

    attr_writer :artist

    def self.all
        @@songs
    end
end
