
require 'digest'

module Argumenta

  class Argument

    attr_accessor :title, :premises, :conclusion

    # Initializes a new argument.
    #
    #     title = "My Argument ^_^"
    #     premises = [
    #         "The first premise!",
    #         "The second premise!"
    #     ]
    #     conclusion = "The conclusion."
    #     argument = Argument.new title, premises, conclusion
    #
    def initialize(title, premises, conclusion)
      @title = title
      @premises = premises.map { |p| Argumenta::Proposition.new p }
      @conclusion = Argumenta::Proposition.new conclusion
    end

    # Gets the argument's object record.
    #
    #     record = argument.record
    #
    def record
      head = "argument\n\n"
      body = "title #{@title}\n"
      @premises.each do |p|
        body += "premise #{p.sha1}\n"
      end
      body += "conclusion #{@conclusion.sha1}\n"
      record = head + body
    end

    # Gets the argument's SHA-1.
    #
    #     sha1 = argument.sha1
    #
    def sha1
      Digest::SHA1.hexdigest self.record
    end
  end
end
