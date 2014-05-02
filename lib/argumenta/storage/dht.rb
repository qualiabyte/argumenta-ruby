require 'dht/hash'

module Argumenta
  module Storage
    # A DHT data store for Argumenta objects.
    class DHT
      attr_accessor :hash

      def initialize(options = {})
        @hash = ::DHT::Hash.new options
      end

      def add_proposition(proposition)
        Argumenta::Proposition.validate proposition
        sha1 = proposition.sha1()
        @hash[sha1] = proposition.text
      end

      def get_proposition(sha1)
        text = @hash[sha1]
        unless text
          raise RetrievalError, "No proposition found for '#{sha1}'."
        end
        proposition = Argumenta::Proposition.new text
      end
    end
  end
end
