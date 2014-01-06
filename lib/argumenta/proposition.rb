require 'digest'

module Argumenta
  class Proposition
    attr_accessor :text

    # Initializes a new proposition.
    #
    #   text = "My proposition!"
    #   proposition = Proposition.new text
    #
    def initialize(text)
      @text = text
    end

    # Gets the proposition's object record.
    #
    #   record = proposition.record
    #
    def record
      "proposition " + @text
    end

    # Gets the proposition's SHA-1.
    #
    #   sha1 = proposition.sha1
    #
    def sha1
      Digest::SHA1.hexdigest self.record
    end
  end
end
