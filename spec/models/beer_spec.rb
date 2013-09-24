require 'spec_helper'

describe Beer do
  before :each do
    @beer = Beer.new(a_b_v: "5%", beer_name: "Coors", style: "Lager")
  end

  describe "#a_b_v" do
    it "should return the correct a_b_v" do
      @beer.a_b_v.should eq("5%")
    end
  end
  describe "#beer_name" do
    it "should return the correct beer name" do
      @beer.beer_name.should eq("Coors")
    end
  end
  describe "#style" do
    it "should return the correct style" do
      @beer.style.should eq("Lager")
    end
  end
end
