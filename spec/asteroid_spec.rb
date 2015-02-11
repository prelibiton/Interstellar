require  'spec_helper'

describe Asteroid do 

  before :each do
    @asteroid = Asteroid.new
  end

  describe "#new" do
    it "returns object of Asteroid" do
      expect(@asteroid).to be_a Asteroid
    end

    it "makes sure that y equals zero" do
      expect(@asteroid.y).to eql 0
    end

    it "makes sure that x is an Integer" do
      expect(@asteroid.x).to be_a Integer
    end

    it "returns correct radius" do
      expect(@asteroid.radius).to eql 30
    end

    it "returns correct size" do
      expect(@asteroid.size).to eql 1
    end
  end
  
  
end
