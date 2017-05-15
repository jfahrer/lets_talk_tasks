desc "Prepare the projetc for the talk"
task :clean do
  require 'fileutils'
  sh 'echo "" > Rakefile'
  Dir.glob("lib/tasks/*.*").each { |f| FileUtils.rm(f) unless f.match(/clean\.rake/)  }
end
