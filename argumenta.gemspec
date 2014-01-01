
require './lib/argumenta/version'

Gem::Specification.new do |s|
  s.name        = "argumenta"
  s.version     = Argumenta::VERSION
  s.summary     = "Social argument collaboration ~ A Ruby implementation of Argumenta's core library."
  s.description = ""
  s.authors     = ["Tyler Florez"]
  s.email       = ["qualiabyte@gmail.com"]
  s.files       = ["lib/argumenta.rb"]
  s.homepage    = "https://github.com/argumenta/argumenta"
  s.license     = 'MIT'

  s.add_development_dependency "rake"
  s.add_development_dependency "minitest", "~> 4.7.5"
end
