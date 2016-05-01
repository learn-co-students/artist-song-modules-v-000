require_relative './config/environment.rb'

puts "Welcome to Artists and Songs with Modules..."

def reload!
  load './lib/concerns/memorable.rb'
  load './lib/artist.rb'
  load './lib/song.rb'
end

desc "A Console"
task :console do
  Pry.start
end