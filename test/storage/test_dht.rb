require 'argumenta'
require 'test_helper'

describe Argumenta::Storage::DHT do
  options = {
    host: "127.0.0.1",
    port: 3033,
    name: "test"
  }
  store = Argumenta::Storage::DHT.new options

  before do
    @store = store
    @text = "My proposition!"
    @proposition = Argumenta::Proposition.new @text
  end

  describe "initialize" do
    it "should create a new dht storage instance" do
      @store.must_be_instance_of Argumenta::Storage::DHT
    end
  end

  describe "add_proposition" do
    it "should add a proposition to the store" do
      @store.add_proposition @proposition
      retrieved = @store.get_proposition @proposition.sha1
      retrieved.text.must_equal @proposition.text
    end
  end

  describe "get_proposition" do
    it "should get a proposition from the store by sha1" do
      @store.add_proposition @proposition
      sha1 = @proposition.sha1
      retrieved = @store.get_proposition sha1
      retrieved.text.must_equal @proposition.text
    end
  end
end
