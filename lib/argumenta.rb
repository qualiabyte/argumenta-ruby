require 'argumenta/argument'
require 'argumenta/proposition'
require 'argumenta/storage/dht'
require 'argumenta/version'

module Argumenta
  # Raised on failure to retrieve stored objects
  class RetrievalError < Exception; end

  # Raised for invalid objects during validation
  class ValidationError < Exception; end

  class App
    def initialize
      puts "Argumenta " + Argumenta::VERSION
    end
  end
end
