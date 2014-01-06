require 'digest'

module Argumenta
  # A proposition models an assertion as a string of text. It has an
  # associated object record and SHA-1 hash. The object record is
  # similar to Git's blob. The SHA-1 identifies the proposition.
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
