require_relative './config/environment'
require 'rake'
require 'rspec/core/rake_task'
puts "Welcome to My Glorious Modules Lab"

def reload!
  load_all './lib'
  load_all '../spec'
  load './lib/artist.rb'
  load './lib/song.rb'
  load '../spec/artist_spec.rb'
  load '../spec/song_spec.rb'
  load '../spec/spec_helper.rb'

end

desc "A console"
task :console do
  Pry.start
end