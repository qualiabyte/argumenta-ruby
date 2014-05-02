require 'digest'

module Argumenta
  module Objects
    # A proposition models an assertion as a string of text. It has an
    # associated object record and SHA-1 hash. The object record is
    # similar to Git's blob. The SHA-1 identifies the proposition.
    class Proposition
      attr_accessor :text, :error

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

      # Validates an object as a proposition.
      #
      #   valid = Proposition.validate object
      #
      # @raise [ValidationError] On failure.
      def self.validate(object)
        unless object.is_a? self
          raise ValidationError "Object must be a proposition."
        end
        object.validate
      end

      # Validates the proposition.
      #
      #   begin
      #     proposition.validate
      #   rescue Argumenta::ValidationError => err
      #     puts "Validation failed: ", err.message
      #   end
      #
      # @raise [ValidationError] On validation failure.
      def validate
        unless @text.is_a? String
          raise ValidationError, "Proposition text must be a string."
        end
        unless @text.length > 0 and text.match /\S+/
          raise ValidationError, "Proposition text must not be empty."
        end
        unless @text.length <= 240
          raise ValidationError, "Proposition text must be 240 characters or less."
        end
      end

      # Checks whether proposition is valid.
      #
      #   valid = proposition.valid?
      #
      # @return [Boolean] The validation status.
      def valid?
        begin
          self.validate
          return true
        rescue ValidationError => err
          @error = err
          return false
        end
      end
    end
  end
end
