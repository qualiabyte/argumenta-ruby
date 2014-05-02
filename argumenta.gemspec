require './lib/argumenta/version'

Gem::Specification.new do |s|
  s.name        = "argumenta"
  s.version     = Argumenta::VERSION
  s.summary     = "Social argument collaboration ~ A Ruby implementation of Argumenta's core library."
  s.description = ""
  s.authors     = ["Tyler Florez"]
  s.email       = ["qualiabyte@gmail.com"]
  s.homepage    = "https://github.com/argumenta/argumenta"
  s.license     = 'MIT'

  s.files       = `git ls-files`.split($/)
  s.executables = `git ls-files -- bin/*`.split($/).map { |f| File.basename(f) }
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split($/)

  s.add_runtime_dependency "celluloid", "= 0.14.1"
  s.add_runtime_dependency "celluloid-zmq", "= 0.14.0"
  s.add_runtime_dependency "dcell", "= 0.14.0"
  s.add_runtime_dependency "http", "= 0.4.0"
  s.add_development_dependency "bundler", "~> 1.5"
  s.add_development_dependency "minitest", "~> 4.7.5"
  s.add_development_dependency "rake"
end
