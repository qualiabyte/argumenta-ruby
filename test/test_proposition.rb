
require 'argumenta'
require 'test_helper'

describe Argumenta::Proposition do
  before do
    @text = "My proposition!"
    @proposition = Argumenta::Proposition.new @text
  end

  describe "initialize" do
    it "should create a new proposition instance" do
      @proposition.must_be_instance_of Argumenta::Proposition
      @proposition.text.must_equal "My proposition!"
    end
  end

  describe "record" do
    it "should get the proposition's object record" do
      record = @proposition.record
      record.must_equal "proposition My proposition!"
    end
  end

  describe "sha1" do
    it "should get the proposition's SHA-1" do
      sha1 = @proposition.sha1
      sha1.must_equal "fe1d2c8da97cd63ff28f9a1a3598fe29def216dd"
    end
  end
end
