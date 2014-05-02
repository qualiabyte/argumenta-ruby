require 'argumenta/argument'
require 'argumenta/proposition'
require 'argumenta/version'

module Argumenta
  # Raised for invalid objects during validation
  class ValidationError < Exception
  end

  class App
    def initialize
      puts "Argumenta " + Argumenta::VERSION
    end
  end
end
