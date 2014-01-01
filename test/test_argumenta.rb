
require 'argumenta'
require 'test_helper'

describe Argumenta do
  it "should have a version string" do
    Argumenta::VERSION.must_match /^\d+.\d+.\d+$/
  end
end

describe Argumenta::App do
  before do
    @app = Argumenta::App.new
  end

  describe "initialize" do
    it "should create a new argumenta instance" do
      @app.must_be_instance_of Argumenta::App
    end
  end
end
