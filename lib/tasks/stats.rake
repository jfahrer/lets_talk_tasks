require 'code_stats'

namespace :stats do
  task :gems do
    count = CodeStats::Gems.new().count
    puts "You are using #{count} gems"
  end

  task :classes, [:dir] do |task, args|
    args.with_defaults(:dir => './')
    dir = args[:dir]
    count = CodeStats::Classes.new(dir).count
    puts "You are using #{count} classes"
  end
end

task :stats, [:dir] => ['stats:gems', 'stats:classes']

# task :stats, [:dir] do |_, args| #=> ['stats:gems', 'stats:classes'] do
#   Rake::Task['stats:gems'].invoke()
#   Rake::Task['stats:classes'].invoke(args[:dir])
# end
