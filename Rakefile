
task :default => [:test]

task :test do |t|
  $LOAD_PATH.unshift 'lib', 'test'
  files = Dir.glob './test/**/test*.rb'
  files.each do |f|
    require f
  end
end
