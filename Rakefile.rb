#require 'rake/testtask'
#require 'rake/rdoctask'
require 'rdoc/task'

Rake::RDocTask.new do |rd|
  rd.main = "README"
  rd.rdoc_files.include("README","lib/*.rb")
  rd.options << "--all"
  rd.options << "--inline-source"
end

task :upload_docs => [:rdoc] do
 sh %(scp -r html/* e_stryker@seconds.rubyforge.org:/var/www/gforge-projects/seconds)
end

task :release => [:rdoc] do 
  sh %(gem build seconds.gemspec)
  # sh %(git push  gitosis@rubyforge.org:seconds.git master)
  sh %(git push origin master)
  
  # god I love ruby:
  newest_gem = Dir["seconds-*.gem"].sort {|a,b| File.mtime(b) <=> File.mtime(a)}.first
  sh "gem push #{newest_gem}"
end
