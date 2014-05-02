require 'argumenta/objects'
require 'argumenta/storage/dht'
require 'argumenta/version'

module Argumenta
  include Argumenta::Objects

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
