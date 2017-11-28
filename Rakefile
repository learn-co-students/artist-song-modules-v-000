require_relative './config/environment'

puts "Welcome to instance and class modules."

def reload!
  load './lib/concerns/findable.rb'
  load './lib/concerns/memorable.rb'
  load './lib/concerns/paramable.rb'

  load './lib/artist.rb'
  load './lib/song.rb'
end

desc "A console"
task :console do
  Pry.start
end
