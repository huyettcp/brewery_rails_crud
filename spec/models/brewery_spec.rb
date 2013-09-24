require 'spec_helper'

describe Brewery do
  before :each do
    @brewery = Brewery.new(name: "Coors", city: "Golden", state: "CO")
  end
  describe "#name" do
    it "should return the correct name" do
      @brewery.name.should eq("Coors")
    end
  end
  describe "#city" do
    it "should return the correct city" do
      @brewery.city.should eq("Golden")
    end
  end
  describe "#state" do
    it "should return the correct state" do
      @brewery.state.should eq("CO")
    end
  end
end