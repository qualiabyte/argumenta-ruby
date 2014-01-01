
require 'argumenta'
require 'test_helper'

describe Argumenta::Argument do
  before do
    @title = "My Argument ^_^"
    @premises = [
      "The first premise!",
      "The second premise!"
    ]
    @conclusion = "The conclusion."
    @argument = Argumenta::Argument.new @title, @premises, @conclusion
  end

  describe "initialize" do
    it "should create a new argument instance" do
      @argument.must_be_instance_of Argumenta::Argument
      @argument.title.must_equal "My Argument ^_^"
      @argument.premises.length.must_equal 2
      @argument.premises[0].text.must_equal "The first premise!"
      @argument.premises[1].text.must_equal "The second premise!"
      @argument.conclusion.text.must_equal "The conclusion."
    end
  end

  describe "record" do
    it "should get the argument's object record" do
      record = @argument.record
      record.must_equal "argument

title My Argument ^_^
premise 37ca8beaaac1d1b8412c9fb1fd73e524c9862ebe
premise 29da59119a5c3cec4f7b339433e8931ea99771cf
conclusion 3940b2a6a3d5778297f0e37a06109f9d3dcffe6d
"
    end
  end

  describe "sha1" do
    it "should get the argument's SHA-1" do
      sha1 = @argument.sha1
      sha1.must_equal "50250211801dabf9cbf0e574af270ba2c3fe83cb"
    end
  end
end
