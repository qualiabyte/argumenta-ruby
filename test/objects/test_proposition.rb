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

  describe "valid?" do
    it "should return true when valid" do
      @proposition.valid?.must_equal true
    end

    it "should return false when not a string" do
      proposition = Argumenta::Proposition.new 1
      proposition.valid?.must_equal false
    end

    it "should return false when empty" do
      proposition = Argumenta::Proposition.new ""
      proposition.valid?.must_equal false
    end

    it "should return false when over max length" do
      text = "a" * 241
      proposition = Argumenta::Proposition.new text
      proposition.valid?.must_equal false
    end
  end
end
