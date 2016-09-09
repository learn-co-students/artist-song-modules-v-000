require 'pry'
require 'bundler'
Bundler.require
require_all 'lib'

require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/paramable'

require_relative '../lib/artist.rb'
require_relative '../lib/song.rb'
require_relative '../spec/song_spec.rb'
require_relative '../spec/artist_spec.rb'

